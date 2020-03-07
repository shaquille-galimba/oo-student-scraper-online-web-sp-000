require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    index_page = Nokogiri::HTML(html)
    verified_students = []
    index_page.css("div.student-card").each do |student|
      hash = {
        name : student.css("h4.student-name").text
        location : student.css("p.student-location").text
        profile_url : student.css("a").attribute("href").value
      }
    binding.pry
  end

  def self.scrape_profile_page(profile_url)

  end

end

# roster_container : index_page.css("div.student-card")
# name : roster_container.css("h4.student-name").text
# location : roster_container.css("p.student-location").text
# profile_url : index_page.css("div.student-card").first.css("a").attribute("href").value
