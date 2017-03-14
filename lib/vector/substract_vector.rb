class Vector
  class SubstractVector < DoWithVector
    def call
      first_vector_elements  = first_vector.elements
      second_vector_elements = second_vector.elements
      size                       = first_vector_elements.size

      result = []

      (0...size).each do |i|
        result[i] = first_vector_elements[i] - second_vector_elements[i]
      end

      Vector.new(elements: result)
    end
  end
end
