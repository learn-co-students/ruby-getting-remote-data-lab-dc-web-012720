# Write your code here
class GetRequester
    def initialize(u_string)
        @u_string = u_string
    end

    def get_response_body
    uri = URI.parse(@u_string)
    response = Net::HTTP.get_response(uri)
    response.body
    end

    def parse_json
        JSON.parse(get_response_body)
    end
end