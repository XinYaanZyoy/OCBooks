timestamp=$(date +%s)
echo timestamp: $timestamp
git add .
git status
git commit -m %timestamp%
git status
git push origin master