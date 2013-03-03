module CloseEnough
  module Extensions
    module ClassMethods

    end

    module InstanceMethods
      private

      def nearest_method(name)
        dl = DamerauLevenshtein
        ms = methods.map(&:to_s)
        meth = ms.min_by {|possible| dl.distance(name.to_s, possible)}
        unless dl.distance(name.to_s, meth) < 3
          return false
        else
          warn "[CloseEnough] #{name.to_s} not found, using #{meth.to_s} instead"
          return meth
        end
      end

      def method_missing(name, *args, &block)
        meth = nearest_method(name)

        meth ? send(meth, *args, &block) : super
      end
    end

    def self.included(receiver)
      receiver.extend         ClassMethods
      receiver.send :include, InstanceMethods
    end
  end

end
