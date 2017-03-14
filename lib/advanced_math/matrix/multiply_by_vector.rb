class Matrix
  class MultiplyByVector < DoWithVector
    def call
      matrix_elements = matrix.elements
      vector_elements = vector.elements
      size            = matrix_elements.size

      result = []

      (0...size).each do |i|
        result[i] = 0.0

        (0...size).each do |j|
          result[i] += matrix_elements[i][j] * vector_elements[i]
        end
      end

      Vector.new(elements: result)
    end
  end
end
