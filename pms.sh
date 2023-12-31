# Cleanup
echo Cleanup environment ...
rm -rf ./include/*NativeProxy.h
# generate header files form JNI.
echo Compiling JNI header files ...
javac -d bin/ src/java/cn/ybits/pms/common/nfi/NativeProxy.java
echo ... class NativeProxy is compiled ...
javah -cp bin/ -d ./include cn.ybits.pms.common.nfi.NativeProxy
echo ... header file is compiled ...
echo Successfully compiled JNI header files ...
# compile source files.

echo Compiling Another.class as testing ...
javac -cp bin/ -d bin/ src/java/Another.java
echo ...class Another is compiled ...
echo Successfully compiled java source files ...
# java -Djava.library.path=/home/dev/test/lib/ -cp bin/ Another
echo ============ Testing Result =============
java -cp bin/ Another
echo =========================================
