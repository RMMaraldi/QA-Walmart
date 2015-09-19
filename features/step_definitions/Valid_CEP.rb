Given(/^I Access the Correio's API send as parameter a valid CEP$/) do
    visit 'http://cep.correiocontrol.com.br/01221020.json'
end

When(/^I receive in response the fields: "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3, arg4, arg5|
	expect(page).to have_content(arg1)
	expect(page).to have_content(arg2)
	expect(page).to have_content(arg3)
	expect(page).to have_content(arg4)
	expect(page).to have_content(arg5)
end

Then (/^I should see the message: Valid CEP$/) do
	print 'Valid CEP'
end
