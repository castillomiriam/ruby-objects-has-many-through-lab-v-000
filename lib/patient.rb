class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

def self.all
  @@all
end

def new_appointment(doctor, date)
  Appointment.new(doctor, self, date)
end

def doctors
  Appointment.all.select do |appointments|
    
end
