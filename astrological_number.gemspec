Gem::Specification.new do |s|
  s.name               = "astrological-number"
  s.version            = "0.0.1"
  s.default_executable = "astrological-number"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Punit Jain"]
  s.date = %q{2016-01-18}
  s.description = %q{Get the astrological number from date of birth}
  s.email = %q{jainpunit786@gmail.com}
  s.license = 'MIT'
  s.files = ["lib/astrological_number.rb"]
  s.homepage = %q{http://rubygems.org/gems/astrological-number}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{astrological number}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

