module AttrFromHashInitializer
  def attr_from_hash_initializer(*args)
    define_method_initialize(args)
  end

  private
    def define_method_initialize(attr_names)
      define_method(:initialize) do |attrs_hash|
        attr_names.each do |attr_name|
          instance_variable_set("@#{attr_name}", attrs_hash[attr_name])
        end
      end
    end
end
