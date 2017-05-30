class Dado

	def initialize #Contructor
    	# Se rueda el dado al crearse la instancia
    	rodar
  	end

	def rodar
    	@numeroMostrado = 1 + rand(6)
    end

    def mostrar
    	@numeroMostrado
    end

end

#  Vamos a crear un par de dados...
dados = [Dado.new, Dado.new]

#  ...y hacerlos rodar.
dados.each do |dado|
  puts dado.rodar
end

dado = Dado.new
dado.rodar
puts dado.mostrar
puts dado.mostrar
puts Dado.new.mostrar