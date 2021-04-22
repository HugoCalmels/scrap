require 'rspec'
require 'open-uri'
require 'nokogiri'

def get_deputies_names # array_deputies_names

array_deputies_names = []

page = Nokogiri::HTML(URI.open("https://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))

page.search('//*[@id="deputes-list"]').each do |deputies_names|

  array_deputies_names = deputies_names.content
  puts array_deputies_names

end

end

get_deputies_names

