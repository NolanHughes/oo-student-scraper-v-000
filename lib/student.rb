require 'pry'
class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    @name = student_hash[:name]
    @location = student_hash[:location]
    save
  end

  def save
    @@all << self
  end

  def self.create_from_collection(students_array)
    student_hash = {}
    student_array = []

    students_array.each do |hash|
      student_instance_hash = {}

      student_instance_hash[:name] = hash[:name]
      student_instance_hash[:location] = hash[:location]

      student_array << student_instance_hash
      # Student.new(student_hash)
      # save
    end

    student_array.each do |hash|
      Student.new(hash)
    end
  end

  def add_student_attributes(attributes_hash)

  end

  def self.all
    @@all
  end
end
