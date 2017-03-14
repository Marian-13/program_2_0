require_relative 'do_with_matrix/algorithm'

class Matrix
  class DoWithMatrix
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :first_matrix, :second_matrix

    attr_from_hash_initializer :first_matrix, :second_matrix
  end
end
