bash -ex .travis-opam.sh

eval `opam config env`
opam install mirage -y
git clone -b mirage-dev https://github.com/mirage/mirage-skeleton.git
cd mirage-skeleton
MODE=unix make
MODE=xen  make
