CLANG = $(HOME)/../linuxbrew/.linuxbrew/bin/clang
CLANGFLAGS = \
	--target=wasm32 \
	 -O3 \
	-flto \
	-nostdlib \
	-Wl,--no-entry \
	-Wl,--export-all \
	-Wl,--lto-O3 \
	-o
target/lib.wasm: src/add.c src/sub.c
	$(CLANG) $(CLANGFLAGS) $@ $^

clean:
	rm target/*.wasm

start:
	python3 -m http.server