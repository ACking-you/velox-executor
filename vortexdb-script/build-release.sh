echo "1.init cmake -B, you must have vcpkg and set vcpkg-script path to var of name vcpkg_script"
cmake -DCMAKE_BUILD_TYPE=Release \
-DCMAKE_CXX_FLAGS="-mavx2 -latomic" \
-DVELOX_BUILD_TESTING=OFF \
-DVELOX_BUILD_PYTHON_PACKAGE=OFF \
-DVELOX_BUILD_TEST_UTILS=OFF \
-DVORTEXDB_EXECUTOR_BUILD=ON \
-DCMAKE_TOOLCHAIN_FILE=$vcpkg_script \
-B build-release

echo "2.start build target vortexdb-executor release"
cmake --build build-release --target vortexdb-executor -- -j$(nproc)
