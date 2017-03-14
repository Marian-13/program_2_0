# TODO initialize_column_vector
class RowMatrix
  class DoWithColumnVector
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :row_matrix, :column_vector

    attr_from_hash_initializer :row_matrix, :column_vector

    private
      def initialize_column_vector(attrs)
        ColumnVector.new(elements: attrs[:column_vector].to_a)
      end
  end
end
