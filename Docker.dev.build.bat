@ECHO OFF

SET VERSION=0.0.1

PUSHD client
docker build -f Dockerfile.dev . -t udemy/complex-client:%VERSION%
POPD

PUSHD server
docker build -f Dockerfile.dev . -t udemy/complex-server:%VERSION%
POPD

PUSHD worker
docker build -f Dockerfile.dev . -t udemy/complex-worker:%VERSION%
POPD

ECHO Run with:
ECHO    docker run --rm -it udemy/complex-client:%VERSION%
ECHO    docker run --rm -it udemy/complex-server:%VERSION%
ECHO    docker run --rm -it udemy/complex-worker:%VERSION%