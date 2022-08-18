#!/bin/bash
cd ./backend
go mod download
go get
go build -o ../build/backend/app
