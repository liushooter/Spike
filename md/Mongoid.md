### avoid Mongoid::Errors::DocumentNotFound

` raise_not_found_error: false`

[Mongoid::Errors::DocumentNotFound](http://stackoverflow.com/questions/18638745/mongoiderrorsdocumentnotfound-raise-not-found-error)


set

inc


#### 整库备份
mongodump -h dbhost -d dbname -o dbdirectory

#### 整库恢复
mongorestore -h dbhost -d dbname –directoryperdb dbdirectory


#### rename-a-mongodb-database

```
db.copyDatabase("db_to_rename","db_renamed","localhost")
use db_to_rename
db.dropDatabase();
```