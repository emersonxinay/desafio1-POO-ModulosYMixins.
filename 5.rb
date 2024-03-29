=begin
5) Mixins
Transformar la clase Herviboro en un módulo. Implementar el módulo en la clase Conejo mediante
Mixin para poder acceder al método dieta desde la instancia. Finalmente imprimir la definición de
Hervíboro.
-----------------------
class Herviboro
@@definir = 'Sólo me alimento de vegetales!'
def self.definir
@@definir
end
def dieta
"Soy un Herviboro!"
end
end
class Animal
def saludar
"Soy un animal!"
end
end
class Conejo < Animal < Herviboro
def initialize(name)
@name = name
end
end
conejo = Conejo.new('Bugs Bunny')
conejo.saludar
conejo.dieta
Herviboro.definir

----------------------
Pregunta: ¿Por qué es mejor solución la implementación de Mixin que
mediante Herencia de Herencia?
=end

module Herviboro
    Definir = 'Sólo me alimento de vegetales!'
    def self.definir
      Definir
    end
    def dieta
        "Soy un Herviboro!"
    end
end
class Animal
    def saludar
        "Soy un animal!"
    end
end
class Conejo < Animal
    def initialize(name)
        @name = name
    end
end
conejo = Conejo.new('Bugs Bunny')
conejo.saludar

puts Herviboro.definir
