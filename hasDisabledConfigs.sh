disabled_config_list=("parameters" "environment" "annotations" "binary" "main" runtime" "web" limits")

for i in "${disabled_config_list[@]}"
do
  echo "$i"
  yq eval '(.packages.[] | has("$i"))' project.yml 
done

cat project.yml

