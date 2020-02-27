class Cli::Hikingcli

  def call
    puts "Look at the wonderful hikes in the Columbia River Gorge"
    hikes
    select_hike
    finished
  end
end

def hikes
  @hikes= Cli::Hiking.list
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

  case input=gets.strip
  when input=="Hikes"
    puts Cli::Hiking.list
  when input=="Easy"
    puts Cli::Hiking.find_by_name
  when input=="Moderate"
    puts Cli::Hiking.find_by_name
  when input=="Difficult"
    puts Cli::Hiking.find_by_name
  when input=="done"
  else
    puts "invalid entry"
  end
end

def finished
  puts "Enjoy Your Hike"
end

end
