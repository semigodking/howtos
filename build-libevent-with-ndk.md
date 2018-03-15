## OpenSSL:
```shell
tar -zxf openssl.tar.gz
cd openssl
export PATH=$PATH:/home/ubuntu/ndk/android-ndk-r13b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/
export CFLAGS="--sysroot=/home/ubuntu/ndk/android-ndk-r14-beta2/platforms/android-9/arch-arm/"
./Configure android-armeabi
./config
make
```

## Libevent
```shell
mkdir build
cd build
# NDK r13
cmake -d -DCMAKE_TOOLCHAIN_FILE=~/ndk/android-ndk-r13b/build/cmake/android.toolchain.cmake -DANDROID_TOOLCHAIN=gcc -DOPENSSL_INCLUDE_DIR=~/openssl-1.1.0e/include -DOPENSSL_SSL_LIBRARY=~/openssl-1.1.0e/  -DOPENSSL_CRYPTO_LIBRARY=~/openssl-1.1.0e/ ..
# NDK r14
cmake -d -DCMAKE_TOOLCHAIN_FILE=~/ndk/android-ndk-r14-beta2/build/cmake/android.toolchain.cmake -DANDROID_TOOLCHAIN=gcc -DOPENSSL_INCLUDE_DIR=~/openssl-1.1.0e/include -DOPENSSL_SSL_LIBRARY=~/openssl-1.1.0e/  -DOPENSSL_CRYPTO_LIBRARY=~/openssl-1.1.0e/ -DEVENT__HAVE_WAITPID_WITH_WNOWAIT_EXITCODE=0 -DEVENT__DISABLE_OPENSSL=ON ..

```


