class RowVector < Vector
  class DoWithColumnVector < Vector::DoWithTransposedVector
    private
      def intialize_column_vector(attrs)
        ColumnVector.new(elements: attrs[:row_vector].to_a)
      end
  end
end
