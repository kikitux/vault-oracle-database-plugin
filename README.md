#

1. `vagrant up`
2. `vagrant ssh vault`
3. `sudo su -`
4. register the plugin

```VAULT_ADDR=http://192.168.56.30:8200 vault write sys/plugins/catalog/database/oracle-database-plugin   sha_256="b894ad433acccaf7861cdbc084c3003bb4c3180abcba5997a3b2bb3350628ee2" command=vault-plugin-database-oracle```

output should be:
```
Success! Data written to: sys/plugins/catalog/database/oracle-database-plugin
```

