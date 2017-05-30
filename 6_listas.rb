lista = [4,5,1,3,2]
tam = lista.length

#lista.each do |l|
#	puts l
#end

#0.upto(4) do |i|
#  puts lista[i]
#end


0.upto(tam-2) do |j|
	0.upto(tam-2-j) do |i|
		if lista[i] > lista[i+1]
			aux = lista[i]
			lista[i]=lista[i+1] 
			lista[i+1]=aux  
		end		
	end
end

puts lista.to_s
puts lista.join('@')
puts lista.push(6).to_s
puts lista.last
lista.pop
puts lista.to_s
dic = { 'numeros' => lista}
puts dic.inspect
puts dic.to_s
