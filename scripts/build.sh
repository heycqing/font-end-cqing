npm-run-all --parallel lint:*
for step in 'images' 'scripts' 'styles'  'hash'
do 
    npm run build:$step
done