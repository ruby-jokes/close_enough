require 'damerau-levenshtein'
require_relative 'close_enough/extensions'

module CloseEnough

end

class Object
  include CloseEnough::Extensions
end
