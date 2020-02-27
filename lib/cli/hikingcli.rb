class Cli::Hikingcli

def call
  input=nil
  until input=="done"

    puts "Look at the wonderful hikes in the Columbia River Gorge"
    puts "Enter 'hikes' for information on all hikes"
    puts "Enter 'done' when finished"

    input=gets.strip.downcase

    if input=="hikes"
      hikes
    elsif input=="done"
      finished
    else
      puts "invalid entry"
    end
  end
end

def hikes
  hikes=Cli::Hiking.list
  hikes.each.with_index(1) do |trails, index|
    puts "#{index}. #{trails.name}-#{trails.description}"
  end
end

def finished
  puts "Enjoy Your Hike"
end

end

    #puts "Look at the wonderful hikes in the Columbia River Gorge"
    #hikes
    #select_hike
    #finished
  #end
#end
#
#def hikes
#  hikes=Cli::Hiking.list
#  hikes.each.with_index(1) do |trails, index|
#    puts "#{index}. #{trails.name}-#{trails.description}"
#    end
#  end

#def select_hike
#  input=nil
#   until input=="done"

#  puts "Enter 'Hikes' for information on all hikes"
#  puts "Enter 'Easy', 'Moderate', or 'Difficult' for information on a specific hike"
#  puts "Enter 'Done' when finished"

#  input=gets.strip.downcase

#  if input=="hikes"
#    puts  Cli::Hiking.list
#  elsif input=="easy"
#    puts Cli::Hiking.find_by_difficulty("Easy")
#  elsif input=="Moderate"
#    puts Cli::Hiking.find_by_difficulty("Moderate")
#  elsif input=="Difficult"
#    puts Cli::Hiking.find_by_difficulty("Difficult")
#  elsif input=="Done"
#  else
#    puts "invalid entry"
#  end
#end

#def self.find_by_difficulty(difficulty)
#  adventure=Cli::Hiking.list.select do |fun|
#   fun.difficulty==difficulty
#   adventure.each.with_index(1) do |outdoor, index|
#    puts "#{index}. #{outdoor.difficulty}-#{outdoor.name}-#{outdoor.distance}-#{outdoor.description}"
# end
 #end
