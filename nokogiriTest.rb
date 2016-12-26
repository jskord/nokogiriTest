require 'nokogiri'
require 'open-uri'

url = 'http://www.ndhealth.gov/ehs/foia/spills/'

keys = Nokogiri::HTML(open(url))

keys.xpath("//tr//th").each do |key|
  puts key.text
end



