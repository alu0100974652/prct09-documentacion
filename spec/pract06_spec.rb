

RSpec.describe Pract06 do

	describe Alimento do 	
		before(:all) do
			@carne_vaca = Alimento.new("Carne de vaca")
		end

		context "Crear la clase Alimento" do
			it "Hay un nombre para el alimento" do
				expect(@carne_vaca.nombre).to eq("Carne de vaca")
			end

			it "Hay un metodo que devuelve el nombre del alimetno" do
				expect(@carne_vaca.giv_nombre(@nombre)).to eq("Carne de vaca")
			end
		end
	end
end
