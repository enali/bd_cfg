hosts="sl1 sl2"
dir=$(basename `pwd`)

if ! $(which rsync >/dev/null 2>&1); then
  echo "Error: rsync doesn't exist"
  exit 1
fi

for h in $hosts; do
  rsync -rul --delete * $h:~/$dir
done
