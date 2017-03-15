class ColumnMatrix
  class MultiplyByRowMatrix < DoWithRowMatrix
    class MultiplicationAlgorithm
      include AttrFromHashInitializer
      include AbstractCall

      attr_reader :column_matrix, :row_matrix

      attr_from_hash_initializer :column_matrix, :row_matrix
    end
  end
end
