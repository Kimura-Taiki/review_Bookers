class ApplicationController < ActionController::Base
  # devise利用の機能（ユーザ登録、ログイン認証など）が使われる場合、その前にconfigure_permitted_parametersが実行されます。
  before_action :configure_permitted_parameters, if: :devise_controller?

  # privateは自コントローラーのみでしか呼び出せません
  # 一方、protectedは他コントローラーからも呼び出せます
  protected

  # 機能としては他コントローラーの*****_params(ストロングパラメーター)と同様の機能です。
  def configure_permitted_parameters
    # configure_permitted_parametersでは、devise_parameter_sanitizer.permitでnameのデータ操作を許可するアクションメソッドが指定されています。
    # 今回の場合だと、:sign_up時に:nameデータの書き換えが許されます
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # config.authentication_keysのログイン鍵を:nameへ変えたので
    # ストロングパラメーターとして許可する属性を:emailへ変えます。
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])

  end
end
