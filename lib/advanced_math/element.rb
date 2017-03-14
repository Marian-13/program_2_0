class Element
  attr_reader :value

  def initialize(attrs)
    attrs_hash = attrs.to_h
    @value = attrs[:value]
  end

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
