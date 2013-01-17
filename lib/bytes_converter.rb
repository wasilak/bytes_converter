require "bytes_converter/version"

module BytesConverter

  # method converting size into bytes
  def self.convert size
    sizes = {
      "K" => 1024,
      "M" => 1024*1024,
      "G" => 1024*1024*1024
    }
    m = size.scan(/(\d*\.\d*)+(\w)?/).collect { |serwer| serwer }

    unless m[0].nil?
      out = m[0][0].to_f * sizes[m[0][1]].to_f
    else
      out = size
    end
    out
  end
end
