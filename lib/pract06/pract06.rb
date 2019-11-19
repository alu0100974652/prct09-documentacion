
class Alimento

	attr_reader :nombre

	def initialize(nombre)
		@nombre = nombre
	end

	def giv_nombre(nombre)
		return @nombre	
	end
end
