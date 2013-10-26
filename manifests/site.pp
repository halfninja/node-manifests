# Packages that I will get annoyed very quickly at
# if they are not present
class basic-packages {
        package { ['screen','vim','sudo']:
                ensure => installed
        }
}

class git {
        package { 'git': ensure => installed }
}

class terraria-server() {
        package { 'mono-complete':
                ensure => installed
        }
}

class nginx-server() {
        package { 'nginx':

        }
}

node default {
        class { 'basic-packages': }
}

node li655-20 inherits default {
        class { 'git': }
        class { 'terraria-server': }
}
