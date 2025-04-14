require 'spec_helper.rb'
require_relative "../caesar.rb"

RSpec.describe 'Cipher' do
  describe "encode" do
    context 'give string' do
      it 'returns string' do
        expect(encode("string", 0)).to eq("string")
      end
      xit 'returns shifted code' do
        expect(encode("string", 5)).to eq("xywnsl")
      end
      xit 'wrap a->z' do
        expect(encode("xyzabc", 5)).to eq("zabcde")
      end
    end
  end
end