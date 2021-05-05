#!/bin/bash

cd nx-libs

mk-build-deps -i --tool 'apt-get --yes'

debuild -uc -us

rm -f release/*

mv *.deb release/
