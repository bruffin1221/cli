class Cli::Scraper

  def self.find_hikes
    gorge=Nokogiri::HTML(open("https://gorgefriends.org/hike-the-gorge/find-a-hike.html"))
    puts gorge.css(".hike-list-wrap").text
    puts gorge.css(".container")

binding.pry

    Cli::Hiking.new(name, difficulty, network, descriptione)

   end

 end

 <div class="3u 4u(narrow) 6u$(mobile) 12u(mobilep) hike-result-item" data-title="benson plateau loop" data-elevation-actual="4080" data-elevation="4" data-difficulty="4" data-location="3" data-length="5" data-length-actual="16.2" data-features="1" data-restrooms="1" data-trailhead-fees="1" data-family-friendly="0" data-gorgeous-challenge="0" data-guided-hike="0">
 					<a href="/hike-the-gorge/benson-plateau-loop.html">
 						<h4>Benson Plateau Loop, OR</h4>
 					</a>
 					<div class="image fit">
 						<a href="/hike-the-gorge/benson-plateau-loop.html">
 							<img src="/assets/images/hikes/list_image/nscta/nscta_Benson_Plateau_thumbnail_new.jpg" alt="Benson Plateau Loop" class="something">
 						</a>

 					</div>
 					<div class="photo-credit">&nbsp;</div>Expert: 16.2 miles | 4080 ft.<ul class="hike-icons hike-icons-with-titles"><li class="hike-icon"><img src="/assets/images/hike_features/GorgeIcons-Wildflower.png" alt="Wildflowers" title="Wildflowers" class="small-icon"></li></ul><div class="hike-icon-title"></div>
 				</div>

require "Nokogiri"
        gorge=Nokogiri::HTML(open("https://gorgefriends.org/hike-the-gorge/find-a-hike.html"))
        gorge.css("div.3u 4u(narrow) 6u$(mobile) 12u(mobilep) hike-result-item")
