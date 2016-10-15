
counter = 1
file = File.new("Daten/pegida_korpus.csv", "r")
$woerter = {}
$regexp_url = /((http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?)/ix
$regexp_kein_buchstabe = /\p{^Letter}/u
def belegen(wort)
  wort = wort.downcase
  if $woerter.key?(wort)
    #puts "if " + wort
      neu = $woerter[wort]
      neu = neu + 1
      $woerter[wort] = neu
      #puts neu
      #puts $woerter[wort]
  else
    #puts "else " + wort
    $woerter[wort] = 1
  end
end
  while (line = file.gets)
            post = line[25, line.length]
            post = post.gsub($regexp_url, " ")
            post = post.gsub($regexp_kein_buchstabe, " ")
            timestamp = line[0, 24]
            post = post
            .gsub(/ +/, " ") #leerzeichen zu einem zusammenfassen
            #puts timestamp
            #puts post
            values = post.split(" ")
            values.each do |wort|
              belegen(wort)
            end
            counter = counter + 1
  end
#puts $woerter
file.close
$woerter_sortiert = $woerter.sort {|a1, a2| a1[1].to_i <=> a2[1].to_i}
puts $woerter_sortiert
