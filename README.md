# PohodaXmlValidator

Ruby validator for Pohoda XML documents. Takes in Pohoda XML document, validates it against official schema, and returns errors.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pohoda_xml_validator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pohoda_xml_validator

## Usage

Valid document:
```ruby
require 'pohoda_xml_validator'
xml = File.read('valid_invoices.xml')
errors = PohodaXmlValidator.validate(xml)
# => []
```

Invalid document:
```ruby
require 'pohoda_xml_validator'
xml = File.read('invalid_invoices.xml')
errors = PohodaXmlValidator.validate(xml)
# => [#<Nokogiri::XML::SyntaxError: 8593:0: ERROR: Element '{http://www.stormware.cz/schema/version_2/invoice.xsd}invoiceSummary': This element is not expected. Expected is one of ( {http://www.stormware.cz/schema/version_2/invoice.xsd}EET, {http://www.stormware.cz/schema/version_2/invoice.xsd}print ).>]
```

## Changelog

### 28.12.2019 - gem v 1.0.0

* update pohoda xsd submodules

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pohoda_xml_validator.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
