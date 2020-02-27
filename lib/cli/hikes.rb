class Cli::Hiking

attr_accessor :name, :difficulty, :distance, :elevation, :description

@@list=[]

def initialize(name, difficulty, distance, elevation, description)
  @name=name
  @difficulty=difficulty
  @distance=distance
  @elevation=elevation
  @description=description
end

def self.list
  @@list=[]
  Cli::Scraper.find_hikes
  @@list<< Cli::Scraper.find_hikes
  @@list.flatten
end

def self.find_by_name(name)
  self.list.select{|gorge_info| gorge_info.name==name}
end

def self.find_by_difficulty(difficulty)
  self.list.select{|hike_info| hike_info.difficulty==difficulty}
end

end
#@@all.find{|adventure| adventure.name==self.list_hikes}
#def self.adventure
#  @@all.map do |hike_adventure|
#    puts trailhead
  #end
#end

#@@list=[]
#Cli::Scraper.find_hikes
#@@list<< Cli::Scraper.find_hikes

#Angels_Rest=Cli::Hiking.new
#Angels_Rest=Cli::Hiking.new("Angel's Rest", "Moderate", "4.3 miles", "4700 ft")
#Angels_Rest
#@@list.flatten.map.with_index(1){|river, index| puts "#{index}. #{river.name}"}
#puts @@list.flatten[11]
