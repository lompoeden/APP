class SessionsController < ApplicationController
  def new
  end
end
class SessionsController < ApplicationController
~(省略)~
  def create
    user = User.find_by(email: params[:session][:email].downcase)
  end
~(省略)~
end
def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ログイン成功した場合
    else
      # ログイン失敗した場合
    end
  end
  def create
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        # ログイン成功した場合
      else
        flash.now[:danger] = 'ログインに失敗しました'
        render :new
      end
    end
    def destroy
      session.delete(:user_id)
      flash[:notice] = 'ログアウトしました'
      redirect_to new_session_path
    end
  
