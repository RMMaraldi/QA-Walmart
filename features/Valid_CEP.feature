Feature: Verify a valid CEP through Correio's API

	Scenario: Enter a valid CEP and check the response

	    	Given I access the Correio's API sending as parameter a valid CEP
    		When I receive in response the fields: "bairro", "logradouro", "cep", "uf" and "localidade"
	    	Then I should see the message: Valid CEP
