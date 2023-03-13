# pokemon_battle_memo

ポケモン対戦用のメモ特化型アプリ「ばとめも」の Flutter プロジェクトです。

[![Codemagic build status](https://api.codemagic.io/apps/640e643dee91819f46bfc545/640e643dee91819f46bfc544/status_badge.svg)](https://codemagic.io/apps/640e643dee91819f46bfc545/640e643dee91819f46bfc544/latest_build)

## 依存している外部リソース

- [graphql-pokeapi | The Unofficial GraphQL for PokeAPI](https://graphql-pokeapi.vercel.app/)
  - [PokeAPI](https://pokeapi.co/) の非公式 GraphQL API
  - 各種ポケモンのタイプや特性、種族値の取得に使用
- [serebii.net](https://www.serebii.net)
  - 持ち物の画像の表示に使用

## 組み込みリソースの情報源

### 地域化 CSV ファイル

- [pokemon.csv](./assets/pokemon.csv)
  - [https://wiki.ポケモン.com/wiki/ポケモンの外国語名一覧](https://wiki.xn--rckteqa2e.com/wiki/%E3%83%9D%E3%82%B1%E3%83%A2%E3%83%B3%E3%81%AE%E5%A4%96%E5%9B%BD%E8%AA%9E%E5%90%8D%E4%B8%80%E8%A6%A7)
- [move.csv](./assets/move.csv)
  - https://bulbapedia.bulbagarden.net/wiki/List_of_moves_in_other_languages
- [ability.csv](./assets/ability.csv)
  - https://bulbapedia.bulbagarden.net/wiki/List_of_Abilities_in_other_languages
- [type.csv](./assets/type.csv)
  - 特になし
- [item.csv](./assets/item.csv)
  - [https://wiki.ポケモン.com/wiki/アイテムの外国語名一覧](https://wiki.xn--rckteqa2e.com/wiki/%E3%82%A2%E3%82%A4%E3%83%86%E3%83%A0%E3%81%AE%E5%A4%96%E5%9B%BD%E8%AA%9E%E5%90%8D%E4%B8%80%E8%A6%A7)

## local 開発環境

必要なもの

- [Flutter](https://flutter.dev/)
  - [Android Studio](https://developer.android.com/studio)
  - [Xcode](https://developer.apple.com/xcode/)

## 各種コマンド

[Makefile](./Makefile) に各種コマンドのショートカットが設定されています

```shell
$ make help
```

### GraphQL 系コマンドの使用例

**1 「手動作業の手順」 > 「graphql-pokeapi の schema.graphql ファイルダウンロード」に従って、graphql-pokeapi の GraphQL スキーマをダウンロード**

**2. GraphQL クエリを記述したファイルを作成**

```shell
$ vi lib/graphql/read_pokemon.graphql
```

```graphql
query ReadPokemon($name: String!) {
  pokemon(name: $name) {
    name
  }
}
```

**3. GraphQL スキーマから Dart コードを生成**

```shell
$ make generate-dart-code
```

```shell
$ ls lib/graphql

all_users.ast.gql.dart
all_users.data.gql.dart
all_users.data.gql.g.dart
all_users.graphql
all_users.req.gql.dart
all_users.req.gql.g.dart
all_users.var.gql.dart
all_users.var.gql.g.dart
```

## CI/CD

[Codemagic](https://codemagic.io/start/) を使用して、ストア配布用のバイナリをビルド・公開しています

[konnyaku256/pokemon_battle_memo](https://github.com/konnyaku256/pokemon_battle_memo) への新規タグ作成をトリガーにビルド・公開のワークフローが実行されます

### 新バージョンリリース方法

アプリをリリースします（APP_VERSION）

```shell
$ make release-app APP_VERSION=1.0.0
```

## 手動作業の手順

### graphql-pokeapi の schema.graphql ファイルダウンロード

1. ブラウザからオリジンのエンドポイント「[https://graphql-pokeapi.vercel.app/api/graphql](https://graphql-pokeapi.vercel.app/api/graphql)」にアクセスして、GraphQL Playground を起動する
2. 画面右端の「SCHEMA」ボタンをクリックして、サイドメニューを開く
3. サイドメニュー右上の「DOWNLOAD」ボタンをクリックして、表示されたセレクトボックスから「SDL」ボタンをクリックして「schema.graphql」ファイルをダウンロードする

※本当は Introspection Query を使用して直接スキーマをダウンロードしたかったが、同一オリジン以外からの Introspection Query が許可されていなかったため、上記の手順を採用しています。
