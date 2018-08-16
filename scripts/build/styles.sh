for file in client/static/css/*.scss
do
  node-sass $file  --output-style  compressed  dist/static/styles/$(basename $file .scss).css
done
