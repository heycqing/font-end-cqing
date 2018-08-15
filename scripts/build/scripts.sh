for file in client/static/scripts/*.js
do
    ./node_modules/uglify-es/bin/uglifyjs $file  --mangle > dist/static/scripts/$(basename file)
done