class Cli::Hiking

attr_accessor :name, :difficulty, :distance, :elevation, :description

@@all=[]

def self.hiking_scraper
Cli::Scraper.find_hikes
end

def self.new(name, difficulty, distance, elevation, description)
  self.name=name
  self.difficulty=difficulty if difficulty !=" "
  self.distance=distance  if distance !=" "
  self.elevation=elevation if elevation !=" "
  self.desciption=description if description !=" "
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
