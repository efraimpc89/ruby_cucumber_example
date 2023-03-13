Feature: Pokemon Search

Scenario: Search for specific pokemon
Given I set the pokemon search
When I search for "squirtle"
Then I validate "squirtle" is included in response name