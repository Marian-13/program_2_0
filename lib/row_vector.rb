require_relative 'row_vector/do_with_row_vector'
require_relative 'row_vector/add_row_vector'
require_relative 'row_vector/substract_row_vector'
require_relative 'row_vector/do_with_column_vector'
require_relative 'row_vector/multiply_by_column_vector'

class RowVector
  attr_reader :elements

  # ==== Examples
  #
  # row_vector_1 = RowVector.new(elements: [1, 1, 1])
  # row_vector_2 = RowVector.new(row_vector_1)
  def initialize(attrs)
    attrs_hash = attrs.to_h
    @elements = initialize_elements(attrs_hash)
  end

  # ==== Examples
  #
  # row_vector_1.add_row_vector([1, 1, 1])
  # row_vector_1.add_row_vector(row_vector_2)
  def add_row_vector(row_vector)
    AddRowVector.new(
      first_row_vector: self,
      second_row_vector: row_vector
    ).call
  end

  def substract_row_vector(row_vector)
    SubstractRowVector.new(
      first_row_vector: self,
      second_row_vector: row_vector
    ).call
  end

  def multiply_by_column_vector(column_vector)
    MultiplyByColumnVector.new(
      row_vector: self,
      column_vector: column_vector
    ).call
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
