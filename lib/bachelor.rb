def get_first_name_of_season_winner(data, season)
  data[season].each do |person|
    if person["status"].downcase == "winner"
      return person["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, person|
    person.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, person|
    person.each do |contestant|
      if contestant["hometown"] ==  hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, person|
    person.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  counter = 0
  data.each do |seasons, contestants|
    if seasons ==  season
      contestants.each do |contestant|
        age += contestant["age"].to_i
      end
      i = contestants.length
    end
  end
  return (age / counter.to_f).round
end
