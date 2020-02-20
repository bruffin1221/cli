class Cli::Scraper

  def self.find_hikes
    gorge=Nokogiri::HTML(open("https://www.oregonhikers.org/field_guide/Columbia_River_Gorge_Hikes"))
     gorge.css("td").text.strip
    .each do |trail_info|
      trail_info.css("td")[1].text
     binding.pry
   end

 end


gorge.css("tr").collect do |trail|
  trail.css("td")[1]
end
 #gorge.css("table").name
