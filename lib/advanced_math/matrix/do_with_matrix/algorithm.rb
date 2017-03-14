class Matrix
  class DoWithMatrix
    class Algorithm
      attr_reader :first_matrix, :second_matrix

      def initialize(attrs)
        @first_matrix  = initialize_first_matrix(attrs)
        @second_matrix = initialize_second_matrix(attrs)
      end

      def call
        raise NotImplementedError
      end

      private
        def initialize_first_matrix(attrs)
          attrs[:first_matrix]
        end

        def initialize_second_matrix(attrs)
          attrs[:second_matrix]
        end
    end
  end
end
