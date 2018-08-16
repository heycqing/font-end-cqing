# Author : cqing<SiqingIII@163.com>
# Copyright (c) wusiqing.com
# Script follows here:

for rootfile in client/static/css/*.scss
do
  node-sass $rootfile  --output-style  compressed  dist/$(dirname ${rootfile#*/} )/$(basename  ${rootfile#*/} .scss ).css
done

for file in client/static/css/**/*.scss
do
  node-sass $file  --output-style  compressed  dist/$(dirname ${file#*/} )/$(basename  ${file#*/} .scss ).css
done
