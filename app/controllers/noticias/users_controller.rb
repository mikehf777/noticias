class Noticias::UsersController < Noticias::ResourceController
  before_filter :authenticate_user!

  def index
     authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def new
     @user = User.new
    respond_to do |format|
       format.html
    end
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      respond_to do |format|
        format.html { redirect_to noticias_users_path }
      end
    else
      respond_to do |format|
        format.html { render :action => :new, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to noticias_users_path, :notice => "User updated."
    else
      redirect_to noticias_users_path, :alert => "Unable to update user."
    end
  end
    
  def destroy
    authorize! :destroy, @user, :message => 'Not authorized as an administrator.'
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to noticias_users_path, :notice => "User deleted."
    else
      redirect_to noticias_users_path, :notice => "Can't delete yourself."
    end
  end
end