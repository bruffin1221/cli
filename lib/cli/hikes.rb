class Cli::Hiking

attr_accessor :name, :difficulty, :distance, :elevation

@@all=[]

def initialize (name, difficulty, distance, elevation)
  @name=name
  @difficulty=difficulty
  @distance=distance
  @elevation=elevation
  @@all<<self
end

def self.all
  @@all
end

end

#Angels_Rest=Cli::Hiking.new
#Angels_Rest=Cli::Hiking.new("Angel's Rest", "Moderate", "4.3 miles", "4700 ft")
#Angels_Rest
