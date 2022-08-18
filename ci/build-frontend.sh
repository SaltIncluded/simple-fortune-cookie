#!/bin/bash
cd ./frontend
go mod download
go get
go build -o ../build/frontend/app