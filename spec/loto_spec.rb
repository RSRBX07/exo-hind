
  
require './loto/loto.rb'
RSpec.describe Loto do 
 xit 'gets grids' do
   Loto.get_grid
 end
it 'give a radom flash grid' do
  expect(Loto.get_flash).not_to be_nil
  expect(Loto.get_flash).to be_an Array
  expect(Loto.get_flash).to equal 5
  expect(Loto.get_flash).not_to eql Loto.get_flash
end

it'make a draw' do 
  # loto=Loto.new
  # loto_draw=loto.draw
  # expect(loto).to respond_to : draw
  # expect(Loto.loto_draw).not_to be_nil
  # expect(Loto.loto_draw).to be_an Array
  # expect(Loto.loto_draw).to equal 5
  # expect(Loto.loto_draw).not_to eql Loto.loto.draw
 # expect{loto.draw}.not_to raise_error # raise est une methode de ruby pour lever un erreur
end
it 'validate a grid register this grid' do
loto=Loto.new
grid =[1,2,3,4,5]
loto.validate_grid grid
validate_grid = loto.validate_grid grid
expect(validated_grids).to include grid


end

 end
