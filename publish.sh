set mydate=$(date)
echo timestamp: $mydate
git add .
git status
git commit -m $mydate
git status
git push origin master