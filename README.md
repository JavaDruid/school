# Age of Teacher and Students

## Description:
A school consists of teachers and students, and students are grouped by grades. Write a program to calculate
- a teacher’s age
- the average age of teachers
- the average age of Grade 10 students

## Data:
```ruby
teacher_1 = Teacher.new("James Bond", "1968-04-03") # name, birthday 
teacher_2 = Teacher.new("Michael Zasky", "1978-01-02")

students = [] # array
students << Student.new("John Sully", "1999-10-03", 10) # 10 is grade 
students << Student.new("Michael Page", "1999-05-07", 11)
students << Student.new("Anna Boyle", "1998-12-03", 10)
students << Student.new("Dominic Chan", "1999-09-10", 10)
```

## Output:
```
Teacher 'James Bond' age: 46
Average Teacher age: 41.0
The number of Grade 10 students: 3
Average Grade 10 students age: 15.0
```
