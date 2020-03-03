docker build -t firefox .
set-variable -name DISPLAY -value YOUR-IP:0.0
docker run -ti --rm -e DISPLAY=$DISPLAY firefox