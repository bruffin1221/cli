class Cli::Hikingcli

def call
  input=nil
  until input=="done"

    puts "Look at the wonderful hikes in the Columbia River Gorge"
    puts "Enter 'hikes' for information on all hikes"
    puts "Enter 'hike name' for information on a specific hike"
    puts "Enter 'difficulty level' for an easy hike or hard hike"
    puts "Enter 'done' when finished"

    input=gets.strip.downcase

    case input
    when "hikes"
      hikes
    when "hike name"
      hike_name
    when "difficulty level"
      difficulty_level
    when "done"
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

def hike_name
  puts "Enter name of hike:"
  input=gets.strip

  gorge_hike=Cli::Hiking.find_by_name(input)
  gorge_hike.each do |adv|
    puts "#{adv.name}-#{adv.difficulty}-#{adv.distance}mi-#{adv.elevation}ft"
  end
end

def difficulty_level
  puts "Please choose an 'Easy','Moderate', or 'Difficult' hike"
  input=gets.strip.capitalize

  fun_adventure=Cli::Hiking.find_by_difficulty(input)
  fun_adventure.each.with_index(1) do |fun, index|
    puts "#{index}. #{fun.difficulty}-#{fun.name}-#{fun.distance}mi-#{fun.elevation}ft"
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
