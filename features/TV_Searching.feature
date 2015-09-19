Feature: Search for TV in Walmart website

	Scenario: Insert a TV in the cart

		Given I access Walmart website
			When I perform a search for "tv"
			And I confirm that page brings TV as result
			And I click on a desired TV
			And I include the TV in the cart using cart button
  			And I continue the process without select insurance
	  		Then I confirm the TV is included in the cart
