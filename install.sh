# path="$HOME/.local/bin/bscripts/"
# mkdir -pv $path
bin_path="$HOME/.local/bin/"
local_path="$HOME/.local/share/linux_scripts/"
config_path="$HOME/.config/linux_scripts/"

mkdir -pv $bin_path
mkdir -pv $config_path
mkdir -pv $local_path

cd configs
configs=(
  './envs'
)
for config in "${configs[@]}"; do
  cp $config $config_path
  echo "$config copied into "
done
cd ..

cd scripts
scripts=(
  "./histrm"
  "./pdfsplit"
  "./bright"
  "./kde_restore_config"
  "./dmenuwine"
  "./tmuxhandle"
  "./avenv/mkvenv"
  "./avenv/avenv"
  "./nospaces"
  "./myip"
  "./dirln"
)

for script in "${scripts[@]}"; do
  cp $script $bin_path
  echo "$script installed"
done
