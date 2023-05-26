# Padrão de projeto para evitar de instâncias as classes em steps
Dir[File.join(File.dirname(__FILE__),
              '../page/*.rb')].sort.each { |file| require file }

module PagesObjects

  def loginSauceDemo
    LoginSauceDemo.new
  end

  def homeSauceDemo
    HomeSauceDemo.new
  end

  def checkoutSauceDemo
    CheckoutSauceDemo.new
  end

  def cartSauceDemo
    CartSauceDemo.new
  end

end
