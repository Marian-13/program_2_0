class RowMatrix
  class DoWithRowMatrix
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :first_row_matrix, :second_row_matrix

    attr_from_hash_initializer :first_row_matrix, :second_row_matrix
  end
end
