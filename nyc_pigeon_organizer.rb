

def nyc_pigeon_organizer(data)
  # write your code here!

  nyc_pigeon_sorted = Hash.new

  data.each do |color, color_collection|
    color_collection.each do |color_type, name_collection|
      name_collection.each do |name|
        if !nyc_pigeon_sorted [name]
            nyc_pigeon_sorted[name] = { }
        end

        if !nyc_pigeon_sorted[name][color]
          nyc_pigeon_sorted[name][color] = []
        end
          nyc_pigeon_sorted[name][color] << color_type.to_s
      end
    end
  end
  nyc_pigeon_sorted
end
