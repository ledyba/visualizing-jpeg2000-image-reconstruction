mkdir -p encoded decoded

set -eux

for i in $(seq 1 100); do
  magick "encoded/${i}.jp2" "decoded/${i}.png"
done
