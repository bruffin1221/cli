class Cli::Hikingcli

  def call
    hikes
    select_hike
    done
  end

def hikes
  puts "Look at the wonderful hikes in the Columbia River Gorge"
  puts <<-DOC
  1. Angel's Rest-Moderate-5 miles-1500ft
  2. Angel's Rest to Devil's Loop-Expert-10.7 miles-2700ft
  3. Augsperger Mt.-Expert-Expert-16 miles-4400ft
  DOC
end

def select_hike
  input=nil
  puts "Enter a hike:"
  until input=="Done"
    input=gets.strip
    case input
    when "1"
      puts "More information on Hike 1"
    when "2"
      puts "More information Hike 2"
    when "3"
      puts "More information on Hike 3"
    when "Done"
      puts done
    end
  end
end

def done
  "Enjoy Your Hike"
end

end
