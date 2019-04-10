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
  #my_hash.each{ |key,str| my_hash[key] = "%#{str}%" }
  def sort
    roster.each do |grade, names|
      roster[grade] = names.sort
    end
  end
    
end