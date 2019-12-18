class Plato_herencia < Plato

	attr_reader :valor_energetico_plato_alimentos
	
	include Comparable

	def initialize(nombre_plato, conjunto_alimentos, cantidades_engramos, cantidades_totales_engramos)

		super(nombre_plato, conjunto_alimentos, cantidades_engramos, cantidades_totales_engramos)
		@valor_energetico_plato_alimentos = valor_energetico_plato_alimentos
		@valor = valor
		@total_ve = total_ve
		@huella_nutricional = huella_nutricional

	end
	
	def total_ve
		
		total_ve = 0
		i = 0
		
		while i < conjunto_alimentos.length do
		
			total_ve += conjunto_alimentos[i].gei + total_ve
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
		while i < conjunto_alimentos.length do

			valor = conjunto_alimentos[i].valor_energetico + valor

			i += 1

		end

		return valor
	end

	def huella_nutricional

		@huella_energetica

		if @valor <= 670
			@huella_energetica = 1.0
		elsif @valor > 670 && @valor <= 830
			@huella_energetica = 2.0
		else  
			@huella_energetica = 3.0
		end

		@huella_carbono

		if @total_ve <= 800
			@huella_carbono = 1.0
		elsif @total_ve > 800 && @total_ve <= 1200
			@huella_carbono = 2.0
		else 
			@huella_carbono = 3.0
		end

		return (@huella_energetica+@huella_carbono)/2

	end



	def to_s

		"Eficiencia energética = #{valor}"
	end

	def <=>(other)
		return nil unless other.kind_of? Plato_herencia
		@valor <=> other.valor
	end

end
