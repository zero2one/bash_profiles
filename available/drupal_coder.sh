#!/usr/bin/bash

##
# Run php code sniffer specific for Drupal.
#
# Usage:
#    $ phpcsd /path/to/file_or_folder to check.
#
# The command will:
#    * Use the Drupal standard.
#    * Show progress.
#    * Output the results in color.
#    * Exclude files that are generated by features.
#
# NOTE:
#    You need to have the coder package installed & configured using composer:
#    $ composer global require drupal/coder
#    $ phpcs --config-set installed_paths ~/.composer/vendor/drupal/coder/coder_sniffer
##

alias phpcsd='phpcs --standard=Drupal -p --colors --ignore=*.features.*,*.field_group.inc,*.strongarm.inc,*.ds.inc,*.context.inc,*.views_default.inc,*.file_default_displays.inc,*.facetapi_defaults.inc,dist,node_modules --extensions=php,module,inc,install,test,profile,theme,js,css,info,txt'
