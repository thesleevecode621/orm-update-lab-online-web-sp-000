require_relative "../config/environment.rb"

class Student
attr_accessor :name, :grade, :id
  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
  end
  def self.create_table
    sql = <<-SQL
    CREATE TABLE if not exist students(
         id INTEGER PRIMARY KEY,
         name TEXT,
         grade TEXT
       )
       SQL  
       DB[:conn].execute(sql)

end
