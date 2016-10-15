file = File.open("Daten/pegida_korpus.csv", "r")
counter = 1
file = File.new("Daten/pegida_korpus.csv", "r")
while (line = file.gets)
    sleep(1)
    line = line.gsub(","," ").gsub("."," ").gsub("  "," ")
    values = line.split(" ")
    puts "#{counter}: #{values}"
    counter = counter + 1
end
file.close
