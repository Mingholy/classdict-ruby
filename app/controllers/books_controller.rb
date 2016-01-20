class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @book.clicks = @book.clicks + 1
    @book.save!
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  def bookdetail
    @book = Book.find(params[:id])
    #Add clicks
    @book.clicks = @book.clicks + 1
    @book.save!
    #For view rendering
    @course_related = @book.courses.order('clicks desc').limit(5)
    @reviews = @book.book_reviews.order('pro desc').limit(10)
    @articles = @book.book_notes.where('content_type = ?',0).order('pro desc').limit(10)
    @questions = @book.book_notes.where('content_type = ?',1).order('pro desc').limit(10)
  end

  def write_review
    #Check for login
    user_id = session[:user_id]
    book_id = params[:book_id]
    type = params[:post_type].to_s.strip
    if user_id.nil?
      redirect_to root_path
      return
    end
    if book_id.nil?
      redirect_to bookdetail_path(id: book_id)
      return
    end
    book = Book.find(book_id.to_i)
    if book.nil?
      redirect_to bookdetail_path(id: book_id)
      return
    end
    new_review =  book.book_reviews.new
    new_review.user_id = user_id
    new_review.content = params[:content]
    if new_review.save!
      redirect_to bookdetail_path(id: book_id)
      return
    else
      redirect_to bookdetail_path(id: book_id)
      return
    end
  end

  def write_note
    #Check for login
    user_id = session[:user_id]
    book_id = params[:book_id]
    if user_id.nil?
      redirect_to root_path
      return
    end
    if book_id.nil? or params[:title].nil? or params[:content].nil?
      return
    end
    if Book.find(book_id.to_i).nil?
      return
    end
    book = Book.find(book_id)
    new_note =  book.book_notes.new
    new_note.title = params[:title].strip
    new_note.user_id = user_id
    new_note.content = params[:content].strip
    new_note.content_type = 0
    if new_note.save!
      redirect_to bookdetail_path(id: book_id)
    else
      redirect_to bookdetail_path(id: book_id)
    end
  end

  def write_question
    #Check for login
    user_id = session[:user_id]
    book_id = params[:book_id]
    if user_id.nil?
      redirect_to root_path
      return
    end
    if book_id.nil? or params[:title].nil? or params[:content].nil? or params[:page].nil?
      redirect_to bookdetail_path(id: book_id)
      return
    end
    if Book.find(book_id.to_i).nil?
      #session[:error] = 'if Book.find(book_id.to_i).nil?'
      return
    end
    book = Book.find(book_id.to_i)
    new_note =  book.book_notes.new
    new_note.title = params[:title].strip
    new_note.user_id = user_id.to_i
    new_note.content = params[:content].strip
    new_note.page = params[:page].to_i
    new_note.content_type = 1
    if new_note.save!
      #session[:error] = 'saved!'
      redirect_to bookdetail_path(id: book_id)
    else
      #session[:error] = 'un saved'
      redirect_to bookdetail_path(id: book_id)
    end
  end

  def topicdetail
    #topics include notes & questions
    book_id = params[:book_id]
    note_id = params[:note_id]
    page = params[:page]
    session[:book_id] = book_id
    session[:page] = page
    session[:note_id] = note_id
    @book = Book.find(book_id)
    @topic = BookNote.find(note_id)
    @topic_owner = User.find(@topic.user_id)
    @reply_relation = TopicRelation.where('topic_id = ?',note_id).order('created_at asc')

  end

  def post_reply_for_article
    if session[:user_id].nil?
      redirect_to show_path sth:'session[:user_id].nil?'
      return
    end
    if session[:book_id].nil?
      redirect_to show_path sth:'session[:book_id].nil?'
      return
    end
    if session[:note_id].nil?
      redirect_to show_path sth:'session[:note_id].nil?'
      return
    end
    #floor = params[:floor].to_i
    #Store the content
    reply_topic_id = params[:reply_topic_id].to_i
    if reply_topic_id.nil? or reply_topic_id == 0
      reply_topic_id = session[:note_id].to_i
    end
    book = Book.find(session[:book_id].to_i)
    new_note =  book.book_notes.new
    new_note.title = params[:title].strip
    new_note.user_id = session[:user_id].to_i
    new_note.content = params[:content].strip
    new_note.page = session[:page].to_i
    new_note.content_type = 3
    new_note.save!

    #Store the relationship
    topic_relation = TopicRelation.new
    topic_relation.topic_id = session[:note_id]
    topic_relation.reply_id = new_note.id
    topic_relation.save!

    #Update user state
    user = User.find(session[:user_id])
    user.score += 10
    user.save!

    #Create message for the user who was commented by current user
    if BookNote.find(session[:note_id].to_i).content_type == 0
      title = '你有新的心得回复'
    else (BookNote.find(session[:note_id].to_i).content_type == 1) ? title = '你有新的提问回复' : title = '你有新的回复'
    end
    title = '['+ topic_relation.updated_at.to_s + ']'+ title
    commented_user = User.find(BookNote.find(reply_topic_id.to_i).user_id)
    uinfo_content = User.find(session[:user_id]).nickname+'和你有了新的互动,查看地址： ' + book_topic_url(book_id: session[:book_id].to_i,note_id: session[:note_id].to_i)
    uinfo = Userinfo.new(title: title, user_id: commented_user.id,publisher: commented_user.nickname,content: uinfo_content,publisher_id: session[:user_id].to_i)
    uinfo.save!
    redirect_to book_topic_path(book_id: session[:book_id].to_i, note_id: session[:note_id].to_i)
  end

  def create_newbook
    if session[:user_id].nil?
      redirect_to root_path
      return
    end
    data = book_params
    if data[:title].nil?
      redirect_to newbook_path, notice: "书名不完整"
      return
    end
    if data[:time].nil?
      redirect_to newbook_path, notice: "出版日期不完整"
      return
    end
    if data[:description].nil?
      redirect_to newbook_path, notice: "内容简介不完整"
      return
    end
    if data[:difficulty].nil?
      redirect_to newbook_path, notice: "书籍难度不完整"
      return
    end
    @book = Book.new
    courses_title_list = data[:courses].split(/,/)
    for course_title in courses_title_list do
      course = Course.find_by(title: course_title)
      @book.courses << course
    end


    @book.title = data[:title].to_s
    @book.author = data[:author].to_s
    @book.publish_time = data[:time].to_s
    @book.description = data[:description].strip
    @book.clicks = 0
    @book.difficulty = data[:difficulty].to_i
    unless data[:picture_id].nil?
    	@book.picture_id = data[:picture_id].scan(/\d+/)[0]
    end
    respond_to do |format|
      if @book.save!
        @contribution = Contribution.create!(content_type: 1, content_id: @book.id, user_id: session[:user_id].to_i)
        user = User.find(session[:user_id].to_i)
        user.score += 10
        user.save!
        format.html { redirect_to bookdetail_path(@book), notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:picture_id, :title, :author, :publish_time,:time, :version, :filepath, :pro, :con, :difficulty, :description, :courses)
    end
end
