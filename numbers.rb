
#exercices sur les nombres
#calcul du nombre de secondes ds 1 année
n=(12*30*24*60*60)
puts "le nombre de secondes en 1 année est : #{n}"
age=(40*n)
puts "mon age en secondes est #{age}"
#Time.now
#Time.new(<année>,<mois>,<jour>,<heure>,<minutes>,<secondes>)
#puts Time.new("22/01/1977")
#now = Time.now
#birth_time = Time.new("22/01/1977")
#age_in_sec = now.birth_time
annee = Time.now.to_i/n
puts annee
anneorigine = Time.now.year - annee
puts anneorigine
puts Time.now.to_i%n





