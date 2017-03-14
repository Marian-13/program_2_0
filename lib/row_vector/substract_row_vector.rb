class RowVector < Vector
  class SubstractRowVector < DoWithRowVector
    def call
      result = Vector::SubstractVector.new(
        first_vector: first_row_vector,
        second_vector: second_row_vector
      ).call

      RowVector.new(elements: result)
    end
  end
end
