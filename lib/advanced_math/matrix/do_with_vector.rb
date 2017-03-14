class Matrix
  class DoWithVector
    include AttrFromHashInitializer
    include AbstractCall

    attr_reader :matrix, :vector

    attr_from_hash_initializer :matrix, :vector
  end
end
