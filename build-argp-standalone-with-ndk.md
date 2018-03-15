## OpenSSL:
```shell
git clone  https://github.com/jahrome/argp-standalone
cd argp-standalone
export PATH=$PATH:/home/ubuntu/ndk/android-ndk-r14-beta2/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/
export CFLAGS="--sysroot=/home/ubuntu/ndk/android-ndk-r14-beta2/platforms/android-9/arch-arm/"
./configure --host=arm-linux-androideabi
#vi config.h # chane define of HAVE_SYSEXITS_H to 0
grep -v HAVE_SYSEXITS_H config.h > config.h
make
```
