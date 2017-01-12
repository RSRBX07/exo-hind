=begin
Ecrire une methode 
qui prend une instance de fixnum en argument(accepte de 0 a 9) 
et qui retourne la chaine de carractere du chiffre ecrit en toutes lettres
=end

def french_numbers
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
        "cinque"
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
puts french_numbers
