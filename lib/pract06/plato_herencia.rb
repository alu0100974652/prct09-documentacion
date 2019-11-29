class Plato_herencia < Plato

	attr_reader :valor_energetico_plato_alimentos
	
	include Comparable

	def initialize(nombre_plato, conjunto_alimentos, cantidades_engramos, cantidades_totales_engramos, valor_energetico_plato_alimentos)

		super(nombre_plato, conjunto_alimentos, cantidades_engramos, cantidades_totales_engramos)
		@valor_energetico_plato_alimentos = valor_energetico_plato_alimentos
		@valor = valor

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

	def valor

		i = 0
		valor = 0
		while i < valor_energetico_plato_alimentos.length do

			valor = valor_energetico_plato_alimentos[i] + valor

			i += 1

		end

		return valor
	end

	def to_s

		"Eficiencia energética = #{valor}"
	end

	def <=>(other)
		return nil unless other.kind_of? Plato_herencia
		@valor <=> other.valor
	end

end
