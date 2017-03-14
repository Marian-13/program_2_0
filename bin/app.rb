require_relative '../lib/element'
require_relative '../lib/vector'
require_relative '../lib/column_vector'
require_relative '../lib/row_vector'
require_relative '../lib/matrix'
require_relative '../lib/column_matrix'
require_relative '../lib/row_matrix'

# TODO Matrix config
# TODO Abstractions
# TODO Elements
# TODO require_relative
# TODO initialize
# TODO VectorParams MatrixParams... , update DoWith, reject to_h ???
# TODO add, substract, multiply_by vector, array ..

p column_matrix = ColumnMatrix.new(columns: [[1, 1], [2, 2]])
p row_vector = RowVector.new(elements: [1, 1])

p column_matrix.multiply_by_row_vector(row_vector)

p row_matrix = RowMatrix.new(rows: [[1, 1], [2, 2]])
p column_vector = ColumnVector.new(elements: [1, 1])

p row_matrix.multiply_by_column_vector(column_vector)
