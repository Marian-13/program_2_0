require_relative 'multiply_by_matrix/standard_algorithm'

# TODO algorithms
class Matrix
  class MultiplyByMatrix < DoWithMatrix
    attr_reader :algorithm

    def initialize(attrs)
      super
      @algorithm = initialize_algorithm(attrs)
    end

    def call
      algorithm.call
    end

    def default_algorithm
      StandardAlgorithm.new(first_matrix: first_matrix,
                            second_matrix: second_matrix)
    end

    private
      def initialize_algorithm(attrs)
        attrs[:algorithm] || default_algorithm
      end
  end
end
