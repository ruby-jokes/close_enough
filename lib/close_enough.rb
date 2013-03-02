require 'damerau-levenshtein'

class Object
  private

  def method_missing(name, *args)
    dl = DamerauLevenshtein
    ms = methods.map(&:to_s).freeze

    meth = ms.inject([]) do |matches, a|
      distance = dl.distance(name.to_s, a)
      matches << [distance, a] if distance < 3
      matches
    end.sort_by(&:first).first

    meth ? send(meth[1], *args) : super
  end
end
