class ColumnMatrix
  class DoWithColumnMatrix
    attr_reader :first_column_matrix, :second_column_matrix

    def initialize(attrs)
      @first_column_matrix  = initialize_first_column_matrix(attrs)
      @second_column_matrix = initialize_second_column_matrix(attrs)
    end

    def call
      raise NotImplementedError
    end

    private
      def initialize_first_column_matrix(attrs)
        attrs[:first_column_matrix]
      end

      def initialize_second_column_matrix(attrs)
        ColumnMatrix.new(columns: attrs[:second_column_matrix].to_a)
      end
  end
end
