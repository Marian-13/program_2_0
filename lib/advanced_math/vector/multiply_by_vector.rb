# TODO Remove Magic 0.0
# TODO Update return value
class Vector
  class MultiplyByVector < DoWithVector
    def call
      size = first_vector.size

      result = 0.0

      (0...size).each do |i|
        result += first_vector[i] * second_vector[i]
      end

      result
    end
  end
end
