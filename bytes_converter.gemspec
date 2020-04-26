# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bytes_converter/version'

Gem::Specification.new do |gem|
  gem.name          = "bytes_converter"
  gem.version       = BytesConverter::VERSION
  gem.authors       = ["Piotr Boruc"]
  gem.email         = ["piotr.m.boruc@gmail.com"]
  gem.description   = %q{Gem converting Kilobytes, Megabytes and Gigabytes to bytes}
  gem.summary       = %q{kB, MB, GB to bytes converter}
  gem.homepage      = "https://github.com/wasilak/bytes_converter"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
