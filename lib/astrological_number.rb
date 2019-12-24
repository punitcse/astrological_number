class AstrologicalNumber
  attr_accessor :date_of_birth, :day, :month, :year

  def initialize(dob)
    @date_of_birth = dob
    @day, @month, @year = dob.split('-')
  end

  def self.get_number
    p "Please enter your date_of_birth in dd-mm-yyyy format"
    AstrologicalNumber.new(gets).check_validation
  end

  def calculate_number
    dob = [day, month, year].join.to_i
    total(dob)
  end

  def check_validation
    if valid?
      p "Your Lucky Number is #{calculate_number}"
    else
      p "Invalid format"
      AstrologicalNumber.get_number
    end
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
    p (sum < 10 ? sum : total(sum))
  end
end
