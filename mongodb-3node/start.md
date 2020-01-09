#!/bin/bash

``` bash

var cfg = {
     "_id": "kazma-rs",
     "protocolVersion": 1,
     "members": [
         {
             "_id": 0,
             "host": "mongo-p:27017",
             "priority": 3
         },
         {
             "_id": 1,
             "host": "mongo-s1:27017",
             "priority": 1
         },
         {
             "_id": 2,
             "host": "mongo-s2:27017",
             "priority": 1
         }
     ]
}

rs.initiate(cfg)

rs.remove("mongod3.example.net:27017")
```

### 配置后，指定复制集的优先级

配置过程：
通过修改priority的值来实现（默认的优先级是1（0-100），priority的值设的越大，就优先成为主）

1. PRIMARY> config=rs.conf()
2. PRIMARY>config.members[0].priority = 3
3. PRIMARY> rs.reconfig(config)

注意：第2步members大括号里面的成员和_id是没有关系的，而是rs.conf查出来节点的数值的顺序

这些操作必须在Primary上进程
