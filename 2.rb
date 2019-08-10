=begin
2) Sintaxis
Corregir los errores de sintaxis para que las últimas cuatro líneas se ejecuten de manera correcta
La última instrucción debe imprimir "Hola! Soy la clase MiClase"
class MiClase
def de_instancia
puts 'Método de instancia!'
end
def.self de_clase
puts 'Método de clase!'
end
end
MiClase.de_instancia
MiClase.new.de_clase
class MiClase
attr_writer :name
def initialize(name)
@name = name
end
3) Herencia
Se tiene la clase Vehicle que recibe como argumento un modelo y un año. El método engine_start
enciende el vehículo.
Se pide:
Crear una clase Car que herede de Vehicle
El constructor de Car, además de heredar las propiedades de Vehicle, debe incluir un contador
de instancias de Car.
Crear un método de clase en Car que devuelva la cantidad de instancias.
El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.
Instanciar 10 Cars.
Consultar la cantidad de instancias generadas de Car mediante el método de clase creado.
4) Módulos
Transformar la clase Semana en un módulo y obtener la misma salida:
def self.saludar
"Hola! Soy la clase #{@name}"
end
end
c = MiClase.new('Clase Uno')
puts c.name
c.name = 'Nombre Nuevo'
puts MiClase.saludar

=end

class MiClase
  attr_accessor :name
def initialize(name)
    @name = name
end

def self.saludar
  "Hola! Soy la clase #{self}"
end
end
  c = MiClase.new('Clase Uno')
  puts c.name
  c.name = 'Nombre Nuevo'
  puts MiClase.saludar
