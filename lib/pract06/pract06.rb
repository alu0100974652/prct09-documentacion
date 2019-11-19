
class Alimento

	attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno

	def initialize(nombre, gei)
		@nombre, @gei = nombre, gei
	end

	def giv_nombre(nombre)
		return @nombre	
	end
end
