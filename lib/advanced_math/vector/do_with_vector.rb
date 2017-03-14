class Vector
  class DoWithVector
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :first_vector, :second_vector

    attr_from_hash_initializer :first_vector, :second_vector

    def vector_class
      Vector
    end
  end
end
