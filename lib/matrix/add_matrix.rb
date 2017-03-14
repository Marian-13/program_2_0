class Matrix
  class AddMatrix < DoWithMatrix
    def call(args = nil)
      first_matrix_elements  = first_matrix.elements
      second_matrix_elements = second_matrix.elements
      size                   = first_matrix_elements.size

      result = []

      (0...size).each do |i|
        result[i] = []

        (0...size).each do |j|
          result[i][j] = first_matrix_elements[i][j] + second_matrix_elements[i][j]
        end
      end

      Matrix.new(elements: result)
    end
  end
end
