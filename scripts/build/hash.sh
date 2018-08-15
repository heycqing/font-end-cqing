#给图片资源添加上版本号，并且替换引用
hashmark -c dist -r -l 8 '**/*.{png,jpg}' '{dir}/{name}.{hash}{ext}' | replaceinfiles -S -s 'dist/**/*.scss' -d '{dir}/{base}'

# 给 js、css 资源加上版本号，并且替换引用
hashmark -c dist -r -l 8 '**/*.{css,scss,js}' '{dir}/{name}.{hash}{ext}' | replaceinfiles -S -s 'client/index.html' -d 'dist/index.html'

