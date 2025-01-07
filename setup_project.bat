@echo off
:: Set the project name
set PROJECT_NAME=project_name

:: Create the project folder
mkdir %PROJECT_NAME%
cd %PROJECT_NAME%

:: Create the required subfolders
mkdir src
mkdir lib

:: Create the Arduino sketch file
echo // Arduino sketch > src\sketch.ino
echo // Add your Arduino code here >> src\sketch.ino
echo void setup() { >> src\sketch.ino
echo     // Initialize setup >> src\sketch.ino
echo } >> src\sketch.ino
echo. >> src\sketch.ino
echo void loop() { >> src\sketch.ino
echo     // Main loop >> src\sketch.ino
echo } >> src\sketch.ino

:: Create the .gitignore file
echo .vscode/ > .gitignore
echo *.bin >> .gitignore
echo *.elf >> .gitignore
echo *.hex >> .gitignore
echo *.ini >> .gitignore
echo libraries/* >> .gitignore
echo build/ >> .gitignore

:: Create the LICENSE file
echo MIT License > LICENSE
echo. >> LICENSE
echo Copyright (c) %date:~-4% >> LICENSE
echo. >> LICENSE
echo Permission is hereby granted, free of charge, to any person obtaining a copy >> LICENSE
echo of this software and associated documentation files (the "Software"), to deal >> LICENSE
echo in the Software without restriction, including without limitation the rights >> LICENSE
echo to use, copy, modify, merge, publish, distribute, sublicense, and/or sell >> LICENSE
echo copies of the Software, and to permit persons to whom the Software is >> LICENSE
echo furnished to do so, subject to the following conditions: >> LICENSE
echo. >> LICENSE
echo The above copyright notice and this permission notice shall be included in all >> LICENSE
echo copies or substantial portions of the Software. >> LICENSE
echo. >> LICENSE
echo THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR >> LICENSE
echo IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, >> LICENSE
echo FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE >> LICENSE
echo AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER >> LICENSE
echo LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, >> LICENSE
echo OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE >> LICENSE
echo SOFTWARE. >> LICENSE

:: Create the README.md file
echo # %PROJECT_NAME% > README.md
echo. >> README.md
echo ## Description >> README.md
echo This is an Arduino project. >> README.md
echo. >> README.md
echo ## Folder Structure >> README.md
echo - **src/**: Contains the Arduino sketch file (\`sketch.ino\`). >> README.md
echo - **lib/**: Place for any additional libraries. >> README.md
echo - **.gitignore**: Specifies files and folders to be excluded from version control. >> README.md
echo - **LICENSE**: The project license. >> README.md
echo - **README.md**: Project documentation. >> README.md

:: Initialize Git repository
git init
git add .
git commit -m "Initial commit: Project setup"

echo Project setup complete!
pause
