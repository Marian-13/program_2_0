class RowMatrix
  class AddRowMatrix < DoWithRowMatrix
    def call
      size = first_row_matrix.size

      result = []

      (0...size).each do |i|
        result[i] = first_row_matrix[i].add_row_vector(
          second_row_matrix[i]
        )
      end

      RowMatrix.new(rows: result)
    end
  end
end
