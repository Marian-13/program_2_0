class RowMatrix
  class MultiplyByColumnVector < DoWithColumnVector
    def call
      result = row_matrix.rows.map do |row_matrix_row|
        row_matrix_row.multiply_by_column_vector(column_vector)
      end

      ColumnVector.new(elements: result)
    end
  end
end
