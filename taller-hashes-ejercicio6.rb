# Ejercicio 6: Operaciones típicas sobre un hash
# Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de este.
# restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# 1. Obtener el plato mas caro.
# 2. Obtener el plato mas barato.
# 3. Sacar el promedio del valor de los platos.
# 4. Crear un arreglo con solo los nombres de los platos.
# 5. Crear un arreglo con solo los valores de los platos.
# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
# 7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra
puts

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

# 1. Obtener el plato mas caro.

caro = restaurant_menu.max_by {|plato, precio| precio}
puts caro[0]
puts "el plato mas caro es #{caro[0]}"
puts

# 2. Obtener el plato mas barato
barato = restaurant_menu.min_by {|plato, precio| precio}
puts barato[0]
puts "el plato mas barato es #{barato[0]}"
puts

# 3. Sacar el promedio del valor de los platos.

def promedio (var)
  var.values.sum / var.values.count
end

puts promedio(restaurant_menu)
puts "el promedio del valor de los platos es #{promedio(restaurant_menu)}"

# 4. Crear un arreglo con solo los nombres de los platos.

puts
puts

platos = restaurant_menu.map { |plato, precio| plato}
print platos.sort!
puts
puts "los platos del restaurant son #{platos}"
puts puts

# 5. Crear un arreglo con solo los valores de los platos.

valores = restaurant_menu.map { |plato, precio| precio}
print valores.sort!
puts
puts "el precio de estos platos es #{valores}"
puts puts

# 6. Modificar el hash y agregar el IVA a los valores de los platos
# (multiplicar por 1.19).

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

def IVA (precio_iva)
   precio_iva.map {|plato, precio| precio * 1.19}
  end

print IVA(restaurant_menu).sort!
puts
puts "los valores del precio más IVA de los platos es #{IVA(restaurant_menu).sort!}"
puts
puts
# # 7. Dar descuento del 20% para los platos que tengan un nombre de más
# 1 una palabra.

descuento = restaurant_menu.map {|plato, precio| precio * 0.8 if plato.split(" ").length > 1}
print descuento.compact
puts
puts "el precio del plato '#{caro[0]}' con un 20% de descuento es de #{descuento.compact}"
puts
