require "pry"

def nyc_pigeon_organizer(data)
  pigeons = {}

  data.each do |attribute_key, attribute_data|
    attribute_data.each do |attribute_name, matching_pigeons|
      matching_pigeons.each do |pigeon|
        #check if pigeon is in has, if so mofidy them, else add them then modify
        if pigeons.keys.include?(pigeon)
          pigeons[pigeon][attribute_key] = attribute_name
        else
          pigeons[pigeon] = {}
          pigeons[pigeon][attribute_key] = attribute_name
        end
      end
    end
  end
end
