require_relative 'column_matrix/do_with_column_matrix'
require_relative 'column_matrix/add_column_matrix'
require_relative 'column_matrix/substract_column_matrix'
require_relative 'column_matrix/do_with_row_vector'
require_relative 'column_matrix/multiply_by_row_vector'

class ColumnMatrix
  attr_reader :columns

  # ==== Examples
  #
  # column_matrix_1 = ColumnMatrix.new(columns: [[1, 1], [2, 2]])
  # column_matrix_2 = ColumnMatrix.new(column_matrix_1)
  def initialize(attrs)
    attrs_hash = attrs.to_h
    @columns = initialize_columns(attrs_hash)
  end

  def add_column_matrix(column_matrix)
    AddColumnMatrix.new(
      first_column_matrix: self,
      second_column_matrix: column_matrix
    ).call
  end

  def substract_column_matrix(column_matrix)
    SubstractColumnMatrix.new(
      first_column_matrix: self,
      second_column_matrix: column_matrix
    ).call
  end

  def multiply_by_row_vector(row_vector)
    MultiplyByRowVector.new(
      column_matrix: self,
      row_vector: row_vector
    ).call
  end

  def to_a
    columns
  end

  def to_h
    { columns: columns }
  end

  private
    def initialize_columns(attrs_hash)
      attrs_hash[:columns].map do |column|
        ColumnVector.new(elements: column.to_a)
      end
    end
end
