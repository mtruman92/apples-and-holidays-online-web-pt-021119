require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply 
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
winter_supplies = []
holiday_hash[:winter].each do |holiday, supplies|
  winter_supplies << holiday_hash[:winter].values
end
winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays_and_supplies|
    puts season.to_s.capitalize + ":"
    holidays_and_supplies.each do |holiday, supplies|
      #binding.pry
      puts "  " + holiday.to_s.capitalize.split("_").collect { |w| w.capitalize }.join(" ") + ": " + supplies.join(", ")
      #puts holiday.to_s.capitalize.split("_").each + ":" + {|supply| supplies.join(",")}
    end
  end
  
  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
all_holidays_with_bbq = []
holiday_hash.each do |season, holiday|
  holiday.each do |holiday_stuff, supply|
    if supply.include?("BBQ")
     all_holidays_with_bbq << holiday_stuff
   end
 end
 end
 all_holidays_with_bbq
end







