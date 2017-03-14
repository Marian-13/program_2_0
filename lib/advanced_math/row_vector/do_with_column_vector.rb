# TODO initialize_column_vector
class RowVector < Vector
  class DoWithColumnVector < Vector::DoWithTransposedVector
    private
      def initialize_column_vector(attrs)
        ColumnVector.new(elements: attrs[:row_vector].to_a)
      end
  end
end
