Given('check that the product has been successfully added') do
  cartSauceDemo.validate_product_cart
end

Given('navigate to checkout') do
  cartSauceDemo.go_to_checkout
end
