REPO=github.com/krishealty/main

fmt:
	gofmt -s ./*; \
	echo "Done."

remod:
	rm -rf go.*
	go mod init ${REPO}
	go get
	echo "Done."

update:
	go get -u; \
	go mod tidy -v; \
	echo "Done."

linux:
	go build main.go
	@echo "Done."

unlinux:
	sudo rm -rf /usr/bin/main
	sudo rm -rf /usr/bin/lists/
	@echo "Done."

mac:
	sudo build main.go
	@echo "Done."


test:
	go test -v -race ./... ; \
	echo "Done."
