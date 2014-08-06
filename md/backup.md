
```
whenever
whenever --update-crontab

backup generate:model --trigger miao_coin_store --databases="mongodb" --storages="s3"
backup perform --trigger miao_coin_store
```