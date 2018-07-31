require 'nokogiri'
require 'open-uri'
#access the site with nokogiri = this site has https so make sure you specify the correct site
doc = Nokogiri::HTML(open("https://www.marthastewart.com/312598/brick-pressed-sandwich"))

#after searching, found the correct span class noted below
list = doc.css('.component-text')
#for each span of that kind, print out the inner text within.
list.each do |x|
  puts x.inner_html
end
