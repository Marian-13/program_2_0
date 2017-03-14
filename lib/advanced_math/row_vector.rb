require_relative 'row_vector/do_with_row_vector'
require_relative 'row_vector/add_row_vector'
require_relative 'row_vector/substract_row_vector'
require_relative 'row_vector/do_with_column_vector'
require_relative 'row_vector/multiply_by_column_vector'

class RowVector
  include AttrFromHashInitializer

  attr_reader :elements

  # ==== Examples
  #
  # row_vector_1 = RowVector.new(elements: [1, 1, 1])
  # row_vector_2 = RowVector.new(row_vector_1)
  attr_from_hash_initializer :elements

  def [](index)
    elements[index]
  end

  def size
    elements.size
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
end
