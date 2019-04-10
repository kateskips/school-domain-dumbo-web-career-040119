require 'pry'
class School
  attr_reader :name
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    if !roster.include?(grade) 
      roster[grade] = []
    end
    roster[grade] << name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    roster.each do |grade, names|
      binding.pry
      names.sort 
    end
  end
    
end