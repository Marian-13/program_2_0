class ColumnMatrix
  class MultiplyByRowVector < DoWithRowVector
    def call
      result = column_matrix.columns.map do |column_matrix_column|
        column_matrix_column.multiply_by_row_vector(row_vector)
      end

      RowVector.new(elements: result)
    end
  end
end
