# audio-separation
## セットアップ
1. image を build
```
# Makefile のあるディレクトリで実行
make build
```
2. container を走らせる
```
make run
```

## 使い方
### terminal で python を実行
1. exec でコンテナの中に入る
```
make exec
```
2. 実行する
```
python3 sample.py
```

### jupyter notebook を使う
1. ssh でサーバーの jupyter notebook のポートをローカルマシンのポートと紐付ける（ポートフォワーディング）
```
ssh -L 8889:localhost:8889 server_name
```
2. ローカルで紐付けたポートをブラウザから開く
```
http://localhost:8889/
```

### container を停止する
1. 以下のコマンドを実行
```
make stop
```