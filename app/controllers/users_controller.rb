class UsersController < Devise::SessionsController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.page(params[:page])
    @gadgets = Gadget.all
  end

  def show
    @user = User.find(params[:id])
    @gadgets = @user.gadgets
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  
  def profile
    @user = current_user
    @gadgets = @user.gadgets
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  
  def create
    super
  end
  
  def update
   #edit here
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
  
end
