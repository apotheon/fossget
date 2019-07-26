load 'lib/fossget.rb'

Gem::Specification.new do |s|
  s.name        = 'fossget'
  s.version     = FossGet.version
  s.authors     = ['Chad Perrin']
  s.date        = '2019-06-22'
  s.description = <<-EOF
    Clone from a fossrec.com repository.
  EOF
  s.summary     = 'FossGet: Clone remote Fossil repositories.'
  s.email       = 'code@apotheon.net'
  s.files       = [
    'LICENSE',
    'README.md',
    'lib/fossget.rb',
    'lib/fossget/cli.rb',
    'lib/fossget/config.rb'
  ]
  s.homepage    = 'https://fossrec.com/u/apotheon/fossget'
  s.license     = 'COIL'
  s.bindir      = 'bin'
  s.executables << 'fossget'

  s.post_install_message  = <<-EOF
    Thank you for using FossGet.  For it to work properly, you need to have
    Fossil SCM (the world's most decentralized SCM and DVCS) installed.

    If you find any bugs, you are encouraged to report them at:

        https://fossrec.com/u/apotheon/fossget/index.cgi/reportlist

    Run "fossget help" for usage and configuration information.
  EOF

  s.required_ruby_version = '>= 2.4.5'
end
