require 'damerau-levenshtein'

class Object
  private

  def method_missing(name, *args)
    dl = DamerauLevenshtein
    ms = methods.map(&:to_s).freeze
    meth = meth = ms.select {|a| dl.distance(name.to_s, a) < 3}.first

    meth ? send(meth, *args) : super
  end
end