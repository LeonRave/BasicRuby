####################  Ejemplo sencillo
bloque = Proc.new do |nombre|  # |nombre| solo si quieres 
	puts '¡Hola! ' + nombre
end

bloque.call 'Alejandro'
bloque.call 'Alejandro'
bloque.call 'Alejandro'

#################### Ejemplo usando una funcion de antemano
def funcioncita procedimiento
	procedimiento.call
end

decirHola = Proc.new do
	puts 'hola'
end

decirAdios = Proc.new do
	puts 'adios'
end

funcioncita decirHola
funcioncita decirAdios

#################### Ejemplo con un retorno diferente cada vez
def puedeHacerse unProc
  if rand(2) == 0
    unProc.call
  end
end

def hacerDosVeces unProc
  unProc.call
  unProc.call
end

parpadeo = Proc.new do
  puts '<parpadeo>'
end

mirada = Proc.new do
  puts '<mirada>'
end

puedeHacerse parpadeo
puedeHacerse mirada
hacerDosVeces parpadeo
hacerDosVeces mirada

##################### Ejemplo con funcion que recibe diferentes procedimientos
def hacerHastaQueSeaFalso primeraentrada, unProc
  entrada  = primeraentrada
  salida = primeraentrada

  while salida
    entrada  = salida
    salida = unProc.call entrada
  end

  entrada
end

construirMatrizDeCuadrados = Proc.new do |array|
  ultimonumero = array.last
  if ultimonumero <= 0
    false
  else
    array.pop                         #  Quitar el último número...
    array.push ultimonumero*ultimonumero  #  ...y reemplazar este con el último número elevado al cuadrado...
    array.push ultimonumero-1           #  ...seguido por un número menor.
  end
end

siempreFalso = Proc.new do |soloIgnorame|
  false
end

puts hacerHastaQueSeaFalso([5], construirMatrizDeCuadrados).inspect
puts hacerHastaQueSeaFalso('Estoy escribiendo esto a las 3:00 am; ¡alguien que lo finalice!', siempreFalso)

############ Funcion que devuelve procedimientos