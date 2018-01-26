# Ejercicio 3: Operaciones básicas
# Dado el hash:
# h = {"x": 1, "y":2}
# Agregar el string z con el valor 3.
# Cambiar el valor de x por 5.
# Eliminar la clave y.
# Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".
# Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
# Ejemplo:
#  x = {"a": "hola" }
# Se transforme en:
# x = {"hola": "a"}
puts

h = {"x": 1, "y":2}
puts h

# 3.1) Agregar el string z con el valor 3.

h[:z] = 3
puts h
puts

# 3.2) Cambiar el valor de x por 5.
h[:x] = 5
puts h
puts

# 3.3) Eliminar la clave y.
h.delete(:y)
puts h
puts

# 3.4) Si el hash tiene una clave llamada z mostrar en pantalla "yeeah".

puts "yeeah" if !h[:z].nil?
puts

# 3.5) Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores

a = h.invert
puts a
puts
