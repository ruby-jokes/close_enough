require 'damerau-levenshtein'

class Object
  private

  def method_missing(name, *args, &block)
    dl = DamerauLevenshtein
    ms = methods.map(&:to_s)

    meth = ms.min_by {|possible| dl.distance(name.to_s, possible)}
    meth = false unless dl.distance(name.to_s, meth) < 3

    meth ? send(meth, *args, &block) : super
  end
end
