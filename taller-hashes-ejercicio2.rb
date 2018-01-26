# Ejercicio 2: Corrección de errores
#
# 1. Se tiene el siguiente hash:
# productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' =>
# 750}
# y se realiza la siguiente consulta para conocer los productos existentes:
# Productos.each { |valor, producto| puts producto }
# Corrige el error para mostrar la información solicitada.
# 2. Se quiere agregar un nuevo producto al hash:
# producto[2200] = cereal
# Corrige la instrucción para agregar el producto.
# 3. Se quiere actualizar el precio de la bebida:
# producto[:bebida] = 2000
# Corrige la instrucción para actualizar el valor del producto existente.
# 4. Convertir el hash en un array y guardarlo en una nueva variable.
# 5. Eliminar el producto 'galletas' del hash


# 1) Corrige el error para mostrar la información solicitada.
puts puts

productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' =>
750}

productos.each { |valor, producto| puts producto }

puts puts

# 2) Corrige la instrucción para agregar el producto

puts productos

productos['cereal'] = 2000

puts productos
puts puts

# 3) Corrige la instrucción para actualizar el valor del producto existente

productos['bebida'] = 2000
puts productos
puts puts

# 4) Convertir el hash en un array y guardarlo en una nueva variable.

b = productos.to_a
print b
puts puts

# 5) Eliminar el producto 'galletas' del hash.

puts productos
productos.delete('galletas')
puts productos
puts
