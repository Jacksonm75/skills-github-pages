#!/bin/bash
# 将 _config.yml 中的 {{login}} 替换为环境变量 LOGIN 的值
while IFS='' read -r line; do
  echo "${line//\{\{login\}\}/$LOGIN}"
done < _config.yml > _config.yml.tmp
mv _config.yml.tmp _config.yml