class Cli::Hiking

attr_accessor :name, :diffiulty, :distance, :elevation

@@all=[]

def intialize (name, difficulty, distance, elevation)
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
