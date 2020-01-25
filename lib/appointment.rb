class Appointment
  attr_accessor :date, :doctor, :patient
  
  @@all = []
  
  def initalize(date, patient, doctor)
    @date = date 
    @doctor = doctor
    @patient = patient
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
end