class RowMatrix
  class MultiplyByColumnVector < DoWithColumnVector
    def call
      matrix_rows = row_matrix.rows

      result = matrix_rows.map do |matrix_row|
        matrix_row.multiply_by_column_vector(column_vector)
      end

      ColumnVector.new(elements: result)
    end
  end
end
