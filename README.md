cf-rails
========

cloudfoundry test rails project

[http://support.cloudfoundry.com/home](http://support.cloudfoundry.com/home)
[http://cloudfoundry.zendesk.com/home](http://cloudfoundry.zendesk.com/home)


use GCF:

[http://docs.cloudfoundry.com/docs/using/managing-apps/cf/go-cli.html](http://docs.cloudfoundry.com/docs/using/managing-apps/cf/go-cli.html)

    (not working currently)
    curl -s https://raw.github.com/cloudfoundry-community/cf_cli_install/master/binscripts/cf-installer latest | bash

Login and Push app:

    gcf login -a api.run.pivotal.io
    gcf push cf-rails -c "bundle exec rake db:migrate && bundle exec script/server -p $PORT" -d cfapps.io -i 1 -m 1G -n cf-rails -p .

