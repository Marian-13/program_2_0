# TODO initialize_second_row_vector
class RowVector < Vector
  class DoWithRowVector
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :first_row_vector, :second_row_vector

    attr_from_hash_initializer :first_row_vector, :second_row_vector

    def row_vector_class
      RowVector
    end
  end
end
