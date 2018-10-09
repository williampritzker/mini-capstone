

def numbertimes(string)

  x = 0
  counter = 0
  string.length.times do
    if string[x] == "a"
      counter += 1
    end
      x += 1
  end

  p counter
end

numbertimes("blahblahblahaaaaaaaaaaaaa")

