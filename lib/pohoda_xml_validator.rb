require 'nokogiri'

module PohodaXmlValidator
  def self.validate(utf_source)
    gem_root = File.expand_path("../..", __FILE__)

    path = "#{gem_root}/lib/pohoda_xml_validator/pohoda_xsd/meta.xsd"
    io = File.open(path)
    schema = Nokogiri::XML::Schema(io)

    doc = Nokogiri::XML(utf_source)

    errors = schema.validate(doc)

    errors
  end
end
