class profile::ssh_server{
        package {'openssh-server':
          ensure => present,
        }
        service { 'sshd':
          ensure => 'running',
          enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
          ensure => present,
          user   => 'root',
          type   => 'ssh-rsa',
          key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD0RLF7N29L0QfCfk8YpjwQ97zm7BTGmqjLUk23zxYTamLPUJxvqt8JSfShUBK5nSlPvQMPKeuMHL/3gFDdKUiLI1IEyrJQDmGtVxK0NP/0LIiDICDazzYuSR7ffU7if1X2CtOr3lZVPPY1/KNgP0DrOENBFmlCEK4WmOKORkga3do4zy+xJJHCVw6lS4Kjx2abBhFq3nGbncZTI+Wtt3/H1skR4rTqEgy+oVZINpNB3ICNxxmj/SlXakB4tVuQ3W5ENEVY4o5ZAgZ5s49HnnVZC2Vit5UDsYLNtFSHEFy0SpPuH2ApE76G/HduCeIFnGnWlJBzA83XJKNUyoiaVqyr root@master.puppet.vm',
          }
    }
