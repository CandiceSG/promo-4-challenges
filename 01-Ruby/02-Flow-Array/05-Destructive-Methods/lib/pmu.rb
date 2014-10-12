def pmu_format!(race_array)
  race_array.reverse!.map! do |horse|
    (race_array.length - race_array.index(horse)).to_s + "-" + horse + "!"
  end
  nil
end