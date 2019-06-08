require 'yaml'

class Config
  attr_reader :config
  attr_writer :filename

  def initialize
    @filename = File.new Dir.home, '.fossget'

    @config = file_exists? ? load_file : Hash.new
  end

  def file_exists?
    File.exist? file
  end

  def load_file
    YAML.load_file file
  end

  def dir
    File.expand_path config[:dirpath]
  end

  def dir= dirpath
    config[:dirpath] = dirpath
  end

  def file
    File.expand_path filename
  end

  def repo
    File.expand_path config[:repopath]
  end

  def repo= repopath
    config[:repopath] = repopath
  end

  def samepass= confirmation
    config[:samepass] = confirmation
  end

  def save
    File.open("#{Dir.home}/.fossget", 'w') {|f| f.write config.to_yaml }
  end

  def user
    config[:username]
  end

  def user= username
    config[:username] = username
  end
end
