class ColumnMatrix
  class DoWithColumnMatrix
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :first_column_matrix, :second_column_matrix

    attr_from_hash_initializer :first_column_matrix, :second_column_matrix
  end
end
