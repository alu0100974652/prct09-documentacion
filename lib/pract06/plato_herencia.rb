require_relative "plato.rb"
class Plato_herencia < Plato
	

	def initialize(nombre_plato, conjunto_alimentos, cantidades_engramos, cantidades_totales_engramos)

		super(nombre_plato, conjunto_alimentos, cantidades_engramos, cantidades_totales_engramos)

	end
	
	def valor_emisiones_total(x_valores_emisiones)
		
		total_ve = 0
		i = 0
		
		while i < x_valores_emisiones.length do
		
			total_ve += x_valores_emisiones[i] + total_ve
			i += 1

		end
	
		return total_ve
	end

	def metros_cuadrados(x_metros_cuadrados)

		total_mc = 0
		i = 0

		while i < x_metros_cuadrados.length do

			total_mc += x_metros_cuadrados[i] + total_mc

			i += 1

		end 

		return total_mc

	end

end
