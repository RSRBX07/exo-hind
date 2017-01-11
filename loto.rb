#afficher un tirage de 5 nombres entre 1 et 45
#tirage = Array.new(49){|n|n+1}.shuffle.take(5).sort
#print "Tirage #{tirage}"	#affichage du tirage
 puts "Entrez votre grille "
 grille = gets.chomp
 loto = (1..45).to_a
 tirage = loto.shuffle.take 5
 day = tirage.sort

# affichage de la cagnote entre 100 et 500 euros

=begin  le vendredi 13, la cagnote est de 2 millions
is_vendredi_13 = false
if is_vendredi_13
    cagnote=2.000.000
else 
	cagnote = rand (100.000-5000.000)
end

puts "La cagnote du gain est de : #{cagnote}"
=end


#available_balls = (1.45).to_a
#suffle balls and teke 5
#picked_balls = []
#(0.4).each do
#picked_balls = available_balls.shuffle.take5

# rentrer une grille de jeu,
# choisir ma grille
grille_user = [8 ,4, 6, 7, 9]
puts "afficher la grille #{grille_user}"

puts "Affichage du résultat#{tirage}"
#comparer cagnote avec les 5 chiffres de la grille

   



