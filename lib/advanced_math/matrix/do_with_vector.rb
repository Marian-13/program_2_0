class Matrix
  class DoWithVector
    attr_reader :matrix, :vector

    def initialize(attrs)
      @matrix = initialize_matrix(attrs)
      @vector = initialize_vector(attrs)
    end

    def call
      raise NotImplementedError
    end

    private
      def initialize_matrix(attrs)
        attrs[:matrix]
      end

      def initialize_vector(attrs)
        Vector.new(elements: attrs[:vector].to_a)
      end
  end
end
