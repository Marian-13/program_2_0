class ColumnMatrix
  class DoWithRowVector
    attr_reader :column_matrix, :row_vector

    def initialize(attrs)
      @column_matrix = initialize_column_matrix(attrs)
      @row_vector    = initialize_row_vector(attrs)
    end

    def call
      raise NotImplementedError
    end

    private
      def initialize_column_matrix(attrs)
        attrs[:column_matrix]
      end

      def initialize_row_vector(attrs)
        RowVector.new(elements: attrs[:row_vector].to_a)
      end
  end
end
