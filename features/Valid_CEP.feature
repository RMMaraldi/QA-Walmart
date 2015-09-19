Feature: Verify a valid CEP through Correio's API

	Scenario: Enter a valid CEP and check the response

	    	Given I Access the Correio's API send as parameter a valid CEP
    		When I receive in response the fields: "bairro", "logradouro", "cep", "uf" and "localidade"
	    	Then I should see the message: Valid CEP
