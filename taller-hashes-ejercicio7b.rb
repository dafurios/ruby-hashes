# Ejercicio 7: Ejercicio completo con un hash
#
# Se tiene un hash con el inventario de un negocio de computadores.
#
# inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
# Se pide:
# Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa
# realizará distintas funciones.
# Si el usuario ingresa 1, podrá agregar un item y su stock en un solo string y agregarlo al hash. Para
# separar el nombre del stock el usuario debe utilizar una coma.
# Ejemplo del input: "Pendrives, 100"
# Si el usuario ingresa 2, podrá eliminar un item.
# Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
# Si el usuario ingresa 4, podrá ver el stock total (suma del stock de cada item) que hay en el negocio.
# Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock.
# Si el usuario ingresa 6 podrá ingresar y preguntarle al sistema si un item existe en el inventario o no.
# Por ejemplo, el usuario ingresará "Notebooks" y el programa responderá "Sí".
# El programa debe repertirse hasta que el usuario ingrese 7 (salir).
puts

inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
puts

# gets.chomp solo toma string por lo que se debe pasar a integrer

opcion = 0
while opcion != 7
  puts 'escoja las siguientes opciones: '
  puts
  puts 'menu'
  puts 'digite 1 para "agregar un item"'
  puts 'digite 2 para "eliminar un item"'
  puts 'digite 3 para "actualizar informacion"'
  puts 'digite 4 para "ver stock total de cada item"'
  puts 'digite 5 para "ver item con mayor cantidad de stock"'
  puts 'digite 6 para "consultar si un item existe en el inventario"'
  puts 'digite 7 para "salir"'
  puts
  puts 'digite su opcion: '

#while va a comprobar la informacion hasta que sea verdadera

opcion = gets.chomp.to_i
puts


case opcion
when 1 #if opcion == 1
    puts 'opcion 1 - ingerse un elemento entre comas a , b'
    r = gets.chomp #=>"celular,100"
    array = r.split(',') # => ['celular',"100"]
    inventario[array[0].to_sym] = array[1].to_i
    puts inventario
  when 2
    puts 'opcion 2 - eliminar un item'
    puts inventario
    puts 'ingerese elemento a elimar'
    eliminar = gets.chomp.to_sym
    inventario.delete(eliminar)
    puts inventario

  when 3
    puts 'opcion 3'
    puts 'opcion 3 - actualizar'
    item = gets.chomp.to_sym
    nuevo_valor = gets.chomp.to_i
    inventario[item] = nuevo_valor
    puts inventario

  when 4
    puts 'opcion 4 - visualizar stock total'
    acumulador = 0
    inventario.each {|key, value| acumulador = acumulador + value}
    puts "el sotck total es de #{acumulador}"

  when 5
    puts 'opcion 5 - selecionar item con mayor cantidad de stock'
    mayor = 0
    inventario.each {|key, value| mayor = value if value > mayor}
    puts "el mayor valor de stock es #{mayor}"

  when 6
      puts 'opcion 6 - buscar un producto'
      clave_buscada = gets.chomp.to_sym
      encontrada = false
      inventario.each {|key, value| encontrada = true if key == clave_buscada}
      puts encontrada

  when 7
    puts 'SALIR'
  else
    puts 'ingresa opcion valida'
  end
end
