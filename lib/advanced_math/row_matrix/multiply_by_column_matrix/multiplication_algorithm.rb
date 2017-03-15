class RowMatrix
  class MultiplyByColumnMatrix < DoWithColumnMatrix
    class MultiplicationAlgorithm
      include AttrFromHashInitializer
      include AbstractCall

      attr_reader :row_matrix, :column_matrix

      attr_from_hash_initializer :row_matrix, :column_matrix
    end
  end
end
