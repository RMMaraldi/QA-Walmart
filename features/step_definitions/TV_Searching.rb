Given(/^I access Walmart website$/) do
  visit 'http://walmart.com.br'
end

When(/^I perform a search for "([^"]*)"$/) do |item|
  fill_in 'suggestion-search', :with => item
  click_button 'Procurar'
end

And(/^I confirm that page brings TV as result$/) do
  expect(page).to have_content(' TV ')
end

And(/^I click on a desired TV$/) do
  first('img.loading').click
end

And(/^I include the TV in the cart using cart button$/) do
  click_button 'Adicionar ao carrinho' 
end

And(/^I continue the process without select insurance$/) do
  click_button 'Continuar'
end

Then(/^I confirm the TV is included in the cart$/) do
  all('span.number').count.should == 1
end
