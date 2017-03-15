class RowMatrix
  class MultiplyByColumnMatrix < DoWithColumnMatrix
    class ScalarProductsAlgorithm < MultiplicationAlgorithm
      def call(opts = {})
        free_threads_amount = fetch_threads_amount(opts)
        size = row_matrix.size

        result = []

        (0...size).each do |i|
          result[i] = []

          Thread.new {
            (0...size).each do |j|
              result[i][j] = row_matrix[j].multiply_by_column_vector(column_matrix[i])
            end
          }.join
        end

        ColumnMatrix.new(columns: result)
      end

      private
        def fetch_threads_amount(opts)
          opts[:threads_amount] || default_threads_amount
        end

        def default_threads_amount
          size = row_matrix.size
          size**2
        end
    end
  end
end
