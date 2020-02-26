class Cli::Hiking

attr_accessor :name, :difficulty, :distance, :elevation, :description

@@list=[]

def self.list
  Cli::Scraper.find_hikes
  @@list<< Cli::Scraper.find_hikes
  @@list.flatten
end

def self.find_a_name(name)
 @@list.flatten.find{|hike_info| hike_info.name==name}
 end

def initialize(name, difficulty, distance, elevation, description)
  @name=name
  @difficulty=difficulty
  @distance=distance
  @elevation=elevation
  @description=description
end


end
#@@all.find{|adventure| adventure.name==self.list_hikes}
#def self.adventure
#  @@all.map do |hike_adventure|
#    puts trailhead
  #end
#end



#Angels_Rest=Cli::Hiking.new
#Angels_Rest=Cli::Hiking.new("Angel's Rest", "Moderate", "4.3 miles", "4700 ft")
#Angels_Rest
#@@list.flatten.map.with_index(1){|river, index| puts "#{index}. #{river.name}"}
#puts @@list.flatten[11]
def self.find_by_difficulty(difficulty)
  @@list=[]
  Cli::Scraper.find_hikes
  @@list<< Cli::Scraper.find_hikes
  @@list.flatten.select{|hike_info| hike_info.difficulty==difficulty}
 end
find_by_difficuty("Easy")

def self.find_by_name(name)
@@list=[]
Cli::Scraper.find_hikes
@@list<< Cli::Scraper.find_hikes
@@list.flatten.select{|hike_info| hike_info.name==name}
end
find_by_name("Horsethief Butte Hike")
