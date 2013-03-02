require 'damerau-levenshtein'
require 'close_enough/extensions'

module CloseEnough

end

class Object
  include CloseEnough::Extensions
end
