require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/rg'

require_relative '../lib/fossget/cli.rb'

describe CLI do
  describe 'usage_text' do
    it 'returns usage text with default name' do
      CLI.usage_text.must_match 'USAGE: fossget <COMMAND> [ARGUMENTS]'
    end
  end

  describe 'help_text' do
    it 'returns help text' do
      CLI.help_text.must_match 'config    Perform initial configuration of'
      CLI.help_text.must_match 'This provides a guided process for configuring'
      CLI.help_text.must_match 'clone clone <PROJECT> [PATH]'
    end
  end
end
