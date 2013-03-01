require 'rake'

Gem::Specification.new do |s|
  s.name = 'close_enough'
  s.version = '0.0.2'
  s.summary = 'Mistyping methods? Not a problem.'
  s.description = 'close_enough patches method_missing to calculate the Damerau-Levenshtein distance between what you typed, and the existing methods on the current receiver. So typos are no longer a big deal.'
  s.authors = ["Micah Gates", "Jason Lewis"]
  s.email = ["github@mgates.com", "jason@decomplecting.org"]
  s.files = FileList['lib/*.rb', 'spec/*.rb'].to_a
  s.homepage = "https://github.com/ruby-jokes/close_enough"
  s.add_runtime_dependency 'damerau-levenshtein', '~> 0.5.4'
  s.add_development_dependency 'rspec', '~> 2.9.0'
  s.add_development_dependency 'rake', '~> 0.9.2'
  s.license     = 'GPLv3'


end