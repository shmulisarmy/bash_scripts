if [ "$#" -eq 2 ]; then
    name=$1
    repo=$2
elif [ "$#" -eq 1 ]; then
    name='shmulisarmy'
    repo=$1
fi

git clone https://github.com/$name/$repo.git;
echo cd $repo
