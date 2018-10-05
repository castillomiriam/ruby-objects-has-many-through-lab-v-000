class Appointment
attr_accessor :name

@@all = []

def self.all
@@all
end

def initialize("Monday, August 1st", patient, doctor)