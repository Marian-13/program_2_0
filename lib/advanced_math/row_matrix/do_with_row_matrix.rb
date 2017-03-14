# TODO initialize_second_row_matrix
class RowMatrix
  class DoWithRowMatrix
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :first_row_matrix, :second_row_matrix

    attr_from_hash_initializer :first_row_matrix, :second_row_matrix

    private
      def initialize_second_row_matrix(attrs)
        RowMatrix.new(rows: attrs[:second_row_matrix].to_a)
      end
  end
end
