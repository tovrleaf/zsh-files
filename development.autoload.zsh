vkdev="/www/verkkokauppacom"
alias cdd="cd $vkdev/dev"
alias cdc="cd $vkdev/ci"
alias pu="phpunit --colors --verbose"
alias pux="pu -d zend.enable_gc=0 -d memory_limit=6G --coverage-clover /Volumes/verkkokauppacom-code/verkkokauppacom/tmp/phpunit-clover.xml"
alias puc="pu -d zend.enable_gc=0 -d memory_limit=6G --coverage-html /Volumes/verkkokauppacom-code/verkkokauppacom/tmp/phpunit-coverage"
alias pucx="pux --coverage-html /Volumes/verkkokauppacom-code/verkkokauppacom/tmp/phpunit-coverage"
alias ppu="parallel-phpunit --pu-cmd phpunit --colors --verbose"
