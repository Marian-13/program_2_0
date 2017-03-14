require_relative 'matrix/do_with_matrix'
require_relative 'matrix/add_matrix'
require_relative 'matrix/substract_matrix'
require_relative 'matrix/multiply_by_matrix'
require_relative 'matrix/do_with_vector'
require_relative 'matrix/multiply_by_vector'

class Matrix
  attr_reader :elements

  # ==== Examples
  #
  # matrix_1 = Matrix.new(elements: [[1, 1], [2, 2]])
  # matrix_2 = Matrix.new(matrix_1)
  def initialize(attrs)
    attrs_hash = attrs.to_h
    @elements = initialize_elements(attrs_hash)
  end

  def add_matrix(matrix)
    AddMatrix.new(first_matrix: self, second_matrix: matrix).call
  end

  def substract_matrix(matrix)
    SubstractMatrix.new(first_matrix: self, second_matrix: matrix).call
  end

  def multiply_by_matrix(matrix, algorithm = nil)
    MultiplyByMatrix.new(
      first_matrix: self,
      second_matrix: matrix,
      algorithm: algorithm
    ).call
  end

  def multiply_by_vector(vector)
    MultiplyByVector.new(
      matrix: self,
      vector: vector
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
