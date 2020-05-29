echo "Building..."
echo "======================================================================="
sh build.sh
echo "Copying site to ../lambdanaut.github.io"
sh copy_site.sh
cd ../lambdanaut.github.io
echo "Merging remote into local master branch..."
echo "======================================================================="
git fetch origin
git merge origin/master
echo "Committing to Git..."
echo "======================================================================="
git add .
git commit -m "commit-date: `date '+%Y-%m-%d %H:%M:%S'`"
echo "Pushing to remote..."
echo "======================================================================="
git push origin master
cd ../Lambdanaut
echo "Complete!"
echo "======================================================================="
