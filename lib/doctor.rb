class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
end

def self.all
  @@all
end

def new_appointment(patient, date)
  Patient.new(date, self, appointments)
end

def appointments
  Appointment.all.select do |doctor|
    patient.doctor == self
end
end

def patients
  Appointment.all.map do |appointments|
    appointments.doctor
end
end

end
