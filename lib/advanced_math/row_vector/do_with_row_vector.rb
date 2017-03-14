# TODO initialize_second_row_vector
class RowVector < Vector
  class DoWithRowVector
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :first_row_vector, :second_row_vector

    attr_from_hash_initializer :first_row_vector, :second_row_vector

    private
      def initialize_second_row_vector(attrs)
        RowVector.new(elements: attrs[:second_row_vector].to_a)
      end
  end
end
