
# create dir if doesn't exist
[ -d /usr/local/vault/plugins ] || mkdir -p /usr/local/vault/plugins

# change to directory
pushd /usr/local/vault/plugins

# download plugin if needed
[ -f vault-plugin-database-oracle_0.1.5_linux_amd64.zip ] || wget https://releases.hashicorp.com/vault-plugin-database-oracle/0.1.5/vault-plugin-database-oracle_0.1.5_linux_amd64.zip

# uncompress plugin
[ -f vault-plugin-database-oracle ] || unzip vault-plugin-database-oracle_0.1.5_linux_amd64.zip

# display sha256sum
sha256sum vault-plugin-database-oracle
