Feature: Verify an invalid CEP through Correio's API

	Scenario: Enter an invalid CEP and check the response
		
		Given I access the Correio's API sending as parameter an invalid CEP
  		When I don't receive in response the fields: bairro, logradouro, cep, uf and localidade
  		Then I should see the message: Invalid CEP
