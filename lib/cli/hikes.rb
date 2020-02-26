class Cli::Hiking

attr_accessor :name, :difficulty, :distance, :elevation, :description

@@all=[]

def self.list_hikes
  @@all<<Cli::Scraper.find_hikes
 end

 def self.all
   @@all
 end

def self.list_by_name
  self.all.each{|river| river.name==river}
  binding.pry
end


def initialize(name, difficulty, distance, elevation, description)
  @name=name
  @difficulty=difficulty
  @distance=distance
  @elevation=elevation
  @description=description
end


#@@all.find{|adventure| adventure.name==self.list_hikes}
#def self.adventure
#  @@all.map do |hike_adventure|
#    puts trailhead
  #end
#end

end

#Angels_Rest=Cli::Hiking.new
#Angels_Rest=Cli::Hiking.new("Angel's Rest", "Moderate", "4.3 miles", "4700 ft")
#Angels_Rest
