class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Deviseが用意しているメソッド。サインイン後にどこに遷移するかを設定
  def after_sign_in_path_for(resource)
    about_path
  end

  def after_sign_out_path_for(resource)
    about_path
  end

  # protectedは呼び出された他のコントローラからも参照することができる
  protected

  # ユーザー登録(sign_up)の際に、ユーザー名(name)のデータ操作を許可する
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
