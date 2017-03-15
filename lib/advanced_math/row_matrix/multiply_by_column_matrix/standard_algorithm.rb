class RowMatrix
  class MultiplyByColumnMatrix < DoWithColumnMatrix
    class StandardAlgorithm < MultiplicationAlgorithm
      def call
        size = row_matrix.size

        result = []

        (0...size).each do |i|
          result[i] = []

          (0...size).each do |j|
            result[i] << row_matrix[j].multiply_by_column_vector(column_matrix[i])
          end
        end

        ColumnMatrix.new(columns: result)
      end
    end
  end
end
