class Plato
	attr_accessor :nombre_plato, :conjunto_alimentos, :cantidades_engramos, :cantidades_totales_engramos

	def initialize(nombre_plato, conjunto_alimentos, cantidades_engramos, cantidades_totales_engramos)
		@nombre_plato, @conjunto_alimentos, @cantidades_engramos, @cantidades_totales_engramos = nombre_plato, conjunto_alimentos, cantidades_engramos, cantidades_totales_engramos
	end

	def porcentaje_proteinas

		total_proteinas = 0
		i = 0
		while i < conjunto_alimentos.length do
			aux = conjunto_alimentos[i].proteinas * cantidades_engramos[i]
			total_proteinas += aux
			i += 1
		end

		tporcentaje_proteinas = 0
		tporcentaje_proteinas = ((total_proteinas/cantidades_totales_engramos)*100).round(1)
		return "#{tporcentaje_proteinas}%"
	end

	def porcentaje_lipidos

		total_lipidos = 0
		i = 0
		while i < conjunto_alimentos.length do
			aux = conjunto_alimentos[i].lipidos * cantidades_engramos[i]
			total_lipidos += aux
			i += 1
		end

		tporcentaje_lipidos = 0
		tporcentaje_lipidos = ((total_lipidos/cantidades_totales_engramos)*100).round(1)
		return "#{tporcentaje_lipidos}%"

	end

	def porcentaje_carbohidratos

		total_carbohidratos = 0
		i = 0
		while i < conjunto_alimentos.length do
			aux = conjunto_alimentos[i].carbohidratos * cantidades_engramos[i]
			total_carbohidratos += aux
			i += 1
		end

		tporcentaje_carbohidratos = 0
		tporcentaje_carbohidratos = ((total_carbohidratos/cantidades_totales_engramos)*100).round(1)
		return "#{tporcentaje_carbohidratos}%"

	end

	def valor_calorico_total

		total_vc = 0
		i = 0
		while i < conjunto_alimentos.length do
			total_vc += conjunto_alimentos[i].valor_energetico + total_vc
			i += 1
		end

		return total_vc
	end

	def to_s

		"Plato: #{@nombre_plato}, \nIngredientes: #{@conjunto_alimentos},\nCantidad total del plato: #{@cantidades_totales_engramos}, separados en las siguientes cantidades por alimento #{@cantidades_engramos}"
	end

end
