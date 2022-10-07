#!/bin/bash

echo "Making directories..."

mkdir public
mkdir adm
mkdir sal
mkdir sec

echo "Done directories"

echo "================"

echo "Making users groups..."

groupadd SAL_GRP
groupadd ADM_GRP
groupadd SEC_GRP

echo "Done users groups"

echo "================="

echo "Adding users..."

useradd john -m -s /bin/bash -p $(openssl passwd traveler) -G SAL_GRP
useradd kate -m -s /bin/bash -p $(openssl passwd traveler) -G SAL_GRP
useradd nash -m -s /bin/bash -p $(openssl passwd traveler) -G SAL_GRP

useradd jack -m -s /bin/bash -p $(openssl passwd traveler) -G ADM_GRP
useradd paul -m -s /bin/bash -p $(openssl passwd traveler) -G ADM_GRP
useradd mike -m -s /bin/bash -p $(openssl passwd traveler) -G ADM_GRP

useradd josh -m -s /bin/bash -p $(openssl passwd traveler) -G SEC_GRP
useradd phil -m -s /bin/bash -p $(openssl passwd traveler) -G SEC_GRP
useradd anne -m -s /bin/bash -p $(openssl passwd traveler) -G SEC_GRP

echo "Done adding users"

echo "================="

echo "Directories presets..."

chown root:SAL_GRP /scripts/sal
chown root:ADM_GRP /scripts/adm
chown root:SEC_GRP /scripts/sec

chmod 770 /scripts/sal
chmod 770 /scripts/adm
chmod 770 /scripts/sec
chmod 777 /scripts/public

echo "Done settings"
