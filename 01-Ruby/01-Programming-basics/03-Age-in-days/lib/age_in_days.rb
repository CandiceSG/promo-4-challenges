# This "require" line loads the contents of the 'date' file from the standard
# Ruby library, giving you access to the Date class.
require 'date'

def age_in_days(day, month, year)
  auj=Date.today
  auj= auj.jd.to_i
  birth = Date.new(year, month, day)
  birth=birth.jd.to_i
calcul= (auj - birth)
return calcul.to_i
end

