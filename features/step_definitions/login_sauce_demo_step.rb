Given('that navigating to the Sauce Demo site') do
  visit 'https://www.saucedemo.com/'
end

Given('that you login with the user {string}') do |user|
  loginSauceDemo.login(user)
end
