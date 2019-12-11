# frozen_string_literal: true

require 'rest-client'
class Bing
  def search
    puts "please enter a search term:"
    search = gets.chomp
    url = 'https://www.bing.com/search?'
    response = RestClient.get(url, { params: { :q => search } })
    if response.code == 200
      puts response.headers
    else
      puts :error
    end
  end
end

try = Bing.new
try.search
