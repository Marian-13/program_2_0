require_relative 'do_with_matrix/algorithm'

# TODO initialize_second_matrix
class Matrix
  class DoWithMatrix
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :first_matrix, :second_matrix

    attr_from_hash_initializer :first_matrix, :second_matrix

    private
      def initialize_second_matrix(attrs)
        Matrix.new(elements: attrs[:second_matrix].to_a)
      end
  end
end
