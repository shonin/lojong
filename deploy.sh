npm run build
cd ./dist
git init
git add -A
git commit -m "building for production"
git remote add pages git@github.com:lojongstudyapp/lojongstudyapp.github.io.git
git push pages master -f