class RowMatrix
  class DoWithColumnVector
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :row_matrix, :column_vector

    attr_from_hash_initializer :row_matrix, :column_vector
  end
end
