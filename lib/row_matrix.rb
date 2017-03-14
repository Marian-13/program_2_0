require_relative 'row_matrix/do_with_row_matrix'
require_relative 'row_matrix/add_row_matrix'
require_relative 'row_matrix/substract_row_matrix'
require_relative 'row_matrix/do_with_column_vector'
require_relative 'row_matrix/multiply_by_column_vector'

class RowMatrix
  attr_reader :rows

  # ==== Examples
  #
  # row_matrix_1 = RowMatrix.new(rows: [[1, 1], [2, 2]])
  # row_matrix_2 = RowMatrix.new(row_matrix_1)
  def initialize(attrs)
    attrs_hash = attrs.to_h
    @rows = initialize_rows(attrs_hash)
  end

  def add_row_matrix(row_matrix)
    AddRowMatrix.new(
      first_row_matrix: self,
      second_row_matrix: row_matrix
    ).call
  end

  def substract_row_matrix(row_matrix)
    SubstractRowMatrix.new(
      first_row_matrix: self,
      second_row_matrix: row_matrix
    ).call
  end

  def multiply_by_column_vector(column_vector)
    MultiplyByColumnVector.new(
      row_matrix: self,
      column_vector: column_vector
    ).call
  end

  def to_a
    rows
  end

  def to_h
    { rows: rows }
  end

  private
    def initialize_rows(attrs_hash)
      attrs_hash[:rows].map { |row| RowVector.new(elements: row.to_a) }
    end
end
