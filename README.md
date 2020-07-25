# Docker-React

DockerでNuxt環境を構築するためのリポジトリです。

## 手順

1. **イメージの作成**  
`docker-compose build`
2. **Nuxtプロジェクトの作成**  
これで通常のプロジェクトの選択の画面が現れる  
`docker-compose run --rm react npx create-react-app`  
3. **設定ファイルの書き換え**  
プロジェクトの作成が終わると、`./app`内に`package.json`が作成されるので、中を下記のように書き換え  
```json  
  "scripts": {
--    "dev": "nuxt",
++    "dev": "HOST=0.0.0.0 PORT=3000 nuxt"
```  
4. **コンテナの立ち上げ**  
    `docker-compose up -d`
5. **ブラウザで確認**  
   `localhost:3000`にアクセスして、ロゴが表示されれば完了
