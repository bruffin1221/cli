class Cli::Hiking

attr_accessor :name, :difficulty, :distance, :elevation, :description

@@all=[]

def self.hiking_scraper
Cli::Scraper.find_hikes
end

def initialize(name, difficulty, distance, elevation, description)
  @name=name
  @difficulty=difficulty
  @distance=distance
  @elevation=elevation
  @desciption=description
  @@all<<self
end

def self.all
  @@all
end

end

#Angels_Rest=Cli::Hiking.new
#Angels_Rest=Cli::Hiking.new("Angel's Rest", "Moderate", "4.3 miles", "4700 ft")
#Angels_Rest
