class Doctor
  attr_accessor :name, :patient, :date

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
end

def self.all
  @@all
end

def new_appointment(patient, date)
  Patient.new(date, patient, self)
end

def appointments
  Appointment.all.select do |appointment|
    patient.doctor == self
end
end

def patients
  Appointment.all.map do |appointments|
    appointments.doctor
end
end

end
