

RSpec.describe Pract06 do

	describe Alimento do

		before(:all) do

			@carne_vaca = Alimento.new("Carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
			@carne_cordero = Alimento.new("Carne de cordero",18.0, 0.0, 17.0, 20.0, 185.0)
			@camarones = Alimento.new("Camarones (piscifactoría)", 17.6, 1.5, 0.6, 18.0, 2.0,)
			@chocolate = Alimento.new("Chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
			@salmon = Alimento.new("Salmón (piscifactoría)", 19.9, 0.0, 13.6, 6.0, 3.7)
			@cerdo = Alimento.new("Cerdo",21.5, 0.0, 6.3, 7.6, 11.0)
			@pollo = Alimento.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
			@queso = Alimento.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0)
			@cerveza = Alimento.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
			@leche_vaca = Alimento.new("Leche de vaca", 3.3, 4.8, 3.2, 3.2, 8.9)
			@huevos = Alimento.new("Huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
			@cafe = Alimento.new("Café", 0.1, 0.0, 0.0, 0.4, 0.3)
			@tofu = Alimento.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
			@lentejas = Alimento.new("Lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
			@nuez = Alimento.new("Nuez", 20.0, 21.0, 54.0, 0.3, 7.9)
		end

		context "Crear la clase Alimento: " do
			it "Hay un nombre para el alimento " do
				expect(@carne_vaca.nombre).to eq("Carne de vaca")
			end

			it "Hay un metodo que devuelve el nombre del alimento" do
				expect(@carne_vaca.giv_nombre(@nombre)).to eq("Carne de vaca")
			end

			it "Existe la cantidad de emisiones de gases de efecto invernadero" do
				expect(@carne_vaca.gei).to eq(50.0)
			end

			it "Existe la cantidad de terreno utilizado en m2año" do
				expect(@carne_vaca.terreno).to eq(164.0)
			end

			it "Existe un metodo para obtener las emisiones de gases de efecto invernadero" do
				expect(@carne_vaca.giv_gei(@gei)).to eq(50.0)
			end

			it "Existe un metodo para obtener el terreno utilizado" do 
				expect(@carne_vaca.giv_terreno(@terreno)).to eq(164.0)
			end

			it "Existe un metodo para obtener el valor energético del alimento" do
				expect(@carne_vaca.valor_energetico(@carne_vaca.proteinas,@carne_vaca.carbohidratos,@carne_vaca.lipidos)).to eq(5)
			end
		end
	end
end
