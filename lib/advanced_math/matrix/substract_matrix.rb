class Matrix
  class SubstractMatrix < DoWithMatrix
    def call
      size = first_matrix.size

      result = []

      (0...size).each do |i|
        result[i] = []

        (0...size).each do |j|
          result[i][j] = first_matrix[i][j] - second_matrix[i][j]
        end
      end

      Matrix.new(elements: result)
    end
  end
end
