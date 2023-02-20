# path="$HOME/.local/bin/bscripts/"
# mkdir -pv $path
path="$HOME/.local/bin/"

scripts=(
    "./bpdfsplit"
    "./bright"
    "./bkderestore"
    "./dmenuwine"
)

for script in "${scripts[@]}"
do
    cp $script $path
    echo "installed $script"
done
