class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end


  def login
    #@login_info = user_params
    @user = User.find_by(email:params[:email])
    if @user.nil?
      session.delete :user_id
      flash[:notice] = "用户名错误"
      redirect_to root_path
      return
    end
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to index_usercenter_path
      return
    end
    session.delete :user_id
    flash[:notice] = "密码错误"
    redirect_to root_path
  end

  def logout
    session.delete :user_id
    flash[:notice] = "已经注销"
    redirect_to root_path
  end

  def like_or_dislike_book
    @book = Book.find(params[:book_id])
    @user = User.find(session[:user_id])
    if @user.nil?
      redirect_to root_path
    end
    if Userbook.where('user_id = ? and book_id = ?',session[:user_id],params[:book_id]).count <= 0
      #I do not have this book.
      @user.books << @book
    else
      #I want to forget this.
      relation = Userbook.where('user_id = ? and book_id = ?',session[:user_id],params[:book_id])[0]
      relation.delete
    end
    redirect_to :back
  end
  def like_or_dislike_course
    @course = Course.find(params[:course_id])
    @user = User.find(session[:user_id])
    if @user.nil? or  @course.nil?
      redirect_to root_path
    end
    if Usercourse.where('user_id = ? and course_id = ?',session[:user_id],params[:course_id]).count <= 0
      #I do not have this book.
      @user.courses <<  @course
    else
      #I want to forget this.
      relation = Usercourse.where('user_id = ? and course_id = ?',session[:user_id],params[:course_id])[0]
      relation.delete
    end
    redirect_to :back
  end
  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to index_usercenter_path
        flash[:notice] = "欢迎登录!"
      else
        usercheck = User.find_by(email:@user.email)
        if usercheck.nil?
          flash[:notice] = "密码填写错误!"
          redirect_to root_path
        else
          flash[:notice] = "Email已经被占用"
          redirect_to root_path
        end
      end
  end

  # PATCH/PUT /users/1  
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :nickname, :level, :score)
    end
end
