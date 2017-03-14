class ColumnMatrix
  class DoWithRowVector
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :column_matrix, :row_vector

    attr_from_hash_initializer :column_matrix, :row_vector
  end
end
