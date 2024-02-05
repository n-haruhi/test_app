class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # protectedは呼び出された他のコントローラからも参照することができる
  protected

  # ユーザー登録(sign_up)の際に、ユーザー名(name)のデータ操作を許可する
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
