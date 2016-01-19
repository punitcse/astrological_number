class AstrologicalNumber
  attr_accessor :date_of_birth, :day, :month, :year

  def self.get_number
    p "Please enter your date_of_birth in dd-mm-yyyy format"
    AstrologicalNumber.new(gets)
  end

  def initialize(dob)
    @date_of_birth = dob
    if valid?
      @day, @month, @year = dob.split('-')
      p "Your Lucky Number is #{calculate_number}"
    else
      p "Please enter date_of_birth in correct format (dd-mm-yyyy) "
      AstrologicalNumber.new(gets)
    end
  end

  def calculate_number
    dob = [day, month, year].join.to_i
    total(dob)
  end

private

  def valid?
    !((date_of_birth =~ /(0[1-9]|[1-2][0-9]|3[0-1])-(0[1-9]|1[0-2])-\d{4}/).nil?)
  end

  def total(d)
    sum = 0
    while d!=0
      rem = d%10
      d = d/10
      sum += rem
    end
    sum < 10 ? sum : total(sum)
  end
end

