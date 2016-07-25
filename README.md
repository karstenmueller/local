# Chef Cookbook winbox-local
Configures a local windows box. This is a wrapper Cookbook using winbox and samrty pants chef cookbooks.

## Run it
~~~
berks vendor cookbooks -b cookbooks/local/Berksfile
chef-client -z -o 'local'
~~~
