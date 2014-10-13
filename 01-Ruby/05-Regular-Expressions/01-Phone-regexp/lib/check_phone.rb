def french_phone_number?(phone_number)
  phone_number = phone_number.gsub(/\s|-/, "")
  if phone_number =~ /^(\+33|0)[1-9]\d{8}/
    return true
  else
    return false # TODO: true or false?
  end
end