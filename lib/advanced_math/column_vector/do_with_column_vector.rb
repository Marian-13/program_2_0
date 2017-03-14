# TODO initialize_second_column_vector
class ColumnVector < Vector
  class DoWithColumnVector
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :first_column_vector, :second_column_vector

    attr_from_hash_initializer :first_column_vector, :second_column_vector

    private
      def initialize_second_column_vector(attrs)
        ColumnVector.new(elements: attrs[:second_column_vector].to_a)
      end
  end
end
