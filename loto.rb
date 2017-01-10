#afficher un tirage de 5 nombres entre 1 et 45
tirage = Array.new(49){|n|n+1}.shuffle.take(5).sort
print "Tirage #{tirage}"	#affichage du tirage
 

# affichage de la cagnote entre 100 et 500 euros

# le vendredi 13, la cagnote est de 2 millions
vendredi_13? = true
if vendredi_13?
    cagnote=2.000.000
else 
    cagnote = 100.000
end

puts "La cagnote du gain est de : #{}"


#available_balls = (1.45).to_a
#suffle balls and teke 5
#picked_balls = []
#(0.4).each do
#picked_balls = available_balls.shuffle.take5

# rentrer une grille de jeu, afficher si gain ou perte
grilledejeu = (1.49).to_i
puts 5.times
while grilledejeu.length < 5		#tant qu'on a pas 5 numeros
	x = 1+rand(49)			#nombre aléatoire entre 1 et 49
	if !tirage.include? x	#est-ce que ce numero est deja sorti ?
		tirage.push(x)		#non, on l'ajoute dans le tableau
	end
    



