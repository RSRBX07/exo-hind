require 'date'
class Loto
  attr_reader :picked_balls # c'est une méthode qui retourne la variable d'instance picked_balls
  attr_reader :saved_grids
  attr_writer :picked_balls # c'est une methode qui me permet de modifier le tirage : la variable picked_balls
  attr_writer :saved_grids
  

  def self.get_player_grid
    puts "Saisissez votre grille nombre par nombre en appyant sur entree entre chaque"
    grid = []
    5.times do
      begin  
        input = gets.to_i
        puts("nombre déjà utilisé !!!") if grid.include? input
      end while grid.include? input # je reboucle si input existe déjà dans grid 
      grid << input
      puts "merci"
    end
    grid
  end

  def self.get_flash
    (1..45).to_a.shuffle.take 5
  end
  
  def has_winner?
    #comprer tous les bulletins valides avec la grille gagnante
    # if !@picked_balls
    #   puts "Le tirage +"
    # end
    sorted_draw = @picked_balls.to_a.sort
    @saved_grids.to_a.each do |grid|
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
    if  ! draw 
        @saved_grids.push grid
        puts "Votre grille est bien enregistree pour le prochain tirage!"
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
     puts "attention mesdames et messieurs nous allons proceder au tirage"
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