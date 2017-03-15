require_relative 'multiply_by_column_matrix/multiplication_algorithm'
require_relative 'multiply_by_column_matrix/standard_algorithm'
require_relative 'multiply_by_column_matrix/scalar_products_algorithm'

class RowMatrix
  class MultiplyByColumnMatrix < DoWithColumnMatrix
    def call(opts = {})
      algorithm_name = fetch_algorithm_name(opts)

      puts "#{algorithm_name}"

      self.send("perform_#{algorithm_name}")
    end

    private
      def perform_standard
        StandardAlgorithm.new(
          row_matrix: row_matrix,
          column_matrix: column_matrix
        ).call
      end

      def perform_scalar_products
        ScalarProductsAlgorithm.new(
          row_matrix: row_matrix,
          column_matrix: column_matrix
        ).call
      end

      def fetch_algorithm_name(opts)
        opts[:algorithm] || default_algorithm
      end

      def default_algorithm
        :standard
      end
  end
end
