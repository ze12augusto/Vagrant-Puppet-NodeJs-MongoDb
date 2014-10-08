# Install npm package

class npm-packages {

	include nodejs
	
	package { "mocha":
		require => Class['nodejs'],
		provider => npm,
		ensure   => present,
	}

	package { "forever":
		require => Class['nodejs'],
		provider => npm,
		ensure   => present,
	}

	package { "express-generator":
		require => Class['nodejs'],
		provider => npm,
		ensure   => present,
	}
}