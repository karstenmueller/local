$psake.use_exit_on_error = $true
properties {
  $baseDir = $psake.build_script_dir
}

Task default -depends berks

task berks {
  exec { berks update; berks vendor cookbooks }
}

task chef {
  exec { chef-client -z -o 'winbox-local' }
}
