require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    index_page = Nokogiri::HTML(html)
    binding.pry
  end

  def self.scrape_profile_page(profile_url)

  end

end

# roster_container : index_page.css("div.student-card")
