"""shortcut for quickly adding, commiting and pushing to github + works even if no commit message provided"""

if [ $# -gt 0 ]; then
commit_message="$1"
else
commit_message="empty commit message"
fi

git add *
git commit -m "$commit_message"
git push