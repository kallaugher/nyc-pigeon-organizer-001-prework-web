def nyc_pigeon_organizer(data)
  
  pigeon_list = Hash.new { |hash, key| hash[key] = Hash.new(&hash.default_proc) }

  data.each do |attribute, attribute_data|

    attribute_data.each do |feature, names|

      names.each do |name|

        if pigeon_list[name].has_key?(attribute) == false
          pigeon_list[name][attribute] = []
          pigeon_list[name][attribute] << feature.to_s
        else
          pigeon_list[name][attribute] << feature.to_s
        end

      end

    end

  end

  return pigeon_list

end