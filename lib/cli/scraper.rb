class Cli::Scraper

  def self.find_hikes
    gorge=Nokogiri::HTML(open("https://www.oregonhikers.org/field_guide/Columbia_River_Gorge_Hikes"))
    gorge.css("tr").map do |trail|
      name=trail.css("td[2]").text.strip
      name.reject(" ")

      #difficulty=trail.css("td[3]").text.strip.(" ")
      #distance=trail.css("td[4]").text.strip.delete!(" ")
      #elevation=trail.css("td[5]").text.strip.delete!(" ")
      #description=trail.css("td[6]").text.strip.delete!(" ")
      #Cli::Hiking.new(name, distance, difficulty, elevation, description)
      binding.pry
    end
  end

end
#  Cli::Hiking.new(name, distance, difficulty, elevation, description)
  #gorge.xpath("//tr").each do |trail|

#puts gorge.css("a").text
#gorge.css("tr").each do |trail|
#  puts trail.css("td")
#end
# gorge.css("td").each do |trail|
#   trail.css("tr")[1]
# end

 #gorge.css("td").text.strip
#.each do |trail_info|
#  trail_info.css("td")[1].text

#rows = puts gorge.css("tr[2]").text
#rows.css("tr[1]").each do |row|
#puts  trail.css.
