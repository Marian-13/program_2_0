class Vector
  class DoWithVector
    include AttrFromHashInitializer

    attr_reader :first_vector, :second_vector

    attr_from_hash_initializer :first_vector, :second_vector

    def call
      raise NotImplementedError
    end

    private
      def initialize_second_vector(attrs)
        Vector.new(elements: attrs[:second_vector].to_a)
      end
  end
end
