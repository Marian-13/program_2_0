class ColumnMatrix
  class SubstractColumnMatrix < DoWithColumnMatrix
    def call
      first_matrix_columns  = first_column_matrix.columns
      second_matrix_columns = second_column_matrix.columns
      size                  = first_matrix_columns.size

      result = []

      (0...size).each do |i|
        result[i] = first_matrix_columns[i].substract_column_vector(
          second_matrix_columns[i]
        )
      end

      ColumnMatrix.new(columns: result)
    end
  end
end
