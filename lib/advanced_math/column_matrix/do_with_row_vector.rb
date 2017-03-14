class ColumnMatrix
  class DoWithRowVector
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :column_matrix, :row_vector

    attr_from_hash_initializer :column_matrix, :row_vector

    private
      def initialize_row_vector(attrs)
        RowVector.new(elements: attrs[:row_vector].to_a)
      end
  end
end
