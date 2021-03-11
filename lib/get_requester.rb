require 'net/http'
require 'open-uri'
require 'json'
 
class GetRequester
    attr_accessor :url

    def initialize(url)
        @url = url
    end
  
  def get_response_body
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    # we use the JSON library to parse the API response into nicely formatted JSON
      array = JSON.parse(self.get_response_body)
      
    end

end

# programs = GetPrograms.new.get_programs
# puts programs

# programs = GetPrograms.new
# puts programs.program_school.uniq
