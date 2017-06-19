  require "faker"
  require "csv"
  class Person
    def initialize(first_name = Faker::Name.first_name,
             last_name = Faker::Name.last_name,
             email = Faker::Internet.email,
             phone = Faker::PhoneNumber.phone_number,
             created_at = Faker::Date.forward)
      @first_name = first_name
      @last_name = last_name
      @email = email
      @phone = phone
      @created_at =created_at
    end

    def to_s
        return "#{@first_name}", "#{@last_name}", "#{@email}", "#{@phone}", "#{@created_at}"
      end
  end


  def people(num)
    arry =[]
    number = num.to_i
    number.times do
    arry << Person.new.to_s
  end
  p arry
  end


  class PersonWriter
    def initialize(file, ppl)
      @file = file
      @ppl = ppl
    end

   def create_csv
      CSV.open(@file, 'wb') do |csv|
      @ppl.each {|x| csv << x}
      end
    end
  end


  class PersonParser
    def initialize(file)
      @file = file
    end

   def read
        lines = []
        CSV.foreach(@file) do |row|
        line = Person.new(row[0], row[1], row[2], row[3], row[4])
        lines << line
        end
        p lines
        p lines[0..9]
    end
  end
  people = people(15)
  p person_writer = PersonWriter.new("people.csv", people)
  person_writer.create_csv


  parser = PersonParser.new('people.csv')
  people = parser.read
