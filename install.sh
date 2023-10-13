# path="$HOME/.local/bin/bscripts/"
# mkdir -pv $path
path="$HOME/.local/bin/"

scripts=(
    "./histrm"
    "./pdfsplit"
    "./bright"
    "./kde_restore_config"
    "./dmenuwine"
    "./tmuxhandle"
    "./mkvenv"
    "./avenv"
)

for script in "${scripts[@]}"
do
    cp $script $path
    echo "installed $script"
done
