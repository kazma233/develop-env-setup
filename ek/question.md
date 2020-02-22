1. get error: `max virtual memory areas vm.max_map_count [65530] is too low, increase to at least`

   在宿主主机上执行这个命令：`sudo sysctl -w vm.max_map_count=262144`

2. 想要持久化es的数据，结果疯狂报权限不足
   
   这也需要对宿主主机的持久化文件夹给与足够的权限。貌似在es的容器里，是在用`elasticsearch`这个用户在操作。我干脆直接给了`777`权限