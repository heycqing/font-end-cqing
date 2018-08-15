for file in client/static/scripts/*.js
do
    ./node_modules/uglify-es/bin/uglifyjs $file  --mangle > dist/scripts/$(basename file)
done