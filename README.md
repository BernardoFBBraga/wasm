# WASM
A Web Assembly Study

# Project dependencies
You'll need the LLVM Compiler Infrastructure, which you can install with
`brew install llvm`

Don't forget to add the binaries to the enviroment.
For example, you can add `/home/linuxbrew/.linuxbrew/bin` to /etc/environment if you installed with brew

# Building and running
To build the lib, run
`make`

To run the web server run 
`make start`
This will start a web server and you can access the example in localhost:8000
The request to load the WASM resource would fail otherwise

To clean generated files, run
`make clean`
