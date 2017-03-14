class Vector
  class DoWithVector
    attr_reader :first_vector, :second_vector

    def initialize(attrs)
      @first_vector  = initialize_first_vector(attrs)
      @second_vector = initialize_second_vector(attrs)
    end

    def call
      raise NotImplementedError
    end

    private
      def initialize_first_vector(attrs)
        attrs[:first_vector]
      end

      def initialize_second_vector(attrs)
        Vector.new(elements: attrs[:second_vector].to_a)
      end
  end
end
