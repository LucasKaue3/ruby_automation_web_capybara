class LoginSauceDemo < SitePrism::Page

  element :username, '#user-name'
  element :password, '#password'
  element :btn_login, '#login-button'

  def login(user)
    username.set(user)
    password.set("secret_sauce")
    btn_login.click
  end

end
