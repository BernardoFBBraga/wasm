CLANGFLAGS = \
	--target=wasm32 \
	 -O3 \
	-flto \
	-nostdlib \
	-Wl,--no-entry \
	-Wl,--export-all \
	-Wl,--lto-O3 \
	-o

# ============ Flag Cheat sheet ===================
# Flag				# Meaning
# =================================================
# --target=wasm32	# Target web assembly
# -O3 				# Agressive optimizations
# -flto				# Add metadata for link-time optimizations
# nostdlib 			# Don’t try and link against a standard library
# -Wl,--XXX			# Parameter passed to linker
# 	--no-entry		# We don’t have an entry function 
# 	--export-all	# Export everything

target/lib.wasm: src/add.c src/sub.c
	clang $(CLANGFLAGS) $@ $^

clean:
	rm target/*.wasm

start:
	python3 -m http.server