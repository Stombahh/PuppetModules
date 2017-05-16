class react-native {

	package {'curl':
		ensure => "installed",
		allowcdrom => "true",
		}

	exec 	{'curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -':
		path => "/usr/bin",
		}

	exec 	{'sudo apt-get install -y nodejs':
		path => "/usr/bin",
		require => Exec["curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -"],
		}

	exec	{'npm install -g react-native-cli': 
		path => "/usr/bin",
		}
}
