class HomeSauceDemo < SitePrism::Page

  element :product, '#add-to-cart-sauce-labs-backpack'
  element :cart, '.shopping_cart_link'

  def add_product_cart
    product.click
  end

  def go_to_cart
    cart.click
  end

end
