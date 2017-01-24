require_relative '../lib/loto/loto.rb'

RSpec.describe Loto do
  xit 'gets grids' do
    Loto.get_grid 
  end

  it 'give a radom flash grid' do
    expect(Loto.get_flash).not_to be_nil
    expect(Loto.get_flash).to be_an Array
    expect(Loto.get_flash.size).to equal 5
    expect(Loto.get_flash).not_to eql Loto.get_flash
  end

  it 'make a draw' do
    loto = Loto.new
    loto_draw = loto.draw
    expect(loto).to respond_to :draw
    expect(loto_draw).not_to be_nil
    expect(loto_draw).to be_an Array
    expect(loto_draw.size).to equal 5
  end

  it 'make a single draw for each instance' do
    loto = Loto.new
    loto_draw = loto.draw
    expect(loto_draw).to eql loto.draw
  end

  it 'validate a grid register this grid' do
     loto = Loto.new
     grid = [1,2,3,4,5]
     validated_grids = loto.validate_grid grid
     expect(validated_grids).to include grid
  end

  it 'tells if draw is done' do
    loto = Loto.new
    expect(loto.draw_done?).to be false
    loto.draw
    expect(loto.draw_done?).to be true
  end

  it 'reject grid validation after draw' do
    loto = Loto.new
    loto.draw 
    grid = [1,2,3,4,5]
    validated_grids = loto.validate_grid grid
    expect(validated_grids).not_to include grid 
  end
end


# test de dice.rb
# require './dice.rb'

# my_dice = Dice.new

# puts "lancer de de normal"
# puts my_dice.roll

# puts "lancer de de pipe"
# puts my_dice.roll 4

# test de loto









# loto_du_samedi = Loto.new
# 2.times {loto_du_samedi.validate_grid Loto.get_flash}

# #.each { |grid| loto_du_samedi.check_grid grid }

# loto_du_lundi = Loto.new
# loto_du_lundi.validate_grid Loto.get_flash
# #loto_du_lundi.check_grid(grid)
# if loto_du_lundi.has_winner?
# puts "Someone win"
# else
# puts "nobody win"
# end


# fixnumber = Fixnumber.new
# puts fixnumber.french_numbers 2
# puts fixnumber.num_to_string 10



#


# my_loto = Loto.new
# #puts my_loto.tirage

# my_loto.validate_grid Loto.get_grid
# my_loto.has_winner?
# my_loto.validate_grid Loto.get_grid


# test de dice.rb
# require './dice.rb'

# my_dice = Dice.new

# puts "lancer de de normal"
# puts my_dice.roll

# puts "lancer de de pipe"
# puts my_dice.roll 4

# test de loto


#require './loto.rb'
#require './loto/loto.rb'
# require './french_numbers.rb'
# fixnumber = Fixnumber.new
# fixnumber.french_numbers 2
# fixnumber.num_to_string 10

# loto_du_jour = Loto.new

# puts "Avant le tirage, le tirage est #{loto_du_jour.picked_balls.inspect}"
# ma_grille = Loto.get_player_grid
# loto_du_jour.validate_grid ma_grille
# p loto_du_jour.has_winner?
# # loto_du_jour.picked_balls = [1,2,3,4,5] # grace au : attr_writer
# # p loto_du_jour.has_winner?
# # loto_du_jour.validate_grid [1,2,3,4,5]
# p loto_du_jour.has_winner?
# puts " le tirage est #{loto_du_jour.picked_balls.inspect}"
# #loto_du_jour.prize












# loto_du_samedi = Loto.new
# 2.times {loto_du_samedi.validate_grid Loto.get_flash}

# #.each { |grid| loto_du_samedi.check_grid grid }

# loto_du_lundi = Loto.new
# 2.times {
# loto_du_lundi.validate_grid Loto.get_grid


# #loto_du_lundi.check_grid(grid)
# if loto_du_lundi.has_winner?
# puts "Someone win"
# else
# puts "nobody win"
# end
# }
