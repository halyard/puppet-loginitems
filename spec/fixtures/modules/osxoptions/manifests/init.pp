class osxoptions {
  include osx::global::disable_key_press_and_hold
  include osx::global::expand_save_dialog
  include osx::global::expand_print_dialog
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::disable_autocorrect
  include osx::global::tap_to_click
  include osx::global::enable_keyboard_control_access

  include osx::dock::autohide
  include osx::dock::disable

  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::show_removable_media_on_desktop
  include osx::finder::empty_trash_securely
  include osx::finder::unhide_library
  include osx::finder::enable_quicklook_text_selection

  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control

  include osx::software_update

  class { 'osx::global::key_repeat_delay':
    delay => 30
  }

  class { 'osx::global::key_repeat_rate':
    rate => 0
  }

  class { 'osx::dock::hot_corners':
    top_right   => 'Start Screen Saver',
  }

  boxen::osx_defaults { 'Enable Airdrop on all interfaces':
    user   => $::boxen_user,
    domain => 'com.apple.NetworkBrowser',
    key    => 'BrowseAllInterfaces',
    value  => 1,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Use list view in Finder':
    domain => 'com.apple.Finder',
    key    => 'FXPreferredViewStyle',
    value  => 'Nlsv',
    type   => 'string'
  }

  boxen::osx_defaults { 'Set sidebar icon size to small':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSTableViewDefaultSizeMode',
    value  => 1,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Jump to spot that is clicked':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleScrollerPagingBehavior',
    value  => 1,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Always show scrollbars':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleShowScrollBars',
    value  => 'Always',
    type   => 'string'
  }

  boxen::osx_defaults { 'Save to disk rather than iCloud by default':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSDocumentSaveNewDocumentsToCloud',
    value  => false,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Dark mode UI':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleInterfaceStyle',
    value  => 'Dark',
    type   => 'string'
  }

  boxen::osx_defaults { 'Disable Resume windows':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSQuitAlwaysKeepsWindows',
    value  => false,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Disable automatic termination of inactive apps':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSDisableAutomaticTermination',
    value  => true,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Check for updates daily':
    user   => $::boxen_user,
    domain => 'com.apple.SoftwareUpdate',
    key    => 'ScheduleFrequency',
    value  => 1,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Enable right click via bottom right corner':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.AppleMultitouchTrackpad',
    value  => ['TrackpadCornerSecondaryClick', '2'],
    type   => 'dict-add'
  }

  boxen::osx_defaults { 'Enable right click':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.AppleMultitouchTrackpad',
    value  => ['TrackpadRightClick', '1'],
    type   => 'dict-add'
  }

  boxen::osx_defaults { 'Disable 3 finger horizontal swipe':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.AppleMultitouchTrackpad',
    value  => ['TrackpadThreeFingerHorizSwipeGesture', '0'],
    type   => 'dict-add'
  }

  boxen::osx_defaults { 'Disable 3 finger vertical swipe':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.AppleMultitouchTrackpad',
    value  => ['TrackpadThreeFingerVertSwipeGesture', '0'],
    type   => 'dict-add'
  }

  boxen::osx_defaults { 'Enable right click on bluetooth trackpad':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadCornerSecondaryClick',
    value  => 2,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Enable bottom corner right click on bluetooth trackpad':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadRightClick',
    value  => true,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Save screenshots to desktop':
    user   => $::boxen_user,
    domain => 'com.apple.screencapture',
    key    => 'location',
    value  => '${HOME}/Desktop',
    type   => 'string'
  }

  boxen::osx_defaults { 'Save screenshots in PNG format':
    user   => $::boxen_user,
    domain => 'com.apple.screencapture',
    key    => 'type',
    value  => 'png',
    type   => 'string'
  }

  boxen::osx_defaults { 'Set Finder default path type':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'NewWindowTarget',
    value  => 'PfLo',
    type   => 'string'
  }

  boxen::osx_defaults { 'Set Finder default path':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'NewWindowTargetPath',
    value  => 'file://${HOME}',
    type   => 'string'
  }

  boxen::osx_defaults { 'Disable the warning when changing a file extension':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'FXEnableExtensionChangeWarning',
    value  => false,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Enable spring loading for directories':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.springing.enabled',
    value  => true,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Use plain text for new files':
    user   => $::boxen_user,
    domain => 'com.apple.TextEdit',
    key    => 'RichText',
    value  => 0,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Open files as UTF-8 in TextEdit':
    user   => $::boxen_user,
    domain => 'com.apple.TextEdit',
    key    => 'PlainTextEncoding',
    value  => 4,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Save files as UTF-8 in TextEdit':
    user   => $::boxen_user,
    domain => 'com.apple.TextEdit',
    key    => 'PlainTextEncodingForWrite',
    value  => 4,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Prevent Time Machine from prompting to use new hard drives as backup volume':
    user   => $::boxen_user,
    domain => 'com.apple.TimeMachine',
    key    => 'DoNotOfferNewDisksForBackup',
    value  => true,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Set screensaver':
    host   => 'currentHost',
    user   => $::boxen_user,
    domain => 'com.apple.screensaver',
    key    => 'moduleDict',
    value  => "moduleName -string 'Hyperspace' path -string '/Users/$::boxen_user/Library/Screen Savers/Hyperspace.saver' type -int 0",
    type   => 'dict',
    require => Package['halyard/casks/hyperspace']
  }

  boxen::osx_defaults { 'Change screensaver start time':
    host   => 'currentHost',
    user   => $::boxen_user,
    domain => 'com.apple.screensaver',
    key    => 'idleTime',
    value  => 300,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Use 24 hour clock with date':
    user   => $::boxen_user,
    domain => 'com.apple.menuextra.clock',
    key    => 'DateFormat',
    value  => 'EEE MMM d  H:mm:ss',
    type   => 'string'
  }

  boxen::osx_defaults { 'Disable Gatekeeper':
    user   => 'root',
    domain => '/var/db/SystemPolicy-prefs.plist',
    key    => 'enabled',
    value  => 'no',
    type   => 'string'
  }

  boxen::osx_defaults { 'Disable app quarantine':
    user   => $::boxen_user,
    domain => 'com.apple.LaunchServices',
    key    => 'LSQuarantine',
    value  => false,
    type   => 'bool'
  }

  boxen::osx_defaults { 'Enable firewall':
    user   => 'root',
    domain => '/Library/Preferences/com.apple.alf',
    key    => 'globalstate',
    value  => 1,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Disable application switcher':
    domain => 'com.apple.symbolichotkeys',
    key    => 'AppleSymbolicHotKeys',
    value  => ['33', '{enabled = 0;}'],
    type   => 'dict-add'
  }

  boxen::osx_defaults { 'Disable Mission Control':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'mcx-expose-disabled',
    value  => true,
    type   => 'bool'
  }

  boxen::osx_defaults { 'Disable Dictionary mouseover':
    domain => 'com.apple.symbolichotkeys',
    key    => 'AppleSymbolicHotKeys',
    value  => ['70', '{enabled = 0;}'],
    type   => 'dict-add'
  }

  boxen::osx_defaults { 'Disable Spotlight search':
    domain => 'com.apple.symbolichotkeys',
    key    => 'AppleSymbolicHotKeys',
    value  => ['64', '{enabled = 0;}'],
    type   => 'dict-add'
  }

  boxen::osx_defaults { 'Disable Spotlight window':
    domain => 'com.apple.symbolichotkeys',
    key    => 'AppleSymbolicHotKeys',
    value  => ['65', '{enabled = 0;}'],
    type   => 'dict-add'
  }

  boxen::osx_defaults { 'Dim keyboard after 1 minute of inactivity':
    domain => 'com.apple.BezelServices',
    key    => 'kDimTime',
    value  => 300,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Crank up trackpad speed':
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.scaling',
    value  => 6,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Enable feedback on volume change':
    domain => 'NSGlobalDomain',
    key    => 'com.apple.sound.beep.feedback',
    value  => 1,
    type   => 'integer'
  }

  boxen::osx_defaults { 'iTerm2: Open arrangement at startup':
    domain => 'com.googlecode.iterm2',
    key    => 'OpenArrangementAtStartup',
    value  => 1,
    type   => 'integer'
  }

  boxen::osx_defaults { 'iTerm2: Open arrangement at startup':
    domain => 'com.googlecode.iterm2',
    key    => 'UseLionStyleFullscreen',
    value  => 0,
    type   => 'integer'
  }
}
