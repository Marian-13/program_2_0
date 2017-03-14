# TODO Refactor
module AttrFromHashInitializer
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    # Generates instance variables and private methods for their initialization
    # inside class extended by AttrFromHashInitializer
    #
    # ==== Atributes
    #
    # +*attr_names+ names of instance variables to generate
    #
    # ==== Exaples
    #
    # class SamleClass
    #   extend AttrFromHashInitializer
    #
    #   attr_from_hash_initializer :first_attr, :second_attr
    #
    # # Such attr_from_hash_initializer declaration generates following methods:
    #
    # # def initialize(attrs)
    # #   attrs_hash = attrs.to_h
    # #
    # #   @first_attr  = initialize_first_attr(attrs_hash)
    # #   @second_attr = initialize_second_attr(attrs_hash)
    # # end
    #
    # # private
    # #   def initialize_first_attr(attrs_hash)
    # #     attts_hash[:first_attr]
    # #   end
    #
    # #   def initialize_second_attr(attrs_hash)
    # #     attts_hash[:second_attr]
    # #   end
    # end
    #
    # sample_class = SampleClass(first_attr: 1.0, second_attr: 2.0)
    #
    # # If you want a more complex initialization of first_attr you have to
    # # override initialize_first_attr manually after
    # # attr_from_hash_initializer declaration
    #
    # class SamleClass
    #   extend AttrFromHashInitializer
    #
    #   attr_from_hash_initializer :first_attr, :second_attr
    #
    #   def initialize_first_attr(attrs_hash)
    #     (attrs_hash[:first_attr] + 44)**2
    #   end
    # end
    def attr_from_hash_initializer(*attrs_names)
      define_method_initialize(attrs_names)
    end

    private
      def define_method_initialize(attrs_names)
        attrs_names.each do |attr_name|
          method_name = "initialize_#{attr_name}"

          define_method(method_name) do |attrs_hash|
            attrs_hash[attr_name]
          end

          self.send(:private, method_name)
        end

        define_method("initialize") do |attrs|
          attrs_hash = attrs.to_h

          attrs_names.each do |attr_name|
            instance_variable_set("@#{attr_name}", self.send("initialize_#{attr_name}", attrs_hash))
          end
        end
      end
  end
end
