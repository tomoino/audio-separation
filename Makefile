## const
IMAGE_NAME=audiosep
CONTAINER_NAME=audiosep
JUPYTER_PORT=8889

build:
	docker build -t ${IMAGE_NAME} --force-rm=true --no-cache -f docker/Dockerfile ./docker

run:
	docker run --gpus all --rm --name ${CONTAINER_NAME} --shm-size=1g -p ${JUPYTER_PORT}:8888 -v ${PWD}/src:/workspace -w /workspace -dit ${IMAGE_NAME} jupyter-lab --allow-root --ip=0.0.0.0 --port=8888 --no-browser --NotebookApp.token='' --notebook-dir=/workspace

exec:
	docker exec -w /workspace -it ${CONTAINER_NAME} bash

stop:
	docker stop ${CONTAINER_NAME}