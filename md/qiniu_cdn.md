
[qiniu-ruby-doc](http://developer.qiniu.com/docs/v6/sdk/ruby-sdk.html)

[huobazi/carrierwave-qiniu](https://github.com/huobazi/carrierwave-qiniu) 已经无法工作，
原因 [carrierwave-qiniu-issues-8](https://github.com/huobazi/carrierwave-qiniu/issues/8)

### 设置 ACCESS_KEY和SECRET_KEY

```
require 'qiniu'

Qiniu.establish_connection! :access_key => '<YOUR_APP_ACCESS_KEY>',
                            :secret_key => '<YOUR_APP_SECRET_KEY>'
```

### 添加文件

```
put_policy = Qiniu::Auth::PutPolicy.new("knewcoin-images", "big_Boston_City_Flow.jpg")

uptoken = Qiniu::Auth.generate_uptoken(put_policy)

local_file = Rails.root.join("public","uploads","event","event_cover","1","big_Boston_City_Flow.jpg")

code, result, response_headers = Qiniu::Storage.upload_with_put_policy(put_policy, local_file)

=>

[
    200,
    {
        "hash"=>"Fmhdm00Z6vVAXWkAKSP2198aYpJS",
        "key"=>"big_Boston_City_Flow.jpg"
    },
    {
        "server"=>[
            "nginx/1.4.4"
        ],
        "date"=>[
            "Sat, 26 Apr 2014 05:37:24 GMT"
        ],
        "content-type"=>[
            "application/json"
        ],
        "content-length"=>[
            "72"
        ],
        "connection"=>[
            "close"
        ],
        "access-control-allow-headers"=>[
            "X-File-Name, X-File-Type, X-File-Size"
        ],
        "access-control-allow-methods"=>[
            "OPTIONS, HEAD, POST"
        ],
        "access-control-allow-origin"=>[
            "*"
        ],
        "cache-control"=>[
            "no-store, no-cache, must-revalidate"
        ],
        "pragma"=>[
            "no-cache"
        ],
        "x-content-type-options"=>[
            "nosniff"
        ],
        "x-log"=>[
            "BDT;BDT:37475;v2.ups;qtbl.ups:1;MC;RS.mcs:1;RS:2;RSPROXY:4;rs.put:6;rs-upload.putFile:37483;UP:37484"
        ],
        "x-reqid"=>[
            "034AADhLYkTMb2gT"
        ]
    }
]
```

### 删除文件

```
code, result, response_headers = Qiniu::Storage.delete(bucket,key)

=>

[
    200,
    {

    },
    {
        "server"=>[
            "nginx/1.0.8"
        ],
        "date"=>[
            "Sat, 26 Apr 2014 05:40:06 GMT"
        ],
        "content-type"=>[
            "application/json"
        ],
        "connection"=>[
            "close"
        ],
        "content-length"=>[
            "0"
        ],
        "x-log"=>[
            "v2.sel;v2.ups:1;qtbl.rm:2;MQ;MC;RS.mcd:1;RS:5;RSPROXY:6"
        ],
        "x-reqid"=>[
            "fHEAAAs6Cqz6b2gT"
        ]
    }
]
```