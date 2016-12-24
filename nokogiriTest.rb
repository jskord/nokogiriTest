require 'nokogiri'
require 'open-uri'

url = 'http://www.ndhealth.gov/ehs/foia/spills/'

data = Nokogiri::HTML(open(url))

puts data




