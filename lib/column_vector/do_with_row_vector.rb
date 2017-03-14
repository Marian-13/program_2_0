class ColumnVector < Vector
  class DoWithRowVector < Vector::DoWithTransposedVector
    private
      def initialize_row_vector(attrs)
        RowVector.new(elements: attrs[:row_vector].to_a)
      end
  end
end
