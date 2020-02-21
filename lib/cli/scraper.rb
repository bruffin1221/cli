class Cli::Scraper

  def self.find_hikes
    gorge=Nokogiri::HTML(open("https://www.oregonhikers.org/field_guide/Columbia_River_Gorge_Hikes"))
    trails=[]
    gorge=Nokogiri::HTML(open("https://www.oregonhikers.org/field_guide/Columbia_River_Gorge_Hikes"))
    gorge.css("tr").each do |trail|
      trails<<{:name=>trail.css("td[2]").text.strip,
        :difficulty=> trail.css("td[4]").text.strip,
        :length=>trail.css("td[3]").text.strip,
        :elevation=> trail.css("td[5]").text.strip}
  end
  trails
    gorge.css("tr").each do |trail|
      trails<<{:name=>trail.css("td[2]").text.strip,
        :difficulty=> trail.css("td[4]").text.strip,
        :length=>trail.css("td[3]").text.strip,
        :elevation=> trail.css("td[5]").text.strip}
  end
  trails
end

end

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
