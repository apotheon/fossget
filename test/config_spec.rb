require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/rg'

require_relative '../lib/fossget/config.rb'

describe Config do
  it 'initializes a Config object without existing config file' do
    conf = Config.new '.file_does_not_exist'
    refute conf.file_exists?
  end
end
