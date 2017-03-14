class ColumnVector < Vector
  class DoWithColumnVector
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :first_column_vector, :second_column_vector

    attr_from_hash_initializer :first_column_vector, :second_column_vector

    def column_vector_class
      ColumnVector
    end
  end
end
