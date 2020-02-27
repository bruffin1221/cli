class Cli::Hikingcli

  def call
    puts "Look at the wonderful hikes in the Columbia River Gorge"
    hikes
    select_hike
    finished
  end
end

def hikes
  @hikes=Cli::Hiking.list
  #Cli::Scraper.find_hikes
  @hikes.each.with_index(1) do |trails, index|
    puts "#{index}. #{trails.name}"
  end
end

def select_hike
  input=nil
   until input=="done"

  puts "Enter 'Hikes' for information on all hikes"
  puts "Enter 'Easy', 'Moderate', or 'Difficult' for information on a specific hike"
  puts "Enter 'Done' when finished"

  input=gets.strip.downcase

  if input=="hikes"
    puts  Cli::Hiking.list
  elsif input=="easy"
    puts Cli::Hiking.find_by_difficulty("Easy")
  elsif input=="Moderate"
    puts Cli::Hiking.find_by_difficulty("Moderate")
  elsif input=="Difficult"
    puts Cli::Hiking.find_by_difficulty("Difficult")
  elsif input=="Done"
  else
    puts "invalid entry"
  end
end

def finished
  puts "Enjoy Your Hike"
end

end
