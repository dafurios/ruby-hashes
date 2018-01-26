# Ejercicio 5: Array y Hashes
# Dados los siguientes array:
# meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
# ventas = [2000, 3000, 1000, 5000, 4000]
# Generar un hash que contenga los meses como llave y las ventas como valor:
# h = {'Enero': 2000, 'Febrero': 3000 ... }
# En base al hash generado:
# 1. Invertir las llaves y los valores del hash.
# 2. Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)

meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

# Generar un hash que contenga los meses como llave y las ventas como valor:
puts

a = meses.zip(ventas).to_h
puts a
puts

# En base al hash generado:
# 1. Invertir las llaves y los valores del hash.

b = a
puts b.invert
c = b.invert
puts c
puts

# 2. Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)


puts c.keys.max
puts c[c.keys.max]
puts "el mes de '#{c[c.keys.max]}' fue el de mayor ventas con un total de '#{c.keys.max}'"
puts puts
