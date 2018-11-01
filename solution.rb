#atributos = variables
#comportamientos = métodos

# class Oliva
#   attr_accessor :tamaño, :color, :pelaje, :amorosa
#
#   def initialize(tamaño, color, pelaje, amorosa) #va a incluir mis atributos
#       @tamaño = tamaño
#       @color = color
#       @pelaje = pelaje
#       @amorosa = amorosa
#   end
#
#   def crecer(num)
#     num = 0
#     while num < 5
#       num = num + 1
#       puts "Estoy viva"
#     end
#       puts "Morí, voy a verme con Tita"
#   end
# end
#
# puts oliva = Oliva.new("medio", "blanco-negro", "abundante", true)
# # puts oliva.tamaño
# # puts oliva.color
# # puts oliva.pelaje
# # puts oliva.amorosa
# #
# oliva.crecer(1)


class Manager
  def initialize(name, email, password, salary, workers)
    @name = name
    @email = email
    @password = password
    @salary = salary
    @workers = workers

    def report(hours)
      hours += hours
    end
  end
end

class Worker
  def initialize(name, email, password, salary, hours)
    @name = name
    @email = email
    @password = password
    @salary = salary
    @hours = hours
  end

  def work(hours)
    hours = hours + hours
  end
end

# p manager = Manager.new("Carolina", "caro@gmail.com", 12345, 5000000, 2)
# p manager.report(1)
#
p worker = Worker.new("Pedro", "pedro@gmail.com", 54321, 500000, 5)
p worker.work(5)



class Manager
   attr_accessor :name,:email,:password,:salary,:workers
   def initialize (name,email,password,salary,workers)
       @name = name
       @email = email
       @password = password
       @salary = salary
       @workers = workers
   end

   def reports()
       hworks = 0
       @workers.each do |w|
           hworks += w.hours #acá guardan la variable de  las horas en hours
       end
       hworks # se retorna
   end
end

class Worker
   attr_accessor :name,:email,:password,:salary,:hours

   def self.create_work(name,email,password,salary,hours)
       Worker.new(name,email,password,salary,hours)
   end

   def initialize (name,email,password,salary,hours)
       @name = name
       @email = email
       @password = password
       @salary = salary
       @hours = hours
   end

   def work(hour)
       @hours += hour
   end
end

Workers = []
Workers[0] = Worker.create_work("Empl1","correo1","123",1000,0)
Workers[1] = Worker.create_work("Empl2","correo2","111",1100,0)
Workers[2] = Worker.create_work("Empl3","correo3","222",1200,0)
p Workers[0].work(1)
p Workers[0].work(1)
p Workers[1].work(3)
p Workers[1].work(1)
p Workers[2].work(2)
p Workers[2].work(2)
m1 = Manager.new("Manager1","correo1","123",2000,Workers)
p "El manager #{m1.name} tiene que pagar #{m1.reports} horas trabajadas"
