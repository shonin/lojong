npm run build
cd ./dist
git init
git add -A
git commit -m "build and force deploy for production"
git remote add pages git@github.com:lojongstudyapp/lojongstudyapp.github.io.git
git push pages master -f
