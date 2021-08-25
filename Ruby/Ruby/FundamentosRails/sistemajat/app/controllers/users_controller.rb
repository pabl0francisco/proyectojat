class UsersController < ApplicationController
  layout "registro"
  before_action :require_login, only: [:show]
  def index
  end
  def create
    @user = User.new(parametros_user)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "User creado exitosamente "
      if @user.rol_id == 1
        redirect_to new_solicitud_path  
      else
        redirect_to new_driver_path
      end
      #redirect_to users_path
    else
      flash[:errors] = [@user.errors.full_messages]
      redirect_to '/' #retorno al welcome#index con errores
    end
  end
  def show
    @user = User.find_by(id: session[:user_id])
    if @user.rol_id == 1
      redirect_to new_solicitud_path  
    else
      #redirect_to new_driver_path - recordar solocar pantalla del perfil driver con las solicitudes a buscar
    end
  end
  def require_login
    if session[:user_id] == nil
      redirect_to '/'
    end
  end
  def parametros_user
    params.require(:user).permit(:nombre, :apellido, :email, :password, :rol_id)
  end
end
