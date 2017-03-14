class RowVector < Vector
  class AddRowVector < DoWithRowVector
    def call
      result = Vector::AddVector.new(
        first_vector: first_row_vector,
        second_vector: second_row_vector
      ).call

      RowVector.new(elements: result)
    end
  end
end
