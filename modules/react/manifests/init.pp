class react {

  package {'default-jdk':
          ensure => "installed",
          allowcdrom => "true",
          }

  package {'nodejs':
          ensure => "installed",
          }
}
