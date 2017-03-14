require_relative '../lib/attr_from_hash_initializer'
require_relative '../lib/abstract_call'
require_relative '../lib/advanced_math'

# TODO Matrix config
# TODO Abstractions
# TODO Elements
# TODO require_relative
# TODO initialize
# TODO VectorParams MatrixParams... , update DoWith, reject to_h ???
# TODO add, substract, multiply_by vector, array ..

# class Hello
#   include AttrFromHashInitializer
#
#   attr_reader :first, :second, :third
#   attr_from_hash_initializer :first, :second, :third
# end
#
# hello_hash = { first: 1.0, second: 2.0, third: 3.0 }
# hello = Hello.new(hello_hash)
# p hello.first
# p hello.second
# p hello.third
# p Hello.private_instance_methods
# # p Hello.private_methods
# # p Hello.instance_methods

# p vector = Vector.new(elements: [1, 1])
# p column_vector = ColumnVector.new(elements: [1, 1])
# p row_vector = RowVector.new(elements: [1, 1])

# p matrix = Matrix.new(elements: [[1, 1], [2, 2]])
# p column_matrix = ColumnMatrix.new(columns: [[1, 1], [2, 2]])
# p row_matrix = RowMatrix.new(rows: [[1, 1], [2, 2]])

# p element = Element.new(value: 1)

# p vector_do_with_vector = Vector::DoWithVector.new(
#   first_vector: [1, 1],
#   second_vector: [2, 2]
# )
# p vector_do_with_transposed_vector = Vector::DoWithTransposedVector.new(
#   column_vector: [1, 1],
#   row_vector: [2, 2]
# )
#
# p row_vector_do_with_column_vector = RowVector::DoWithColumnVector.new(
#   row_vector: [1, 1],
#   column_vector: [2, 2]
# )
#
# p row_vector_do_with_row_vector = RowVector::DoWithRowVector.new(
#   first_row_vector: [1, 1],
#   second_row_vector: [2, 2]
# )

# p column_vector_do_with_row_vector = ColumnVector::DoWithRowVector.new(
#   column_vector: [1, 1],
#   row_vector: [2, 2]
# )
#
# p column_vector_do_with_column_vector = ColumnVector::DoWithColumnVector.new(
#   first_column_vector: [1, 1],
#   second_column_vector: [2, 2]
# )

# p matrix_do_with_matrix = Matrix::DoWithMatrix.new(
#   first_matrix: [[1, 1], [2, 2]],
#   second_matrix: [[1, 1], [2, 2]]
# )
#
# p matrix_do_with_vector = Matrix::DoWithVector.new(
#   matrix: [[1, 1], [2, 2]],
#   vector: [1, 1]
# )

# p row_matrix_do_with_row_matrix = RowMatrix::DoWithRowMatrix.new(
#   first_row_matrix: [[1, 1], [2, 2]],
#   second_row_matrix: [[1, 1], [2, 2]]
# )
#
# p row_matrix_do_with_column_vector = RowMatrix::DoWithColumnVector.new(
#   row_matrix: [[1, 1], [2, 2]],
#   column_vector: [1, 1]
# )

p column_matrix_do_with_column_matrix = ColumnMatrix::DoWithColumnMatrix.new(
  first_column_matrix: [[1, 1], [2, 2]],
  second_column_matrix: [[1, 1], [2, 2]]
)

p column_matrix_do_with_row_vector = ColumnMatrix::DoWithRowVector.new(
  column_matrix: [[1, 1], [2, 2]],
  row_vector: [1, 1]
)
