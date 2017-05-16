#!/bin/bash


sudo puppet apply --modulepath modules -e 'class {react-native:}'
sudo puppet apply --modulepath modules -e 'class {atom:}'
sudo puppet apply --modulepath modules -e 'class {android-studio:}'