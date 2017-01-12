=begin
Ecrire une methode 
qui prend une instance de fixnum en argument(accepte de 0 a 9) 
et qui retourne la chaine de carractere du chiffre ecrit en toutes lettres
=end

def french_numbers num
    case num
    when 0
        "zero"
    when 1
        "un"
    when 2
        "deux"
    when 3
        "trois"
    when 4
        "quatre"
     when 5
        "cinq"
    when 6
        "six"
    when 7
        "sept"
    when 8
        "huit"
    when 9
        "neuf"
    else
        nil
    end

end
puts french_numbers 5


def french_numbers index
      tableau = ["zero", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf"] 
      tableau [index]
end 
puts " saisir un chiffre entre 0 et 9"
index = gets.chomp.to_i
puts french_numbers index 
