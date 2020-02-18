class Cli::Hikingcli

  def call
    hikes
    select_hike
    done
  end

def hikes
  puts "Look at the wonderful hikes in the Columbia River Gorge"
  Cli::Hiking.all.each.with_index(1) do |trails, index|
    puts "#{index}. #{trails.name}-#{trails.difficulty}-#{trails.distance}-#{trails.elevation}"
  end
end

def select_hike
  input=nil
  puts "Enter hikes for information on all hikes:"
  puts "Enter a number for information on a specific hike"
  puts "Enter Done when finished"
  until input=="Done"
    input=gets.strip.to_i

    if input<0
      puts Cli::Hiking.all[input-1]
    elsif "hikes"
      puts hikes
    elsif "Done"
      puts done
    else
      puts "invalid entry"
    end
  end
end

def done
  "Enjoy Your Hike"
end

end
