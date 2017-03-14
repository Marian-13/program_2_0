class ColumnVector < Vector
  class DoWithColumnVector
    attr_reader :first_column_vector, :second_column_vector

    def initialize(attrs)
      @first_column_vector  = initialize_first_column_vector(attrs)
      @second_column_vector = initialize_second_column_vector(attrs)
    end

    def call
      raise NotImplementedError
    end

    private
      def initialize_first_column_vector(attrs)
        attrs[:first_column_vector]
      end

      def initialize_second_column_vector(attrs)
        ColumnVector.new(elements: attrs[:second_column_vector].to_a)
      end
  end
end
