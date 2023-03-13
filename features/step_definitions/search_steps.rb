require_relative '../support/service/ServiceHandler'
require 'rspec'

handler = ServiceHandler.new

Given('I set the pokemon search') do
  @endpoint = 'pokemon/'
end

When('I search for {string}') do |pokemon|
  
  @response = handler.get_request("#{@endpoint}#{pokemon}")
end

Then('I validate {string} is included in response name') do |pokemon|
  expect(@response["name"] ).to eq(pokemon), "#{pokemon} is not contained in response'ss name value"
end
