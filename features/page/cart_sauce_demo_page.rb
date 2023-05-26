class CartSauceDemo < SitePrism::Page

  element :cart_quantity, '.cart_quantity'
  element :btn_checkout, '#checkout'
  element :value_inventory_item_price, '.inventory_item_price'

  def validate_product_cart
    quantity = cart_quantity.text
    raise ArgumentError, "Empty Cart" if quantity.to_i < 1
    product_price = value_inventory_item_price.text.gsub('$', '')
    $product_price = product_price.to_f
  end

  def go_to_checkout
    btn_checkout.click
  end

end
