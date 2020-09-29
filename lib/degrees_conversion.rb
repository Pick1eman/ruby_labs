class DegreesConversion
  def check_units(obj)
    case obj.unit
    when 'C'
      convert_from_c(obj)
    when 'F'
      convert_from_f(obj)
    when 'K'
      convert_from_k(obj)
    end
  end

  def convert_from_c(obj)
    case obj.unit_convert
    when 'F'
      (obj.value * 1.8 + 32)
    when 'K'
      (obj.value + 273.15)
    end
  end

  def convert_from_f(obj)
    case obj.unit_convert
    when 'K'
      (5 * (obj.value - 32) / 9 + 273.15)
    when 'C'
      (5 * (obj.value - 32) / 9)
    end
  end

  def convert_from_k(obj)
    case obj.unit_convert
    when 'F'
      ((obj.value - 273.15) * 1.8 + 32)
    when 'C'
      (obj.value - 273.15)
    end
  end
end
