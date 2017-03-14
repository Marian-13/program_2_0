require_relative 'vector/do_with_vector'
require_relative 'vector/add_vector'
require_relative 'vector/substract_vector'
require_relative 'vector/multiply_by_vector'
require_relative 'vector/do_with_transposed_vector'

class Vector
  include AttrFromHashInitializer

  attr_reader :elements

  # ==== Examples
  #
  # vector_1 = Vector.new(elements: [1, 1, 1])
  # vector_2 = Vector.new(vector_1)
  attr_from_hash_initializer :elements

  # ==== Examples
  #
  # vector_1.add_vector([1, 1, 1])
  # vector_1.add_vector(vector_2)
  def add_vector(vector)
    AddVector.new(first_vector: self, second_vector: vector).call
  end

  def substract_vector(vector)
    SubstractVector.new(first_vector: self, second_vector: vector).call
  end

  def multiply_by_vector(vector)
    MultiplyByVector.new(first_vector: self, second_vector: vector).call
  end

  def to_a
    elements
  end

  def to_h
    { elements: elements }
  end
end
