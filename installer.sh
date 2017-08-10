tar -xvf Python-2.7.13.tar.xz
cd Python-2.7.13
./configure --prefix=$HOME/Python
make
make install
export PATH=$HOME/Python/bin/python:$PATH

cd ..
rm -rf Python-2.7.13*
unzip setuptools-36.2.7.zip
cd setuptools-36.2.7
$HOME/Python/bin/python setup.py install

cd ..
rm -rf setuptools-36.2.7*
tar -xzvf paramiko-2.2.1.tar.gz
cd paramiko-2.2.1
$HOME/Python/bin/python setup.py install

cd ..
rm -rf paramiko-2.2.1*
tar -xzvf pyasn1-0.3.2.tar.gz
cd pyasn1-0.3.2
$HOME/Python/bin/python setup.py install

cd ..
rm -rf pyasn1-0.3.2*
tar -xzvf libffi-3.2.1.tar.gz
cd libffi-3.2.1
./configure --prefix=$HOME/Python/libffi
make
make install
export PKG_CONFIG_PATH=$HOME/Python/libffi/lib/pkgconfig/:$PKG_CONFIG_PATH

cd ..
rm -rf libffi-3.2.1*
tar -xzvf cffi-1.10.0.tar.gz
cd cffi-1.10.0
$HOME/Python/bin/python setup.py install


cd ..
rm -rf cffi-1.10.0*
tar -xzvf pycparser-2.18.tar.gz
cd pycparser-2.18
$HOME/Python/bin/python setup.py install


cd ..
rm -rf pycparser-2.18*
tar -xzvf six-1.10.0.tar.gz
cd six-1.10.0
$HOME/Python/bin/python setup.py install


cd ..
rm -rf six-1.10.0*
tar -xzvf PyNaCl-1.1.2.tar.gz
cd PyNaCl-1.1.2
$HOME/Python/bin/python setup.py install


cd ..
rm -rf PyNaCl-1.1.2*
tar -xzvf bcrypt-3.1.3.tar.gz
cd bcrypt-3.1.3
$HOME/Python/bin/python setup.py install


cd ..
rm -rf bcrypt-3.1.3*
tar -xzvf ipaddress-1.0.18.tar.gz
cd ipaddress-1.0.18
$HOME/Python/bin/python setup.py install


cd ..
rm -rf ipaddress-1.0.18*
unzip enum34-1.1.6.zip
cd enum34-1.1.6
$HOME/Python/bin/python setup.py install


cd ..
rm -rf enum34-1.1.6*
tar -xzvf asn1crypto-0.22.0.tar.gz
cd asn1crypto-0.22.0
$HOME/Python/bin/python setup.py install


cd ..
rm -rf asn1crypto-0.22.0*
tar -xzvf idna-2.6.tar.gz
cd idna-2.6
$HOME/Python/bin/python setup.py install
rm -rf idna-2.6*

cd ..
tar -xzvf openssl-1.1.0f.tar.gz
cd openssl-1.1.0f
export CWD=$(pwd)
./config no-shared no-ssl2 no-ssl3 -fPIC --prefix=${CWD}/openssl
make && make install
export CFLAGS="-I${CWD}/openssl/include"
export LDFLAGS="-L${CWD}/openssl/lib"


cd ..
tar -xzvf cryptography-2.0.3.tar.gz
cd cryptography-2.0.3
$HOME/Python/bin/python setup.py install


cd ..
rm -rf cryptography-2.0.3* openssl-1.1.0f*
tar -xzvf Fabric-1.13.2.tar.gz
cd Fabric-1.13.2
$HOME/Python/bin/python setup.py install
cd ..
rm -rf Fabric-1.13.2*
cd $HOME/Python/bin/
