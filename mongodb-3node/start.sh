#!/bin/bash

var cfg = {
     "_id": "kazma-rs",
     "members": [
         {
             "_id": 0,
             "host": "mongo-p:27017"
         },
         {
             "_id": 1,
             "host": "mongo-s1:27017"
         },
         {
             "_id": 2,
             "host": "mongo-s2:27017"
         }
     ]
};

rs.initiate(cfg, { force: true });
rs.reconfig(cfg, { force: true });