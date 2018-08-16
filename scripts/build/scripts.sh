# Author : cqing<SiqingIII@163.com>
# Copyright (c) wusiqing.com
# Script follows here:
for rootfile in client/static/scripts/*.js
do
    ./node_modules/uglify-es/bin/uglifyjs $rootfile  --mangle >  dist/$(dirname ${rootfile#*/} )/$(basename  ${rootfile#*/})
done
echo dist/$(dirname ${rootfile#*/} )/$(basename  ${rootfile#*/})


for file in client/static/scripts/**/*.js
do
    ./node_modules/uglify-es/bin/uglifyjs $file  --mangle >   dist/$(dirname ${file#*/} )/$(basename  ${file#*/})
done
# echo dist/$(dirname ${file#*/} )/$(basename  ${file#*/})
