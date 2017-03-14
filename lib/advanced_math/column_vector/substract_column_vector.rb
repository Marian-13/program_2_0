class ColumnVector < Vector
  class SubstractColumnVector < DoWithColumnVector
    def call
      result = Vector::SubstractVector.new(
        first_vector: first_column_vector,
        second_vector: second_column_vector
      ).call

      ColumnVector.new(elements: result)
    end
  end
end
