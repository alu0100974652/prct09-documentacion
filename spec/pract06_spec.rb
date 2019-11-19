

RSpec.describe Pract06 do

	describe Alimento do 	
		before(:all) do
			@carne_vaca = Alimento.new("Carne de vaca", 50.0)
		end

		context "Crear la clase Alimento" do
			it "Hay un nombre para el alimento" do
				expect(@carne_vaca.nombre).to eq("Carne de vaca")
			end

			it "Hay un metodo que devuelve el nombre del alimetno" do
				expect(@carne_vaca.giv_nombre(@nombre)).to eq("Carne de vaca")
			end

			it "Existe la cantidad de emisiones de gases de efecto invernadero" do
				expect(@carne_vaca.gei).to eq(50.0)
			end

			it "Existe la cantidad de terreno utilizado en m2año" do
				expect(@carne_vaca.terreno).to eq(164.0)
			end
		end
	end
end
