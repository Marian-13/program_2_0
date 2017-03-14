class Vector
  class DoWithTransposedVector
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :column_vector, :row_vector

    attr_from_hash_initializer :column_vector, :row_vector
  end
end
