class apache2 {
	package {'apache2':
		ensure => "installed",
	}
	
	service {'apache2':
		ensure => "running",
		enable => "true",
		require => Package["apache2"],
	}

	file {'/etc/apache2/mods-enabled/userdir.load':
		ensure => "link",
		target => "etc/apache2/mods-available/userdir.load",
		notify => Service["apache2"],
		require => Package["apache2"],
	}
	
	file {'/etc/apache2/mods-enabled/userdir.conf':
		ensure => “link”,
		target => “/etc/apache2/mods-available/userdir.conf”,
		notify => Service[“apache2”],
		require => Package[“apache2”],
	}

	file {'/home/tommi/public_html':
		ensure => “directory”,
		owner => “tommi”,
		group => “tommi”,
	}

	file {'/home/tommi/public_html/index.html':
		content => template(“apache2/index”),
		owner => “tommi”,
		group => “tommi”,
	}	
}
