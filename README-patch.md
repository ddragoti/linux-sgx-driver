# Added a few metrics to Intel driver: see show_values.sh 

#Merge with newest upstream changes:

git remote add upstream https://github.com/01org/linux-sgx-driver || true
git fetch upstream
git merge upstream/master
git commit -m "merged upstream changes"
git push
