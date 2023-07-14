@echo off
cd ..
set /p nom=Veuillez entrer le nom du projet: 

IF DEFINED nom (symfony new %nom% --version="6.3.*" --webapp
cd %nom%
composer require symfony/webpack-encore-bundle
npm install -D tailwindcss postcss postcss-loader autoprefixer
npx tailwindcss init -p
call ..\symfonyconfig\updatefile.bat

)