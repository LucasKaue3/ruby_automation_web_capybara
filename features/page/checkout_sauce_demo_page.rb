class CheckoutSauceDemo < SitePrism::Page

  element :input_firt_name, '#first-name'
  element :input_last_name, '#last-name'
  element :input_postal_code, '#postal-code'
  element :btn_continue, '#continue'
  element :value_inventory_item_price, '.inventory_item_price'
  element :value_summary_tax_label, '.summary_tax_label'
  element :value_summary_info_label_summary_total_label, '.summary_info_label.summary_total_label'
  element :btn_finish, '#finish'

  def fill_your_information
    firt_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    potal_code = Faker::Code.npi
    input_firt_name.set(firt_name)
    input_last_name.set(last_name)
    input_postal_code.set(potal_code)
    btn_continue.click
  end

  def check_value_checkout
    product_price_checkout = value_inventory_item_price.text.gsub('$', '')
    $product_price_checkout = product_price_checkout.to_f
    raise ArgumentError, "Product value at checkout different from product value in cart" if $product_price != $product_price_checkout
  end

  def check_total_value
    binding.pry
    value_summary_tax_label_price = value_summary_tax_label.text.gsub(/[^\d\.]/, '').to_f
    sum_total_value = value_summary_tax_label_price + $product_price_checkout

    real_total_value = value_summary_info_label_summary_total_label.text.gsub(/[^\d\.]/, '').to_f

    raise ArgumentError, "The sum of the product value with the tax is different from the total value shown on the screen" if sum_total_value != real_total_value

    btn_finish.click
  end

  def confirm_purchase_successful
    if page.has_content?('Thank you for your order!')
      puts 'Confirmation message found: Thank you for your order!'
    else
      puts 'Error: Confirmation message not found!'
      raise ArgumentError, 'Confirmation message not found!'
    end
  end

end
