if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Rock11178/TOM3M.git /TOM3M
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TOM3M
fi
cd /TOM3M
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py
