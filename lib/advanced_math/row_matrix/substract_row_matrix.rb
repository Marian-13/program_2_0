class RowMatrix
  class SubstractRowMatrix < DoWithRowMatrix
    def call
      first_matrix_rows  = first_row_matrix.rows
      second_matrix_rows = second_row_matrix.rows
      size               = first_matrix_rows.size

      result = []

      (0...size).each do |i|
        result[i] = first_matrix_rows[i].substract_row_vector(
          second_matrix_rows[i]
        )
      end

      RowMatrix.new(rows: result)
    end
  end
end
