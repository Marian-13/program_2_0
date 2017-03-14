class RowMatrix
  class DoWithRowMatrix
    attr_reader :first_row_matrix, :second_row_matrix

    def initialize(attrs)
      @first_row_matrix  = initialize_first_row_matrix(attrs)
      @second_row_matrix = initialize_second_row_matrix(attrs)
    end

    def call
      raise NotImplementedError
    end

    private
      def initialize_first_row_matrix(attrs)
        attrs[:first_row_matrix]
      end

      def initialize_second_row_matrix(attrs)
        RowMatrix.new(rows: attrs[:second_row_matrix].to_a)
      end
  end
end
