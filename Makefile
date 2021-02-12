VERSION=9.1.1

free:
	docker build --no-cache --pull --build-arg edition=free --build-arg version=${VERSION} -t culturecreatesorg/graphdb:${VERSION}-free free-edition

ee:
	docker build --no-cache --pull --build-arg edition=ee --build-arg version=${VERSION} -t culturecreatesorg/graphdb:${VERSION}-ee .

se:
	docker build --no-cache --pull --build-arg edition=se --build-arg version=${VERSION} -t culturecreatesorg/graphdb:${VERSION}-se .

ee-upload: ee
	docker push culturecreatesorg/graphdb:${VERSION}-ee

se-upload: se
	docker push culturecreatesorg/graphdb:${VERSION}-se
