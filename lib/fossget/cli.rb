class CLI
  def self.usage_text
    'USAGE: fossget <COMMAND> [ARGUMENTS]'
  end

  def self.help_text
    return <<-EOF.gsub /^  /, ''
      COMMANDS:

          help      Display this help text.

          config    Perform initial configuration of defaults.

                    This provides a guided process for configuring user defaults,
                    including FossRec username, the directory where you store
                    Fossil repository files, the directory where you store Fossil
                    project checkout directories, whether to use the same password
                    for a repository's local username as for the FossRec username
                    used to clone the repository

          clone clone <PROJECT> [PATH]

                    Clone a repository from FossRec.

                    PROJECT:  Specify the project name.
                    PATH:     Optionally, specify a nonstandard checkout path.
    EOF
  end

  def self.else_text
    'Please provide a valid command.  Try "fossget help".'
  end
end
