require 'yaml'

class Config
  attr_reader :settings, :filename

  def initialize file='.fossget'
    @filename = File.join Dir.home, file

    @settings = file_exists? ? load_file : Hash.new
  end

  def file_exists?
    File.exist? file
  end

  def load_file
    YAML.load_file file
  end

  def dir
    File.expand_path settings[:dirpath]
  end

  def dir= dirpath
    settings[:dirpath] = dirpath
  end

  def file
    File.expand_path filename
  end

  def repo
    File.expand_path settings[:repopath]
  end

  def repo= repopath
    settings[:repopath] = repopath
  end

  def samepass= confirmation
    settings[:samepass] = confirmation
  end

  def save
    File.open("#{Dir.home}/.fossget", 'w') {|f| f.write settings.to_yaml }
  end

  def user
    settings[:username]
  end

  def user= username
    settings[:username] = username
  end

  def info
    settings[:info]
  end

  def info= info_value
    settings[:info] = info_value
  end
end
