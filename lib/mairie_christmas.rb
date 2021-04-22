require 'rspec'
require 'open-uri'
require 'nokogiri'


def get_cities # array_cities_names

  array_cities_names = []

  page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))

  page.search('//a[@class="lientxt"]').each do |city_names|

    array_cities_names = city_names.content.gsub(" ", "-")
    puts array_cities_names

  end  

end

get_cities

def get_email(cities_names) # array_cities_emails

array_cities_emails = []

for n in 0...cities_names.length # en sueur sur la boucle ...

each_url_page = "http://annuaire-des-mairies.com/95/#{cities_names[n]}.html"

new_page = Nokogiri::HTML(URI.open(each_url_page))

end
end
  
# result_array_de_hash [{"ville 1" => "email 1"}, {"ville 2" => "email 2"}]
