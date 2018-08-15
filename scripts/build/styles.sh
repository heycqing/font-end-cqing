for file in client/static/css/*.scss
do
  node-sass $file | cssmin > dist/static/styles/$(basename $file)
done
