# encoding: utf-8
$stopwords = ["bitte", "ab", "bei", "da", "deshalb", "ein", "für", "finde", "haben", "hier", "ich", "ja", "kann", "machen", "muesste", "nach", "oder", "seid", "sonst", "und", "vom", "wann", "wenn", "wie", "zu", "bin", "eines", "hat", "manche", "solches", "an", "anderm", "bis", "das", "deinem", "demselben", "dir", "doch", "einig", "er", "eurer", "hatte", "ihnen", "ihre", "ins", "jenen", "keinen", "manchem", "meinen", "nichts", "seine", "soll", "unserm", "welche", "werden", "wollte", "während", "alle", "allem", "allen", "aller", "alles", "als", "also", "am", "ander", "andere", "anderem", "anderen", "anderer", "anderes", "andern", "anders", "auch", "auf", "aus", "bist", "bsp.", "daher", "damit", "dann", "dasselbe", "dazu", "daß", "dein", "deine", "deinen", "deiner", "deines", "dem", "den", "denn", "denselben", "der", "derer", "derselbe", "derselben", "des", "desselben", "dessen", "dich", "die", "dies", "diese", "dieselbe", "dieselben", "diesem", "diesen", "dieser", "dieses", "dort", "du", "durch", "eine", "einem", "einen", "einer", "einige", "einigem", "einigen", "einiger", "einiges", "einmal", "es", "etwas", "euch", "euer", "eure", "eurem", "euren", "eures", "ganz", "ganze", "ganzen", "ganzer", "ganzes", "gegen", "gemacht", "gesagt", "gesehen", "gewesen", "gewollt", "hab", "habe", "hatten", "hin", "hinter", "ihm", "ihn", "ihr", "ihrem", "ihren", "ihrer", "ihres", "im", "in", "indem", "ist", "jede", "jedem", "jeden", "jeder", "jedes", "jene", "jenem", "jener", "jenes", "jetzt", "kein", "keine", "keinem", "keiner", "keines", "konnte", "könnten", "können", "könnte", "mache", "machst", "macht", "machte", "machten", "man", "manchen", "mancher", "manches", "mein", "meine", "meinem", "meiner", "meines", "mich", "mir", "mit", "muss", "musste", "müßt", "nicht", "noch", "nun", "nur", "ob", "ohne", "sage", "sagen", "sagt", "sagte", "sagten", "sagtest", "sehe", "sehen", "sehr", "seht", "sein", "seinem", "seinen", "seiner", "seines", "selbst", "sich", "sicher", "sie", "sind", "so", "solche", "solchem", "solchen", "solcher", "sollte", "sondern", "um", "uns", "unse", "unsen", "unser", "unses", "unter", "viel", "von", "vor", "war", "waren", "warst", "was", "weg", "weil", "weiter", "welchem", "welchen", "welcher", "welches", "welche", "werde", "wieder", "will", "wir", "wird", "wirst", "wo", "wolle", "wollen", "wollt", "wollten", "wolltest", "wolltet", "würde", "würden", "z.B.", "zum", "zur", "zwar", "zwischen", "über", "aber", "abgerufen", "abgerufene", "abgerufener", "abgerufenes", "acht", "allein", "allerdings", "allerlei", "allgemein", "allmählich", "allzu", "alsbald", "andererseits", "andernfalls", "anerkannt", "anerkannte", "anerkannter", "anerkanntes", "anfangen", "anfing", "angefangen", "angesetze", "angesetzt", "angesetzten", "angesetzter", "ansetzen", "anstatt", "arbeiten", "aufgehört", "aufgrund", "aufhören", "aufhörte", "aufzusuchen", "ausdrücken", "ausdrückt", "ausdrückte", "ausgenommen", "ausser", "ausserdem", "author", "autor", "außen", "außer", "außerdem", "außerhalb", "bald", "bearbeite", "bearbeiten", "bearbeitete", "bearbeiteten", "bedarf", "bedurfte", "bedürfen", "befragen", "befragte", "befragten", "befragter", "begann", "beginnen", "begonnen", "behalten", "behielt", "beide", "beiden", "beiderlei", "beides", "beim", "bei", "beinahe", "beitragen", "beitrugen", "bekannt", "bekannte", "bekannter", "bekennen", "benutzt", "bereits", "berichten", "berichtet", "berichtete", "berichteten", "besonders", "besser", "bestehen", "besteht", "beträchtlich", "bevor", "bezüglich", "bietet", "bisher", "bislang", "bis", "bleiben", "blieb", "bloss", "bloß", "brachte", "brachten", "brauchen", "braucht", "bringen", "bräuchte", "bzw", "böden", "ca.", "dabei", "dadurch", "dafür", "dagegen", "dahin", "damals", "danach", "daneben", "dank", "danke", "danken", "dannen", "daran", "darauf", "daraus", "darf", "darfst", "darin", "darum", "darunter", "darüber", "darüberhinaus", "dass", "davon", "davor", "demnach", "denen", "dennoch", "derart", "derartig", "derem", "deren", "derjenige", "derjenigen", "derzeit", "desto", "deswegen", "diejenige", "diesseits", "dinge", "direkt", "direkte", "direkten", "direkter", "doppelt", "dorther", "dorthin", "drauf", "drei", "dreißig", "drin", "dritte", "drunter", "drüber", "dunklen", "durchaus", "durfte", "durften", "dürfen", "dürfte", "eben", "ebenfalls", "ebenso", "ehe", "eher", "eigenen", "eigenes", "eigentlich", "einbaün", "einerseits", "einfach", "einführen", "einführte", "einführten", "eingesetzt", "einigermaßen", "eins", "einseitig", "einseitige", "einseitigen", "einseitiger", "einst", "einstmals", "einzig", "ende", "entsprechend", "entweder", "ergänze", "ergänzen", "ergänzte", "ergänzten", "erhalten", "erhielt", "erhielten", "erhält", "erneut", "erst", "erste", "ersten", "erster", "eröffne", "eröffnen", "eröffnet", "eröffnete", "eröffnetes", "etc", "etliche", "etwa", "fall", "falls", "fand", "fast", "ferner", "finden", "findest", "findet", "folgende", "folgenden", "folgender", "folgendes", "folglich", "fordern", "fordert", "forderte", "forderten", "fortsetzen", "fortsetzt", "fortsetzte", "fortsetzten", "fragte", "frau", "frei", "freie", "freier", "freies", "fuer", "fünf", "gab", "ganzem", "gar", "gbr", "geb", "geben", "geblieben", "gebracht", "gedurft", "geehrt", "geehrte", "geehrten", "geehrter", "gefallen", "gefiel", "gefälligst", "gefällt", "gegeben", "gehabt", "gehen", "geht", "gekommen", "gekonnt", "gemocht", "gemäss", "genommen", "genug", "gern", "gestern", "gestrige", "getan", "geteilt", "geteilte", "getragen", "gewissermaßen", "geworden", "ggf", "gib", "gibt", "gleich", "gleichwohl", "gleichzeitig", "glücklicherweise", "gmbh", "gratulieren", "gratuliert", "gratulierte", "gut", "gute", "guten", "gängig", "gängige", "gängigen", "gängiger", "gängiges", "gänzlich", "haette", "halb", "hallo", "hast", "hattest", "hattet", "heraus", "herein", "heute", "heutige", "hiermit", "hiesige", "hinein", "hinten", "hinterher", "hoch", "hundert", "hätt", "hätte", "hätten", "höchstens", "igitt", "immer", "immerhin", "important", "indessen", "info", "infolge", "innen", "innerhalb", "insofern", "inzwischen", "irgend", "irgendeine", "irgendwas", "irgendwen", "irgendwer", "irgendwie", "irgendwo", "je", "jedenfalls", "jederlei", "jedoch", "jemand", "jenseits", "jährig", "jährige", "jährigen", "jähriges", "kam", "kannst", "kaum", "keines", "keinerlei", "keineswegs", "klar", "klare", "klaren", "klares", "klein", "kleinen", "kleiner", "kleines", "koennen", "koennt", "koennte", "koennten", "komme", "kommen", "kommt", "konkret", "konkrete", "konkreten", "konkreter", "konkretes", "konnten", "könn", "könnt", "könnten", "künftig", "lag", "lagen", "langsam", "lassen", "laut", "lediglich", "leer", "legen", "legte", "legten", "leicht", "leider", "lesen", "letze", "letzten", "letztendlich", "letztens", "letztes", "letztlich", "lichten", "liegt", "liest", "links", "längst", "längstens", "mag", "magst", "mal", "mancherorts", "manchmal", "mann", "margin", "mehr", "mehrere", "meist", "meiste", "meisten", "meta", "mindestens", "mithin", "mochte", "morgen", "morgige", "muessen", "muesst", "musst", "mussten", "muß", "mußt", "möchte", "möchten", "möchtest", "mögen", "möglich", "mögliche", "möglichen", "möglicher", "möglicherweise", "müssen", "müsste", "müssten", "müßte", "nachdem", "nacher", "nachhinein", "nahm", "natürlich", "nacht", "neben", "nebenan", "nehmen", "nein", "neu", "neue", "neuem", "neuen", "neuer", "neues", "neun", "nie", "niemals", "niemand", "nimm", "nimmer", "nimmt", "nirgends", "nirgendwo", "nutzen", "nutzt", "nutzung", "nächste", "nämlich", "nötigenfalls", "nützt", "oben", "oberhalb", "obgleich", "obschon", "obwohl", "oft", "per", "pfui", "plötzlich", "pro", "reagiere", "reagieren", "reagiert", "reagierte", "rechts", "regelmäßig", "rief", "rund", "sang", "sangen", "schlechter", "schließlich", "schnell", "schon", "schreibe", "schreiben", "schreibens", "schreiber", "schwierig", "schätzen", "schätzt", "schätzte", "schätzten", "sechs", "sect", "sehrwohl", "sei", "seit", "seitdem", "seite", "seiten", "seither", "selber", "senke", "senken", "senkt", "senkte", "senkten", "setzen", "setzt", "setzte", "setzten", "sicherlich", "sieben", "siebte", "siehe", "sieht", "singen", "singt", "sobald", "sodaß", "soeben", "sofern", "sofort", "sog", "sogar", "solange", "solc", "hen", "solch", "sollen", "sollst", "sollt", "sollten", "solltest", "somit", "sonstwo", "sooft", "soviel", "soweit", "sowie", "sowohl", "spielen", "später", "startet", "startete", "starteten", "statt", "stattdessen", "steht", "steige", "steigen", "steigt", "stets", "stieg", "stiegen", "such", "suchen", "sämtliche", "tages", "tat", "tatsächlich", "tatsächlichen", "tatsächlicher", "tatsächliches", "tausend", "teile", "teilen", "teilte", "teilten", "titel", "total", "trage", "tragen", "trotzdem", "trug", "trägt", "toll", "tun", "tust", "tut", "txt", "tät", "ueber", "umso", "unbedingt", "ungefähr", "unmöglich", "unmögliche", "unmöglichen", "unmöglicher", "unnötig", "unsem", "unser", "unsere", "unserem", "unseren", "unserer", "unseres", "unten", "unterbrach", "unterbrechen", "unterhalb", "unwichtig", "usw", "vergangen", "vergangene", "vergangener", "vergangenes", "vermag", "vermutlich", "vermögen", "verrate", "verraten", "verriet", "verrieten", "version", "versorge", "versorgen", "versorgt", "versorgte", "versorgten", "versorgtes", "veröffentlichen", "veröffentlicher", "veröffentlicht", "veröffentlichte", "veröffentlichten", "veröffentlichtes", "viele", "vielen", "vieler", "vieles", "vielleicht", "vielmals", "vier", "vollständig", "voran", "vorbei", "vorgestern", "vorher", "vorne", "vorüber", "völlig", "während", "wachen", "waere", "warum", "weder", "wegen", "weitere", "weiterem", "weiteren", "weiterer", "weiteres", "weiterhin", "weiß", "wem", "wen", "wenig", "wenige", "weniger", "wenigstens", "wenngleich", "wer", "werdet", "weshalb", "wessen", "weswegen", "wichtig", "wieso", "wieviel", "wiewohl", "willst", "wirklich", "wodurch", "wogegen", "woher", "wohin", "wohingegen", "wohl", "wohlweislich", "womit", "woraufhin", "woraus", "worin", "wurde", "wurden", "währenddessen", "wär", "wäre", "wären", "zahlreich", "zehn", "zeitweise", "ziehen", "zieht", "zog", "zogen", "zudem", "zuerst", "zufolge", "zugleich", "zuletzt", "zumal", "zurück", "zusammen", "zuviel", "zwanzig", "zwei", "zwölf", "ähnlich", "übel", "überall", "überallhin", "überdies", "übermorgen", "übrig", "übrigens" ]
# stoppwortliste von http://staticfloat.com

use_timestamp = true
counter = 1
file = File.new("Daten/pegida_korpus_short.csv", "r")
$woerter = {}
$regexp_url = /((http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?)/ix
$regexp_kein_buchstabe = /\p{^Letter}/u
def belegen(wort)
  wort = wort.downcase
  if !$stopwords.include?(wort)
    if $woerter.key?(wort)
      neu = $woerter[wort]
      neu = neu + 1
      $woerter[wort] = neu
    else
      $woerter[wort] = 1
    end
  end
end

def belegen_ts(wort, timestamp)
  wort = wort.downcase
  if !$stopwords.include?(wort)
    if $woerter.key?(wort)
      neu = $woerter[wort]
      neu = neu + 1
      $woerter[wort] = neu
    else
      $woerter[wort] = 1
    end
  end
end

def output
  myfile = File.new("Daten/woerter_sortiert.js", "w+")
  myfile.write("var amountData = {" + "\n")
  counter2 = 0
  $woerter_sortiert.each do |a1, a2|
    output = "\t" + "\"" + a1 + "\"" + ":" +" " + a2.to_s + "," + "\n"
    myfile.write(output)
    counter2 = counter2 + 1
    #if counter2 > 2500
    #  break
    #end
  end
  myfile.write("}")
  myfile.close
end

def output_ts
  myfile = File.new("Daten/woerter_sortiert.js", "w+")
  myfile.write("var amountData = {" + "\n")
  counter2 = 0
  $woerter_sortiert.each do |a1, a2|
    output = "\t" + "\"" + a1 + "\"" + ":" +" " + a2.to_s + "," + "\n"
    myfile.write(output)
    counter2 = counter2 + 1
    #if counter2 > 2500
    #  break
    #end
  end
  myfile.write("}")
  myfile.close
end

  while (line = file.gets)
            post = line[25, line.length]
            post = post.gsub($regexp_url, " ")
            post = post.gsub($regexp_kein_buchstabe, " ")
            timestamp = line[0, 24]
            post = post
            .gsub(/ +/, " ") #leerzeichen zu einem zusammenfassen
            values = post.split(" ")
            values.each do |wort|
              if use_timestamp
                belegen_ts(wort, timestamp)
              else
                belegen(wort)
              end
            end
            counter = counter + 1
  end

file.close
$woerter_sortiert = $woerter.sort {|a1, a2| a2[1].to_i <=> a1[1].to_i}
puts $woerter_sortiert

if use_timestamp
  output_ts
else
  output
end

