class Plato
	attr_accessor :nombre_plato, :conjunto_alimentos, :cantidades_engramos, :cantidades_totales_engramos

	def initialize(nombre_plato, conjunto_alimentos, cantidades_engramos, cantidades_totales_engramos)
		@nombre_plato, @conjunto_alimentos, @cantidades_engramos, @cantidades_totales_engramos = nombre_plato, conjunto_alimentos, cantidades_engramos, cantidades_totales_engramos
	end

	def porcentaje_proteinas(conjunto_alimentos, cantidades_engramos, cantidades_totales_engramos)

		total_proteinas = 0
		i = 0
		while i < conjunto_alimentos.length do
			aux = conjunto_alimentos[i] * cantidades_engramos[i]
			total_proteinas += aux
			i += 1
		end

		tporcentaje_proteinas = 0
		tporcentaje_proteinas = ((total_proteinas/cantidades_totales_engramos)*100).round(1)
		puts "#{tporcentaje_proteinas}%"
		return "#{tporcentaje_proteinas}%"
	end

	def porcentaje_lipidos(conjunto_alimentos, cantidades_engramos, cantidades_totales_engramos)

		total_lipidos = 0
		i = 0
		while i < conjunto_alimentos.length do
			aux = conjunto_alimentos[i] * cantidades_engramos[i]
			total_lipidos += aux
			i += 1
		end

		tporcentaje_lipidos = 0
		tporcentaje_lipidos = ((total_lipidos/cantidades_totales_engramos)*100).round(1)
		puts "#{tporcentaje_lipidos}%"
		return "#{tporcentaje_lipidos}%"

	end

	def porcentaje_carbohidratos(conjunto_alimentos, cantidades_engramos, cantidades_totales_engramos)

		total_carbohidratos = 0
		i = 0
		while i < conjunto_alimentos.length do
			aux = conjunto_alimentos[i] * cantidades_engramos[i]
			total_carbohidratos += aux
			i += 1
		end

		tporcentaje_carbohidratos = 0
		tporcentaje_carbohidratos = ((total_carbohidratos/cantidades_totales_engramos)*100).round(1)
		puts "#{tporcentaje_carbohidratos}%"
		return "#{tporcentaje_carbohidratos}%"

	end

end
