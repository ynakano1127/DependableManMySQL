# start up
1. docker立ち上げ
```
docker-compose up
```
2. 別ターミナルを開く（1.で-dオプションをつけるなら開かなくても良い）
3. シェルに入る
```
docker-compose exec db /bin/bash
psql -u root -p
Enter password: password
```

4. あとはsqlコマンドを打つだけ
# 初期データ挿入
```
mysql> source sql/resetCHUMON.sql
mysql> source sql/resetOrder.sql
mysql> source sql/resetGraduate.sql
```
# 課題のsqlファイル実行
```
mysql> source 12.sql
```
# その他
3306番ポートを開けている。datagripを使うとかなり幸せになれる