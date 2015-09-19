Given(/^I access the Correio's API sending as parameter an invalid CEP$/) do
	visit 'http://cep.correiocontrol.com.br/00000000.json'
end

When (/^I don't receive in response the fields: bairro, logradouro, cep, uf and localidade$/) do
	expect(page).to have_content 'erro'
end

When (/^I should see the message: Invalid CEP$/) do
	print 'Invalid CEP'
end
