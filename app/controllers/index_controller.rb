class IndexController < ApplicationController
  def main
    @lastest_books = Book.all.order('created_at desc')
    @pop_books = Book.all.order('clicks desc')
    @pop_courses = Course.all.order('clicks desc')
    @lastest_comments = BookReview.last(3)
    @display = false
    if session[:user_id].nil?
        return
    end
    redirect_to index_login_path
  end

  def index_login
    if session[:user_id].nil?
      redirect_to root_path
      return
    end
    @lastest_books = Book.all.order('created_at desc')
    @pop_books = Book.all.order('clicks desc')
    @pop_courses = Course.all.order('clicks desc')
    @user = User.find(session[:user_id])
    @lastest_comments = BookReview.last(3)
    @display = false

  end

  def usercenter
    if session[:user_id].nil?
      redirect_to root_path
      return
    end
    @user = User.find(session[:user_id].to_i)
    @user_course_relations = Usercourse.where('user_id = ?',session[:user_id]).order('updated_at desc')
    @user_book_relations = Userbook.where('user_id = ?',session[:user_id]).order('updated_at desc')

    @course_contributions = Contribution.where('content_type = 0 and user_id = ?',session[:user_id]).order('updated_at desc').limit(5)
    @book_contributions = Contribution.where('content_type = 1 and user_id = ?',session[:user_id]).order('updated_at desc').limit(5)

  end

  def search
    @keywords = params[:keywords]
    redirect_to action: "show", sth:@keywords
  end

  def searchforbooksresults
    #store in session
    session[:keywords] = params[:keywords]
    @keywords = params[:keywords]
    @page = params[:page].to_i
    if @keywords == '*' or @keywords.nil?
      @keywords = ''
    end
    pattern = 'title like ?','%'+@keywords+'%'
    @page_count = (Book.where(pattern).length / 5.0).ceil
    @books = Book.where(pattern).offset((@page - 1) * 5).limit(5)

  end

  def searchforcoursesresults
    @keywords = params[:keywords]
    @page = params[:page].to_i
    if @keywords == '*' or @keywords.nil?
      @keywords = ''
    end
    @pattern = 'title like ?','%'+@keywords+'%'
    @page_count = (Course.where(@pattern).length / 5.0).ceil

    @courses = Course.where(@pattern).offset((@page - 1) * 5).limit(5)
  end

  def bookcollection
    if session[:user_id].nil?
      flash[:notice] = "请先登录!"
      redirect_to root_path
      return
    end
    #store in session
    session[:keywords] = params[:keywords]
    @page = params[:page].to_i
    @keywords = params[:keywords]
    @page_count = (User.find(session[:user_id].to_i).books.length / 5.0).ceil
    @no_record = false
    if @keywords == '*' or @keywords.nil?
      @keywords = ''
    end
    if @page_count == 0
      @no_record = true
      return
    end
    if @page==0
      @page = @page+1
    end
    @user_book_relations = Userbook.where(user_id: session[:user_id].to_i).order('created_at desc').offset((@page - 1) * 5).limit(5)
  end

  def coursecollection
    if session[:user_id].nil?
      flash[:notice] = "请先登录!"
      redirect_to root_path
      return
    end
    @keywords = params[:keywords]
    @page = params[:page].to_i
    @page_count = (User.find(session[:user_id].to_i).courses.length / 5.0).ceil
    @no_record = false
    if @keywords == '*' or @keywords.nil?
      @keywords = ''
    end
    if @page_count == 0
      @no_record = true
      return
    end
    @user_course_relations = Usercourse.where(user_id: session[:user_id].to_i).order('created_at desc').offset((@page - 1) * 5).limit(5)
  end

  def login
    @inputEmail = params[:inputEmail]
    @inputPassword = params[:inputPassword]
    redirect_to index_usercenter_path
  end

  def show
    @output = params[:sth]
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def keywords_params
    params.require(:user).permit(:keywords)
  end
end
