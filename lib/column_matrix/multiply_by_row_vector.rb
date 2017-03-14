class ColumnMatrix
  class MultiplyByRowVector < DoWithRowVector
    def call
      matrix_columns = column_matrix.columns

      result = matrix_columns.map do |matrix_column|
        matrix_column.multiply_by_row_vector(row_vector)
      end

      RowVector.new(elements: result)
    end
  end
end
