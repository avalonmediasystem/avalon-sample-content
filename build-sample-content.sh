#!/bin/bash

fpm --force -s dir -t rpm -n avalon-sample-content -v 2.0 --iteration 1 --license GPL --url http://avalonmediasystem.org --description "Sample content for Avalon Media System" --rpm-os linux -a noarch --after-install postinst --before-remove preun --prefix /usr/share avalon-sample-content