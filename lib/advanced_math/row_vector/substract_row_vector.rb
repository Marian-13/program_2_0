class RowVector < Vector
  class SubstractRowVector < DoWithRowVector
    def call
      result = Vector::SubstractVector.new(
        first_vector: first_row_vector,
        second_vector: second_row_vector
      ).call(
        returned_vector_class: row_vector_class
      )
    end
  end
end
