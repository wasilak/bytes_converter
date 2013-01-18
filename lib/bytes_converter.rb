require "bytes_converter/version"

module BytesConverter

  # default available values
  @sizes = {
      "k" => 1024,
      "m" => 1024*1024,
      "g" => 1024*1024*1024
    }

  # method converting size into bytes
  def self.convert size

    # replacing comma with dot
    size_converted = size.downcase.gsub(',','.')

    # separating digits (size) from rest of the string (unit)
    x = size_converted.scan(/(\d*\.?\d*)(.*)/).collect { |found| found }

    # stripping whitespaces
    x[0][0].strip!
    x[0][1].strip!

    # limiting unit to first letter (k,m and so on)
    x[0][1] = x[0][1][/\w{1}/]

    # if unit is present (not nil) -> getting multiplier from sizes array
    # and calculating bytes
    unless x[0][1].nil?
      out = x[0][0].to_f * @sizes[x[0][1]].to_f
    else # if unit is not present -> we assume that size is already in bytes.
      out = x[0][0].to_f
    end

    # returning calculated (or not) value
    out
  end

  # method adding new unit to @sizes hash
  def self.add_unit new_unit
    @sizes.merge!(new_unit)
    true
  end

  # getter for sizes
  def self.get_units
    @sizes.each do | key, value |
      puts "unit: #{key} = #{value}"
    end
    "end of list"
  end

  # method removing size
  def self.remove_unit unit
    @sizes.delete(unit) { |key| "Unit \"#{key}\" not found among sizes!" }
  end
end
