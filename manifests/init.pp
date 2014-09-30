class loginitems {
  define login_item {
    osx_login_item { "${title}":
      name => "${title}",
      path => "/Users/$::boxen_user/Applications/${title}.app",
      require => Package["${package}"]
    }
  }

  login_item { 'AirMail Beta':
    package => 'halyard/casks/airmail-beta'
  }
  login_item { 'Alfred 2':
    package => 'halyard/casks/alfred'
  }
  login_item { 'Bartender':
    package => 'halyard/casks/bartender'
  }
  login_item { 'BetterTouchTool':
    package => 'halyard/casks/bettertouchtool'
  }
  login_item { 'Copy':
    package => 'halyard/casks/copy'
  }
  login_item { 'Dropbox':
    package => 'halyard/casks/dropbox'
  }
  login_item { 'Flux':
    package => 'halyard/casks/flux'
  }
  login_item { 'Google Chrome':
    package => 'halyard/casks/google-chrome-dev'
  }
  login_item { 'Google Drive':
    package => 'halyard/casks/google-drive'
  }
  login_item { 'iStat Menus':
    package => 'halyard/casks/istat-menus'
  }
  login_item { 'iTerm':
    package => 'halyard/casks/iterm2-nightly'
  }
  login_item { '1Password 4':
    package => 'halyard/casks/onepassword-beta'
  }
  login_item { 'TextExpander':
    package => 'halyard/casks/textexpander'
  }
  login_item { 'TotalFinder':
    package => 'halyard/casks/totalfinder'
  }
  login_item { 'TotalSpaces2':
    package => 'halyard/casks/totalspaces'
  }
  osx_login_item { 'Messages':
    name => 'Messages'
    path => '/Applications/Messages.app'
  }
  osx_login_item { 'Reminders':
    name => 'Reminders'
    path => '/Applications/Reminders.app'
  }
}
