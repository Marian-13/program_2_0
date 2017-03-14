# TODO initialize_value
class Element
  include AttrFromHashInitializer

  attr_reader :value

  attr_from_hash_initializer :value

  %w{+ - * / % **}.each do |operator|
    define_method(operator) do |operand|
      result = value.send(operator, operand.to_f)
      Element.new(value: result)
    end
  end

  def to_f
    value
  end

  private
    def initialize_value(attrs_hash)
      attrs_hash[:value].to_f
    end
end
