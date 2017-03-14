require_relative 'do_with_matrix/algorithm'

class Matrix
  class DoWithMatrix
    attr_reader :first_matrix, :second_matrix

    def initialize(attrs)
      @first_matrix  = initialize_first_matrix(attrs)
      @second_matrix = initialize_second_matrix(attrs)
    end

    def call(args = nil)
      raise NotImplementedError
    end

    private
      def initialize_first_matrix(attrs)
        attrs[:first_matrix]
      end

      def initialize_second_matrix(attrs)
        Matrix.new(elements: attrs[:second_matrix].to_a)
      end
  end
end
