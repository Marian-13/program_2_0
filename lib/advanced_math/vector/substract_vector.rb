class Vector
  class SubstractVector < DoWithVector
    def call(returned_vector_class: vector_class)
      size = first_vector.size

      result = []

      (0...size).each do |i|
        result[i] = first_vector[i] - second_vector[i]
      end

      returned_vector_class.new(elements: result)
    end
  end
end
