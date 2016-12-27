require 'nokogiri'
require 'open-uri'

url = 'http://www.ndhealth.gov/ehs/foia/spills/'

raw_data = Nokogiri::HTML(open(url))

# creating an empty array and an empty hash so that i can build my array of hashes!!
# spills will be an array of arraiys with hashes in them
# spill will be a singile spill of hashes
# data is the spill info that will be fed into the spill array
spills = []
spill = []
data = {}

raw_data.xpath("//tr//th").each do |key|
  data_keys << key.text
end

p data_keys

raw_data.xpath('//td').each do |data|
  p data.text
end












