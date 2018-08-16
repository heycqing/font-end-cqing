# Author : cqing<SiqingIII@163.com>
# Copyright (c) wusiqing.com
# Script follows here:

#检查代码
npm run lint

# 图片压缩构建
imagemin client/static/images/* --out-dir=dist/static/images

# 获取样式文件
for rootCssfile in client/static/css/*.scss
do
  node-sass $rootCssfile  --output-style  compressed  dist/$(dirname ${rootCssfile#*/} )/$(basename  ${rootCssfile#*/} .scss ).css
done

for cssfile in client/static/css/**/*.scss
do
  node-sass $cssfile  --output-style  compressed  dist/$(dirname ${cssfile#*/} )/$(basename  ${cssfile#*/} .scss ).css
done

# 脚本文件构建压缩
for rootJsfile in client/static/scripts/*.js
do
    ./node_modules/uglify-es/bin/uglifyjs $rootJsfile  --mangle >  dist/$(dirname ${rootJsfile#*/} )/$(basename  ${rootJsfile#*/})
done

for Jsfile in client/static/scripts/**/*.js
do
    ./node_modules/uglify-es/bin/uglifyjs $Jsfile  --mangle >   dist/$(dirname ${Jsfile#*/} )/$(basename  ${Jsfile#*/})
done

# 增加哈希值
hashmark -c dist -r -l 8 '**/*.{png,jpg,css,js}' '{dir}/{name}.{hash}{ext}' | replaceinfiles -S -s 'client/index.html' -d 'dist/index.html'
