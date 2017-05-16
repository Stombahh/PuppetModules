class atom {

	exec	{'sudo add-apt-repository -y ppa:webupd8team/atom':
		path => ["/usr/bin"],
		}

	exec	{'sudo apt-get update':
		path => ["/usr/bin"],
		}

	package {'atom':
		ensure => "installed",
		allowcdrom => "true",
		}
}