class ColumnMatrix
  class MultiplyByRowMatrix < DoWithRowMatrix
    class StandardAlgorithm < MultiplicationAlgorithm
      def call
        size = column_matrix.size

        result = []

        (0...size).each do |i|
          result[i] = []

          (0...size).each do |j|
            result[i] << column_matrix[j].multiply_by_row_vector(row_matrix[i])
          end
        end

        RowMatrix.new(rows: result)
      end
    end
  end
end
