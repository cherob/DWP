# encoding: utf-8
$stopwords = ["aber", "als", "am", "an", "auch", "auf", "aus", "bei", "bin", "bis", "bist", "da", "dadurch", "daher", "darum","daß", "das", "dass", "dein", "deine", "dem", "den", "der", "des", "dessen", "deshalb", "die", "dies", "dieser", "dieses", "doch", "dort", "du", "durch", "ein", "eine", "einem", "einen", "einer", "eines", "er", "es", "euer", "eure", "für", "hatte", "hatten", "hattest", "hattet", "hier  hinter", "ich", "ihr", "ihre", "im", "in", "ist", "ja", "jede", "jedem", "jeden", "jeder", "jedes", "jener", "jenes", "jetzt", "kann", "kannst", "können", "könnt", "machen", "mein", "meine", "mit", "muß", "mußt", "musst", "müssen", "müßt", "nach", "nachdem", "nein", "nicht", "nun", "oder", "seid", "sein", "seine", "sich", "sie", "sind", "soll", "sollen", "sollst", "sollt", "sonst", "soweit", "sowie", "und", "unser   unsere", "unter", "vom", "von", "vor", "wann", "warum", "was", "weiter", "weitere", "wenn", "wer", "werde", "werden", "werdet", "weshalb", "wie", "wieder", "wieso", "wir", "wird", "wirst", "wo", "woher", "wohin", "zu", "zum", "zur", "über"]
counter = 1
file = File.new("Daten/pegida_korpus_short.csv", "r")
$woerter = {}
$regexp_url = /((http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?)/ix
$regexp_kein_buchstabe = /\p{^Letter}/u
def belegen(wort)
  wort = wort.downcase
  if !$stopwords.include?(wort)
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
  #puts counter
#puts $woerter
file.close
$woerter_sortiert = $woerter.sort {|a1, a2| a1[1].to_i <=> a2[1].to_i}
puts $woerter_sortiert
