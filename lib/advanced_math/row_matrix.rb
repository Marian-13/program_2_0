require_relative 'row_matrix/do_with_column_vector'
require_relative 'row_matrix/multiply_by_column_vector'
require_relative 'row_matrix/do_with_column_matrix'
require_relative 'row_matrix/multiply_by_column_matrix'
require_relative 'row_matrix/do_with_row_matrix'
require_relative 'row_matrix/add_row_matrix'
require_relative 'row_matrix/substract_row_matrix'

class RowMatrix
  include AttrFromHashInitializer

  attr_reader :rows

  # ==== Examples
  #
  # row_matrix_1 = RowMatrix.new(rows: [[1, 1], [2, 2]])
  # row_matrix_2 = RowMatrix.new(row_matrix_1)
  attr_from_hash_initializer :rows

  def [](index)
    rows[index]
  end

  def size
    rows.size
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

  # Multiplies by column matrix
  #
  # ==== Options
  #
  # * +:algorithm+ Algorithm used to perform multiplication.
  #                Allowed values: :standard (by default), :scalar_products
  def multiply_by_column_matrix(column_matrix, opts = {})
    MultiplyByColumnMatrix.new(
      row_matrix: self,
      column_matrix: column_matrix
    ).call(opts)
  end

  def to_a
    rows
  end

  def to_h
    { rows: rows }
  end

  private
    def initialize_rows(attrs_hash)
      attrs_hash[:rows].map { |row| RowVector.new(elements: row) }
    end
end
