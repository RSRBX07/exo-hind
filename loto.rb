require 'date'
class Loto

  def self.get_grid
    grid = []
    5.times do
      begin  
        input = gets.to_i
        puts("nombre déjà utilisé !!!") if grid.include? input
      end while grid.include? input # je reboucle si input existe déjà dans grid 
      grid << input
    end
    grid
  end

  def self.get_flash
    (1..45).to_a.shuffle.take 5
  end
  
  def has_winner?
    #comprer tous les bulletins valides avec la grille gagnante
    sorted_draw = draw.sort
    @saved_grids.each do |grid|
      sorted_grid = grid.sort
      return true if sorted_grid == sorted_draw
    end
    return false
  end

  # enregistre une grille
  # pour le loto courant
  def validate_grid grid
    # @saved_grids ||= []
    @saved_grids = @saved_grids || []
    if  ! @picked_balls 
        @saved_grids.push grid
    else
        puts "tirage déja fait, reviens demain !!!"
    end
    
  end 
  # demander une grille de jeu

  # affichage du montant de la cagnote
  # entre 100 et 500.000 Euros
  # le vendredi 13, la cagnote est de 2 millions

  def vendredi_13?
    Date.today.day == 13 && Date.today.friday?
  end

   def draw
    available_balls = (1..45).to_a
    # shuffle balls and take 5
    # @picked_balls ||= available_balls.shuffle.take(5)
    @picked_balls = @picked_balls || (available_balls.shuffle.take 5)

    puts "Le tirage du jour est : #{@picked_balls.sort}" 
    @picked_balls
  end

  def check_grid grid
    # afficher si gagne ou perdu
    if grid.sort == draw.sort
      puts "You win #{prize}!"
    else
      puts "You loose !"
    end
  end
  


  
private
  def prize
    cagnote = if vendredi_13?
        2_000_000
      else
        100_000
      end
    puts "Le montant de la cagnote du jour est de #{cagnote}"
    cagnote
  end

 
end