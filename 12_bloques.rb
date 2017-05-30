# Pasando Bloques (no Procedimientos) en las funciones
# paso 1: Definir el metodo.
# paso 2: Hacer el procedimiento.
# paso 3: Llamar al metodo.

class Array
  def cadaPar(&fueBloque_ahoraesProc)
    esPar = true  #  Empezamos con "true" porque las matrices comienzan con 0

    puts self
    self.each do |objeto|
      if esPar
        fueBloque_ahoraesProc.call objeto
      end

      esPar = (not esPar)  #  Cambiar de pares a impares o viceversa
    end
  end

end

['manzana', 'manzana podrida', 'cereza', 'durian'].cadaPar do |fruta|
  puts '¡Yum!  Me encantan los pasteles de '+fruta+', ¿no?'
end

#  Recuerda,, estamos tratando de conseguir los numeros pares
#  de la Matriz.

[1, 2, 3, 4, 5].cadaPar do |bolaImpar|
  puts bolaImpar.to_s+' NO es un número par!'
end

