#!/bin/bash
export MISP_USER='misp'
export MISP_PASSWORD="$(openssl rand -hex 32)"
export PATH_TO_MISP='/var/www/MISP'
export WWW_USER='apache'
export FQDN="misp.local"
export MISP_BASEURL=''
export MISP_LIVE='1'
export DBHOST='localhost'
export DBNAME='misp'
export DBUSER_ADMIN='root'
export DBPASSWORD_ADMIN="$(openssl rand -hex 32)"
export DBUSER_MISP='misp'
export DBPASSWORD_MISP="$(openssl rand -hex 32)"
# change SSL section to match YOUR company
export OPENSSL_CN=$FQDN
export OPENSSL_C='LU'
export OPENSSL_ST='State'
export OPENSSL_L='Location'
export OPENSSL_O='Organization'
export OPENSSL_OU='Organizational Unit'
export OPENSSL_EMAILADDRESS="info@$FQDN"
export GPG_REAL_NAME='Autogenerated Key'
export GPG_COMMENT='WARNING: MISP AutoGenerated Key consider this Key VOID!'
export GPG_EMAIL_ADDRESS='admin@admin.test'
export GPG_KEY_LENGTH='3072'
export GPG_PASSPHRASE="$(openssl rand -hex 32)"
alias debug="echo -e"
alias checkAptLock="echo 'Function used in Installer to make sure apt is not locked'"
export upload_max_filesize=50M
export post_max_size=50M
export max_execution_time=300
export memory_limit=512M
export CAKE="$PATH_TO_MISP/app/Console/cake"
echo "Misp User: $MISP_USER"
echo "Misp User Password: $MISP_PASSWORD"
echo "Admin (root) DB Password: $DBPASSWORD_ADMIN"
echo "User  (misp) DB Password: $DBPASSWORD_MISP"
