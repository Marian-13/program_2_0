class Matrix
  class MultiplyByMatrix < DoWithMatrix
    class StandardAlgorithm < DoWithMatrix::Algorithm
      def call
        size  = first_matrix.size

        result = []

        (0...size).each do |k|
          result[k] = []

          (0...size).each do |i|
            result[k][i] = 0.0

            (0...size).each do |j|
              result[k][i] += first_matrix[k][j] * second_matrix[j][k]
            end
          end
        end

        Matrix.new(elements: result)
      end
    end
  end
end
