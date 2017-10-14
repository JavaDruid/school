# Author: Viktor Mazur
# Date: 13-Oct-2017

require 'date'

module School

	class Person
		def initialize(name, dateOfBirth)
			@name = name
			@dob  = Date.parse(dateOfBirth)
		end
		
		#calculates the age based on date of birth
		#(by taking into account differences between days and months now and the DoB)
		def age
			today = Date.today
			day_diff = today.day - @dob.day
			month_diff = today.month - @dob.month - (day_diff < 0 ? 1 : 0)
			today.year - @dob.year - (month_diff < 0 ? 1 : 0)
		end
	end
	
	
	#does not have any extra functionality - just structural decision
	class Teacher < Person
	end
	
	
	class Student < Person
		def initialize(name, dateOfBirth, grade)
			@name = name
			@dob  = Date.parse(dateOfBirth)
			@grade = grade
		end
		
		def grade
			@grade
		end
	end
	
	
	#go through given array and fill new hash with key => value pairs as follows:
	#existing grade as integer => number of students with such grade
	#finally return value for grade 10
	def self.numOfGrade10Students(array)
		grades = array.each_with_object(Hash.new(0)) { |student,grades| grades[student.grade] += 1 }
		grades[10]
	end
	
	#for each student in given array check their grade:
	#if it is 10, add it to the total and increase the counter
	#finally divide the total by number of matching students
	def self.averageAgeInGrade10(array)
		count = 0
		totalAge = array.inject(0.0) do |total, student|
			if student.grade == 10
				count += 1
				total + student.age
			else
				total
			end
		end
		totalAge / count
	end
	
	
	#provided data
	teacher_1 = Teacher.new("James Bond", "1968-04-03") # name, birthday 
	teacher_2 = Teacher.new("Michael Zasky", "1978-01-02")
	
	students = [] # array
	students << Student.new("John Sully", "1999-10-03", 10) # 10 is grade 
	students << Student.new("Michael Page", "1999-05-07", 11)
	students << Student.new("Anna Boyle", "1998-12-03", 10)
	students << Student.new("Dominic Chan", "1999-09-10", 10)
	
	
	#program output 1
	t1a = teacher_1.age
	puts "Teacher 'James Bond' age: #{ t1a }"
	
	#program output 2
	t2a = teacher_2.age
	puts "Average Teacher age: #{ (t1a + t2a).to_f / 2 }"
	
	#program output 3
	g10studs = numOfGrade10Students(students)
	puts "The number of Grade 10 students: #{ g10studs }"
	
	#program output 4
	g10averageAge = averageAgeInGrade10(students)
	puts "Average Grade 10 students age: #{ g10averageAge }"
	
end