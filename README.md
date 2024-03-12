Docker image to cross-compile slint application for raspberry pi:
1. Build docker image:
   
   ```
   sudo ./build.sh
   ```
2. Run docker container:
   
   ```
   sudo docker run --mount type=bind,source=<path/to/sdk>,target=/sdk -it <docker-image>
   ```
3. Clone project repo (add 'set(Rust_CARGO_TARGET arm-unknown-linux-gnueabi)' to CMakeLists.txt):
   
   ```
   git clone https://github.com/slint-ui/slint-cpp-template my-project
   ```
4. Source env from sdk:
   
   ```
   source /sdk/environment-setup-cortexa7t2hf-neon-vfpv4-oe-linux-gnueabi
   ```
5. Create builddir and build app:
    
   ```
   mkdir build
   cmake -B build
   cmake --build build
   ```
