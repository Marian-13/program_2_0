class RowVector < Vector
  class DoWithRowVector
    attr_reader :first_row_vector, :second_row_vector

    def initialize(attrs)
      @first_row_vector  = initialize_first_row_vector(attrs)
      @second_row_vector = initialize_second_row_vector(attrs)
    end

    def call
      raise NotImplementedError
    end

    private
      def initialize_first_row_vector(attrs)
        attrs[:first_row_vector]
      end

      def initialize_second_row_vector(attrs)
        RowVector.new(elements: attrs[:second_row_vector].to_a)
      end
  end
end
