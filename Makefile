PROTO_FILES_DIR=./protos/*.proto
GEN_FILES_DIR=./pkg/api
SOURCE_RELATIVE=source_relative

gen:
	protoc \
  -I ./protos \
  ${PROTO_FILES_DIR} \
  --go_out=${GEN_FILES_DIR} \
  --go_opt=paths=${SOURCE_RELATIVE} \
  --go-grpc_out=${GEN_FILES_DIR} \
  --go-grpc_opt=paths=${SOURCE_RELATIVE}