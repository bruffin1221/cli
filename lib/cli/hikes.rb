class Cli::Hiking

attr_accessor :name, :difficulty, :distance, :elevation, :description

@@all=[]

def self.hiking_scraper
Cli::Scraper.find_hikes
end

def self.new(name, difficulty, distance, elevation, description)
  self.hiking_scraper
  self.name=name
  self.difficulty=difficulty
  self.distance=distance
  self.elevation=elevation
  self.description=description
  @@all<<self
  binding.pry
end

def self.all
  @@all
end

end

#Angels_Rest=Cli::Hiking.new
#Angels_Rest=Cli::Hiking.new("Angel's Rest", "Moderate", "4.3 miles", "4700 ft")
#Angels_Rest
