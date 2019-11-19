
class Alimento

	attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno

	def initialize(nombre, proteinas, carbohidratos, lipidos, gei, terreno)
		@nombre, @proteinas, @carbohidratos, @lipidos, @gei, @terreno = nombre, proteinas, carbohidratos, lipidos, gei, terreno
	end

	def giv_nombre(nombre)
		return @nombre	
	end

	def giv_gei(gei)
		return @gei
	end

	def giv_terreno(terreno)
		return @terreno
	end
end
