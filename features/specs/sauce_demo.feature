Feature: Valid Purchase - Sauce Demo

Scenario: Make a valid Purchase
  Given that navigating to the Sauce Demo site
  And that you login with the user "standard_user"
  And add a product to the cart
  And navigate to the shopping cart
  And check that the product has been successfully added
  And navigate to checkout
  And fill in your details and continue
  And validate the value of the product on the Checkout screen, Overview
  And validate that the total amount corresponds to the description on the page and complete the purchase
  Then complete the purchase and confirm that the purchase was successful
