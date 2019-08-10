=begin
6) Mixins
Crear una clase Student con un método constructor que recibirá 3 argumentos (nombre, nota1 y
nota2). Cada una de las notas tendrá, por defecto, valor 4 en el caso que no se ingrese una nota
al momento de crear una nueva instancia.
La clase también debe tener una variable de clase llamada quantity la que será iniciada en 0 y
se incrementará en 1 cada vez que se instancie un nuevo objeto.
Crear un módulo Test con un método result. Este método debe calcular el promedio de 2 notas
y si ese promedio es superior a 4 entregrar un mensaje que debe decir "Estudiante aprobado".
En caso contrario, enviará un mensaje "Estudiante reprobado".
Crear un segundo módulo Attendance con un método student_quantity que permita mostrar
en pantalla la cantidad de estudiantes creados.
Añadir a la clase Student el módulo Test como métodos de instancia y el módulo Attendance
como métodos de clase.
Crear 10 objetos de la clase Student y utilizar los métodos creados para saber si los alumnos
están aprobados o no y, finalmente, mostrar el total de alumnos creados.

=end

module Test
  def result(nota1, nota2)
    promedio= (nota1 + nota2)/2.0.to_f
    if promedio > 4
      puts "aprobado"
    else
      puts "desaprobado"
    end
  end
end
module Attendensce
    def self.student_quantity
        puts Student.cantidad_estudiantes
    end
end
class Student
  include Test, Attendensce
  @@quantity = 0
  attr_accessor :nombre, :nota1, :nota2
  def initialize(nombre ="nombre de la prueba", nota1 = 4, nota2 = 4)
    @@quantity += 1
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
  end
  def self.cantidad_estudiantes
    @@quantity

  end
end

10.times do |x|
  alumno = Student.new("Alumno #{x}", rand(1..7), rand(1..7))
  puts "#{alumno.nombre} > NOTAS #{alumno.nota1} y #{alumno.nota2}"
end
puts Attendensce.student_quantity
