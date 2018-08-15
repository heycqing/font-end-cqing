npm-run-all --parallel lint:*
for step in 'images' 'styles' 'scripts' 'hash'
do 
    npm run build:$step
done