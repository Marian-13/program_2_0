class Matrix
  class MultiplyByMatrix < DoWithMatrix
    class StandardAlgorithm < DoWithMatrix::Algorithm
      def call
        first_matrix_elements  = first_matrix.elements
        second_matrix_elements = second_matrix.elements
        size                   = first_matrix_elements.size

        result = []

        (0...size).each do |k|
          result[k] = []

          (0...size).each do |i|
            result[k][i] = 0.0

            (0...size).each do |j|
              result[k][i] += first_matrix_elements[k][j] * second_matrix_elements[j][k]
            end
          end
        end

        Matrix.new(elements: result)
      end
    end
  end
end
