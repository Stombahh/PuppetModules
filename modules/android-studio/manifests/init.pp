class android-studio {

	package	{'default-jdk':
		ensure => "installed",
		allowcdrom => "true",
		}

	exec	{'sudo add-apt-repository -y ppa:maarten-fonville/android-studio':
		path => ["/usr/bin"],
		}

	exec	{'sudo apt-get update':
		path => ["/usr/bin"],
		}

	exec 	{'sudo apt-get install -y android-studio':
		path => "/usr/bin",
		}
}