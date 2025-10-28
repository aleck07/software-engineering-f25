#-------------------------------------------------------------
# Exercise 5 Part 1 (Exception Handling)
#-------------------------------------------------------------

class MentalState
  def auditable?
    # true if the external service is online, otherwise false
  end
  def audit!
    # Could fail if external service is offline
  end
  def do_work
    # Amazing stuff...
  end
end

def audit_sanity(bedtime_mental_state)
  return 0 unless bedtime_mental_state.auditable?
  if bedtime_mental_state.audit!.ok?
    MorningMentalState.new(:ok)
  else 
    MorningMentalState.new(:not_ok)
  end
end

begin 
  new_state = audit_sanity(bedtime_mental_state)
rescue Exception => e
  raise Exception.new("External service is offline")
end

#-------------------------------------------------------------
# Exercise 5 Part 2 (Don't Return Null / Null Object Pattern)
#-------------------------------------------------------------

class BedtimeMentalState < MentalState ; end

class MorningMentalState < MentalState ; end

class NullMentalState < MentalState
  def do_work
    # nothin in here
  end
  
  def auditable?
    false
  end
  
  def audit!
    self
  end
end

def audit_sanity(bedtime_mental_state)
  return NullMentalState.new unless bedtime_mental_state.auditable?
  if bedtime_mental_state.audit!.ok?
    MorningMentalState.new(:ok)
  else 
    MorningMentalState.new(:not_ok)
  end
end

new_state = audit_sanity(bedtime_mental_state)
new_state.do_work

#-------------------------------------------------------------
# Exercise 5 Part 3 (Wrapping APIs)
#-------------------------------------------------------------

require 'candy_service'

class CandyMachine
  def initialize
    @service = CandyService.new
  end

  def ready?
    # Wrap the external API call to check if machine is ready
    @service.ready?
  end

  def prepare
    # Wrap the external API setup calls
    @service.prepare
  end

  def make!
    # Wrap the external API call to make candy
    @service.make!
  end
end

machine = CandyMachine.new
machine.prepare

if machine.ready?
  machine.make!
else
  puts "sadness"
end