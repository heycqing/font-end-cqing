for file in client/static/css/*.css
do 
    node-sass $file | cssmin > dist/styles/$(basename $file)
done

for file in client/static/css/*.scss
do 
    node-sass $file | cssmin > dist/styles/$(basename $file)
done


