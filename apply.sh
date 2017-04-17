#!/bin/bash


sudo puppet apply --modulepath /home/tommi/puppet/ -e 'class {apache2:}'
