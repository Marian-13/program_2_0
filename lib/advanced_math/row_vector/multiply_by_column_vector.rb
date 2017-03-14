class RowVector < Vector
  class MultiplyByColumnVector < DoWithColumnVector
    def call
      Vector::MultiplyByVector.new(
        first_vector: row_vector,
        second_vector: column_vector
      ).call
    end
  end
end
