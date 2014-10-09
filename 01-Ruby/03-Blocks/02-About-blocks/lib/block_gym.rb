
def timer_for
  start_time = Time.now
  yield
  duration = (Time.now - start_time).to_f
  return duration
end


timer_for do
  puts "hello"
  sleep(4)
end