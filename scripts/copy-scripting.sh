#wget https://raw.githubusercontent.com/alorman/dev-actions-2/main/footer.txt
#wget https://raw.githubusercontent.com/alorman/dev-actions-2/main/header.txt
#echo "copy success"
find -maxdepth 1 -type f -iname readme.md -exec cat docs-bot/markdown/header.txt {} > tempreadme.md \;
echo "Found Readme and copied"
cat docs-bot/markdown/footer.txt >> tempreadme.md
echo "copied footer"
find -maxdepth 1 -type f -iname readme.md -exec cp tempreadme.md {} \;
echo "move success"