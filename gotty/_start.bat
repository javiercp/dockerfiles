@echo off
docker run --rm -i -t -p 8080:8080 --env-file=env_file gotty:latest
