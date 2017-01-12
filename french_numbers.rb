=begin
Ecrire une methode 
qui prend une instance de fixnum en argument(accepte de 0 a 9) 
et qui retourne la chaine de carractere du chiffre ecrit en toutes lettres
=end

def french_numbers
    fixnum = gets.to_i
    fixnum =[zero:0, un:1, deux:2, troi:3, quatre:4, ..9]

end
