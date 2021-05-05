#!/bin/bash

cd nx-libs

mk-build-deps -i --tool 'apt-get --yes'

debuild -uc -us

cd ..

rm -f release/*.deb

mv *.deb release/
rm -f *.build *.buildinfo *.changes *.dsc *.tar.gz
