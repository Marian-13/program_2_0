class RowMatrix
  class DoWithColumnVector
    attr_reader :row_matrix, :column_vector

    def initialize(attrs)
      @row_matrix    = initialize_row_matrix(attrs)
      @column_vector = initialize_column_vector(attrs)
    end

    def call
      raise NotImplementedError
    end

    private
      def initialize_row_matrix(attrs)
        attrs[:row_matrix]
      end

      def initialize_column_vector(attrs)
        ColumnVector.new(elements: attrs[:column_vector].to_a)
      end
  end
end
