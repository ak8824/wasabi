require 'spec_helper'

describe Wasabi::Parser do
  context 'with: savon562.wsdl' do
    subject do
      parser = Wasabi::Parser.new Nokogiri::XML(xml)
      parser.parse
      parser
    end

    let(:xml) { fixture(:savon562).read }

    it 'parses the operations' do
      expect { subject.operations[:write_case_eform_data][:input] == 'writeCaseEformData' }
    end
  end
end
