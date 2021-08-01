IF [%1] == [] GOTO error


docker login
RMDIR /s /q .\dist\

call docker_build.bat

rem RUN DOCKER TO PUBLISH
docker tag socket-io-adpater-server:latest registry.aptero.co/socket-io-adpater-server:latest
docker push registry.aptero.co/socket-io-adpater-server:latest

docker tag socket-io-adpater-server:latest registry.aptero.co/socket-io-adpater-server:%1
docker push registry.aptero.co/socket-io-adpater-server:%1


GOTO :EOF
:error
ECHO incorrect_parameters