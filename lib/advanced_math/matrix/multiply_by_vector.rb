# TODO Remove Magic 0.0
class Matrix
  class MultiplyByVector < DoWithVector
    def call
      size = matrix.size

      result = []

      (0...size).each do |i|
        result[i] = 0.0

        (0...size).each do |j|
          result[i] += matrix[i][j] * vector[i]
        end
      end

      Vector.new(elements: result)
    end
  end
end
