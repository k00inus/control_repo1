class profile::r10k {
  class { 'r10k': 
    remote => 'git@github.com:k00inus/control_repo1.git',
  }
  class { 'r10k::webhook::config': 
    use_mcollective => false,
    enable_ssl  => false,
  }
  class { 'r10k::webhook': 
    user   => root,
    group  => root,
  }
}  
