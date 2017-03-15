# require 'thread'

require_relative '../lib/attr_from_hash_initializer'
require_relative '../lib/abstract_call'
require_relative '../lib/timer'
require_relative '../lib/advanced_math'

# | 1  1  1 |   | 1  1  1 |   |  6  6  6 |
# | 2  2  2 | * | 2  2  2 | = | 12 12 12 |
# | 3  3  3 |   | 3  3  3 |   | 18 18 18 |

# matrix_1 = Matrix.new(elements: [[1, 1, 1], [2, 2, 2], [3, 3, 3]])
# matrix_2 = Matrix.new(elements: [[1, 1, 1], [2, 2, 2], [3, 3, 3]])
#

rows = []
columns = []
size = 500

(0..size).each do |i|
  rows[i] = []
  columns[i] = []

  (0..size).each do |j|
    rows[i][j] = i
    columns[i][j] = i
  end
end

row_matrix_1    = RowMatrix.new(rows: rows)
column_matrix_1 = ColumnMatrix.new(columns: columns)


# row_matrix_1    = RowMatrix.new(rows: [[1, 1, 1], [2, 2, 2], [3, 3, 3]])
# column_matrix_1 = ColumnMatrix.new(columns: [[1, 2, 3], [1, 2, 3], [1, 2, 3]])
#
# column_matrix_2 = ColumnMatrix.new(columns: [[1, 2, 3], [1, 2, 3], [1, 2, 3]])
# row_matrix_2    = RowMatrix.new(rows: [[1, 1, 1], [2, 2, 2], [3, 3, 3]])
#
# puts
# p row_matrix_1[0]
# p row_matrix_1[1]
# p row_matrix_1[2]
#
# puts
# p column_matrix_1[0]
# p column_matrix_1[1]
# p column_matrix_1[2]
# #
# # puts
# # p column_matrix_2[0]
# # p column_matrix_2[1]
# # p column_matrix_2[2]
# #
# # puts
# # p row_matrix_2[0]
# # p row_matrix_2[1]
# # p row_matrix_2[2]
#
timer = Timer.new
result = nil
#
# execution_time = timer.call do
#   result = matrix_1.multiply_by_matrix(matrix_2)
# end
#
# puts
# p execution_time
# p result

execution_time = timer.call do
  result = row_matrix_1.multiply_by_column_matrix(column_matrix_1)
end

puts "\nStandart algorithm:"
puts "Execution time: #{execution_time}"
# p result

execution_time = timer.call do
  result = row_matrix_1.multiply_by_column_matrix(
    column_matrix_1,
    algorithm: :scalar_products,
    threads_amount: 2
  )
end

puts "\nScalar Products algorithm:"
puts "Execution time: #{execution_time}"
# p result

# execution_time = timer.call do
#   result = column_matrix_2.multiply_by_row_matrix(row_matrix_2)
# end
#
# puts
# p execution_time
# p result
