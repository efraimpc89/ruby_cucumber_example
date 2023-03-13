require 'httparty'

class ServiceHandler

    def initialize
        @base_uri = 'https://pokeapi.co/api/v2/'
        @headers = { 'Content-Type' => 'application/json' }
    end
 
    def get_request( path = 'pokemon',   body = {})
        completePath = "#{@base_uri}#{path}"
        puts completePath
        @response = HTTParty.get(completePath, headers: @headers, body: body)
        return JSON.parse(@response.body)

    end

end