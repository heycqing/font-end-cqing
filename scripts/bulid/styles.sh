for file in client/static/css/*.scss
do 
    node-sass $file | cssmin > dist/styles/$(basename $file)
done