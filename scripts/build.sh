# Author : cqing<SiqingIII@163.com>
# Copyright (c) wusiqing.com
# Script follows here:

npm-run-all --parallel lint:*
for step in 'images' 'scripts' 'styles'  'hash'
do 
    npm run build:$step
done