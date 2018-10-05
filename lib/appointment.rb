class Appointment
attr_accessor :patient, :doctor

@@all = []

def self.all
@@all
end

def initialize(date, patient, doctor)
  @date = "Monday, August 1st"
  @patient = patient
  @doctor = doctor
  @@all << self
end
end
