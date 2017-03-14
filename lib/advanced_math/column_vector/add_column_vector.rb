class ColumnVector < Vector
  class AddColumnVector < DoWithColumnVector
    def call
      Vector::AddVector.new(
        first_vector: first_column_vector,
        second_vector: second_column_vector
      ).call(
        returned_vector_class: column_vector_class
      )
    end
  end
end
