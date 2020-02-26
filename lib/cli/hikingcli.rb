class Cli::Hikingcli

  def call
    puts "Look at the wonderful hikes in the Columbia River Gorge"
    hikes
    select_hike
    finished
  end
end

def hikes
  @hikes=Cli::Scraper.find_hikes
  @hikes.each.with_index(1) do |trails, index|
    puts "#{index}. #{trails.name}-#{trails.difficulty}-#{trails.distance}-#{trails.elevation}"
  end
end

def select_hike
  input=nil
   until input=="done"

  puts "Enter 'hikes' for information on all hikes"
  puts "Enter number for information on a specific hike"
  puts "Enter 'done' when finished"

  input=gets.strip.downcase
  if input=="hikes"
    puts hikes
  elsif input.to_i>0
    puts @hikes[input.to_i-1]
  elsif input=="done"
  else
    puts "invalid entry"
  end
end

def finished
  puts "Enjoy Your Hike"
end

end
