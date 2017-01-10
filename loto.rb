#afficher un tirage de 5 nombres entre 1 et 45
tirage = Array.new(49){|n|n+1}.shuffle.take(5).sort
print "Tirage #{tirage}"	#affichage du tirage