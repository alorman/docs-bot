find -maxdepth 1 -type f -iname readme.md -exec cat docs-bot/markdown/header.txt {} > tempreadme.md \;
echo "Found Readme and copied"
cat docs-bot/markdown/footer.txt >> tempreadme.md
echo "copied footer"
sed -i 's/$IMAGE_NAME_LINK/$IMAGE_NAME/g' tempreadme.txt
sed -i 's/$PROJECT_CATEGORY_LINK/$PROJECT_CATEGORY/g' tempreadme.txt
echo "insert variable names $IMAGE_NAME and $PROJECT_CATEGORY"
find -maxdepth 1 -type f -iname readme.md -exec cp tempreadme.md {} \;
echo "move success"
echo "readback $IMAGE_NAME and $PROJECT_CATEGORY"
