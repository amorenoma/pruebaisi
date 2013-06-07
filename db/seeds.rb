# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

eventos = [
  {:fecha => '30-Jun-2013 9:00:00', :asignatura => 'IST', :tipo => 'examen', :aula=> '313', :dificultad => '3'},
  {:fecha => '10-Jun-2013 12:00:00', :asignatura => 'TC', :tipo => 'examen', :aula=> '302', :dificultad => '4'},
  {:fecha => '12-Jun-2013 12:00:00', :asignatura => 'SAT', :tipo => 'examen', :aula=> '302', :dificultad => '4'},
  {:fecha => '1-Jun-2013 15:00:00', :asignatura => 'DAT', :tipo => 'examen', :aula=> '302', :dificultad => '2'}
]  

meses = [
  {:mes => 'Septiembre', :dias=> '30'},
  {:mes => 'Octubre', :dias=> '31'},
  {:mes => 'Noviembre', :dias=> '30'},
  {:mes => 'Diciembre', :dias=> '31'},
  {:mes => 'Enero', :dias=> '31'},
  {:mes => 'Febrero', :dias=> '28'},
  {:mes => 'Marzo', :dias=> '31'},
  {:mes => 'Abril', :dias=> '30'},
  {:mes => 'Mayo', :dias=> '31'},
  {:mes => 'Junio', :dias=> '30'}
]

usuarios = [
  {:nombre => 'Alexander Moreno', :email => 'alejandro@gmail.com' , :rol => 'Alumno' , :key => 'aaa', :nick => 'Flexo'},
  {:nombre => 'Pedro De las Heras', :email => 'pheras@gmail.com' , :rol => 'Profesor' , :key => '1234', :nick => 'Pheras'}
]

Eventos.send(:attr_accessible, :fecha, :asignatura, :tipo, :aula, :dificultad)
eventos.each do |evento|
  Eventos.create!(evento)
end

Meses.send(:attr_accessible, :mes , :dias)
meses.each do |mes|
  Meses.create!(mes)
end

Usuarios.send(:attr_accessible, :nombre , :email, :rol, :key, :nick)
usuarios.each do |usuario|
  Usuarios.create!(usuario)
end
