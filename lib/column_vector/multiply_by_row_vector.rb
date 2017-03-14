class ColumnVector < Vector
  class MultiplyByRowVector < DoWithRowVector
    def call
      Vector::MultiplyByVector.new(
        first_vector: column_vector,
        second_vector: row_vector
      ).call
    end
  end
end
