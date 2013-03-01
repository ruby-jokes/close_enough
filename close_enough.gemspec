

Gem::Specification.new do |s|
  s.name = 'close_enough'
  s.version = '0.0.1'
  s.summary = 'Mistyping methods? Not a problem.'
  s.description = 'TODO'
  s.authors = ["Micah Gates", "Jason Lewis"]
  s.email = ["github@mgates.com", "jason@decomplecting.org"]
  s.files = [ 'lib/close_enough.rb']
  s.homepage = "https://github.com/ruby-jokes/close_enough"
  s.add_runtime_dependency 'damerau-levenshtein', '~> 0.5.4'
  s.add_development_dependency 'rspec', '~> 2.9.0'
  s.add_development_dependency 'rake', '~> 0.9.2'
  s.test_files  = Dir.glob('spec/*_spec.rb')
  s.license     = 'GPLv3'


end