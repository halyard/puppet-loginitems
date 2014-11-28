class loginitems {
  define login_item ($package = $title, $root = "/Users/$::boxen_user/Applications") {
    osx_login_item { "${title}":
      name => "${title}",
      path => "${root}/${title}.app",
      require => Package["${package}"]
    }
  }

  if $::personal {
    login_item { 'AirMail Beta':
      package => 'airmail-beta-halyard'
    }
  }
  login_item { 'Alfred 2':
    package => 'alfred-halyard'
  }
  login_item { 'Bartender':
    package => 'bartender-halyard'
  }
  login_item { 'BetterTouchTool':
    package => 'bettertouchtool-halyard'
  }
  login_item { 'Copy':
    package => 'copy-halyard'
  }
  login_item { 'Dropbox':
    package => 'dropbox-halyard'
  }
  login_item { 'Flux':
    package => 'flux-halyard'
  }
  login_item { 'Google Chrome':
    package => 'google-chrome-dev-halyard'
  }
  login_item { 'Google Drive':
    package => 'google-drive-halyard'
  }
  login_item { 'iStat Menus':
    package => 'istat-menus-halyard'
  }
  login_item { 'iTerm':
    package => 'iterm2-nightly-halyard'
  }
  if $::macosx_productversion_major == '10.9' {
    login_item { '1Password 4':
      package => 'onepassword-beta-mavericks-halyard'
    }
  } else {
    login_item { '1Password 5':
      package => 'onepassword-beta-halyard'
    }
  }
  login_item { 'TextExpander':
    package => 'textexpander-halyard'
  }
  login_item { 'TotalFinder':
    package => 'totalfinder-halyard'
  }
  login_item { 'TotalSpaces2':
    package => 'totalspaces-halyard'
  }
  osx_login_item { 'Messages':
    name => 'Messages',
    path => '/Applications/Messages.app'
  }
  osx_login_item { 'Reminders':
    name => 'Reminders',
    path => '/Applications/Reminders.app'
  }
}
