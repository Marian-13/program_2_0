class ColumnMatrix
  class AddColumnMatrix < DoWithColumnMatrix
    def call
      size = first_column_matrix.size

      result = []

      (0...size).each do |i|
        result[i] = first_column_matrix[i].add_column_vector(
          second_column_matrix[i]
        )
      end

      ColumnMatrix.new(columns: result)
    end
  end
end
