require_relative 'column_vector/do_with_column_vector'
require_relative 'column_vector/add_column_vector'
require_relative 'column_vector/substract_column_vector'
require_relative 'column_vector/do_with_row_vector'
require_relative 'column_vector/multiply_by_row_vector'

class ColumnVector
  attr_reader :elements

  # ==== Examples
  #
  # column_vector_1 = ColumnVector.new(elements: [1, 1, 1])
  # column_vector_2 = ColumnVector.new(column_vector)
  def initialize(attrs)
    attrs_hash = attrs.to_h
    @elements = initialize_elements(attrs_hash)
  end

  # ==== Examples
  #
  # column_vector_1.add_column_vector([1, 1, 1])
  # column_vector_1.add_column_vector(column_vector_2)
  def add_column_vector(column_vector)
    AddColumnVector.new(
      first_column_vector: self,
      second_column_vector: column_vector
    ).call
  end

  def substract_column_vector(column_vector)
    SubstractColumnVector.new(
      first_column_vector: self,
      second_column_vector: column_vector
    ).call
  end

  def multiply_by_row_vector(row_vector)
    MultiplyByRowVector.new(column_vector: self, row_vector: row_vector).call
  end

  def to_a
    elements
  end

  def to_h
    { elements: elements }
  end

  private
    def initialize_elements(attrs_hash)
      attrs_hash[:elements]
    end
end
