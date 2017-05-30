hora  = Time.new   #  El momento que se ejecutó esta código
hora2 = hora + 60*60  #  Un minuto más tarde.

puts hora, hora2

colorArray = []  #  igual a Array.new
colorHash  = {}  #  igual a Hash.new

colorArray[0]         = '#FF0000'
colorArray[1]         = '#008000'
colorArray[2]         = '#0000FF'
colorHash['textos ']  = '#FF0000'   # rojo
colorHash['numeros']  = '#008000'   # verde
colorHash['claves ']  = '#0000FF'   # azul

colorArray.each do |color|
  puts color
end

colorHash.each do |tipoCodigo, color|
  puts tipoCodigo + ' :  ' + color
end

weirdHash = Hash.new
weirdHash[12] = 'monos'
weirdHash[[]] = 'el vacío'
weirdHash[Time.new] = 'ningun momento como el actual'

weirdHash.each do |llave, valor|
  puts llave.to_s + ' :  ' + valor.to_s
end

puts weirdHash.to_s

# Clase extendida
class Integer
  def to_esp
    if self == 5
      espanol = 'cinco'
    else
      espanol = 'cincuenta y ocho'
    end

    espanol
  end
end

#  Mejor probarlo en un par de números...
puts 5.to_esp
puts 58.to_esp

