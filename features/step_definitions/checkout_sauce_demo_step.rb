Given('fill in your details and continue') do
  checkoutSauceDemo.fill_your_information
end

Given('validate the value of the product on the Checkout screen, Overview') do
  checkoutSauceDemo.check_value_checkout
end

Given('validate that the total amount corresponds to the description on the page and complete the purchase') do
  checkoutSauceDemo.check_total_value
end

Then('complete the purchase and confirm that the purchase was successful') do
  checkoutSauceDemo.confirm_purchase_successful
end
