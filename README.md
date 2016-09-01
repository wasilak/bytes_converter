# BytesConverter
[![Build Status](https://travis-ci.org/wasilak/bytes_converter.svg?branch=master)](https://travis-ci.org/wasilak/bytes_converter) [![Gem Version](https://badge.fury.io/rb/bytes_converter.svg)](http://badge.fury.io/rb/bytes_converter) [![Code Climate](https://codeclimate.com/github/wasilak/bytes_converter/badges/gpa.svg)](https://codeclimate.com/github/wasilak/bytes_converter)

Gem converting Kilobytes, Megabytes and Gigabytes into bytes.

## Installation

Add this line to your application's Gemfile:

    gem 'bytes_converter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bytes_converter

## Usage

first:

```ruby
  require "bytes_converter"
```

Converting strings to bytes:

```ruby
  BytesConverter::convert "some string" # --> Float
```

where "some string" can be anything like in these examples:

```ruby
BytesConverter::convert "12.3M" # --> 12897484.8
BytesConverter::convert "12.3" # --> 12.3 (no unit means bytes)
  BytesConverter::convert "12.3 kilo bytes" # --> 12595.2
  BytesConverter::convert "12.3 Megabytes" # --> 12897484.8
  BytesConverter::convert "12.3 m" # --> 12897484.8
  BytesConverter::convert "12.3 k" # --> 12595.2
  BytesConverter::convert "12.3 bk" # --> 0.0 (b is not recognized)
  BytesConverter::convert "12,3m" # --> 12897484.8
  BytesConverter::convert "123" # --> 123
```

You can add new unit as a hash. Let's say you want OrangeBytes unit:

```ruby
  orange = {"o" => 2}
  BytesConverter::add_unit orange
```

... and remove it with:

```ruby
  BytesConverter::remove_unit "o"
```

To get all available units:

```ruby
  BytesConverter::get_units # --> Hash
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
