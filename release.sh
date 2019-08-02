#!/usr/bin/env sh
set -e

git pull
git checkout master

echo "\033[32mSelect release version level:\033[0m"
select VERSION_LEVEL in patch minor major; do
  break
done

echo "\033[32mEnter release message: \033[0m"
read MESSAGE

clear

echo "
Releasing version level: \033[33m$VERSION_LEVEL\033[0m\n
Releasing version message: \033[33m$MESSAGE\033[0m\n
"
read -p "Are you sure? (y/N)" -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
  if [[ $(git status --porcelain) ]]; then
    git add -A
    git commit -am "build: $MESSAGE"
  fi

  npm version $VERSION_LEVEL --message "release: %s"

  git push
  git push --tags

  npm run build

  /Applications/wechatwebdevtools.app/Contents/MacOS/cli -u $(npx -c 'echo "$npm_package_version"')@$(pwd) --upload-desc $MESSAGE
fi
