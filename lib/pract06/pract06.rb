
class Alimento

	attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno

	def initialize(nombre, gei, terreno)
		@nombre, @gei, @terreno = nombre, gei, terreno
	end

	def giv_nombre(nombre)
		return @nombre	
	end

	#def giv_gei(gei)
	#	return @gei
	#end
end
