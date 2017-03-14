# TODO initialize_vector
class Matrix
  class DoWithVector
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :matrix, :vector

    attr_from_hash_initializer :matrix, :vector

    private
      def initialize_vector(attrs)
        Vector.new(elements: attrs[:vector].to_a)
      end
  end
end
