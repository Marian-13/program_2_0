require_relative 'multiply_by_row_matrix/multiplication_algorithm'
require_relative 'multiply_by_row_matrix/standard_algorithm'

class ColumnMatrix
  class MultiplyByRowMatrix < DoWithRowMatrix
    def call
      StandardAlgorithm.new(
        column_matrix: column_matrix,
        row_matrix: row_matrix
      ).call
    end
  end
end
