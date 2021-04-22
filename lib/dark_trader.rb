require 'rspec'
require 'open-uri'
require 'nokogiri'


def get_something # array_something

  array_something = []

  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

  doc = page.xpath('//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody')

  doc.search('//td').each do |link| 

  array_something = link.content

    puts array_something

  end

end

get_something
