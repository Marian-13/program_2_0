class Vector
  class DoWithTransposedVector
    attr_reader :column_vector, :row_vector

    def initialize(attrs)
      @column_vector = initialize_column_vector(attrs)
      @row_vector    = initialize_row_vector(attrs)
    end

    def call
      raise NotImplementedError
    end

    private
      def initialize_column_vector(attrs)
        attrs[:column_vector]
      end

      def initialize_row_vector(attrs)
        attrs[:row_vector]
      end
  end
end
