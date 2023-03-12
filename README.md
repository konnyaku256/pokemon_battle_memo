# pokemon_battle_memo

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## graphql-pokeapi の schema.graphql ファイルのダウンロード手順

1. ブラウザからオリジンのエンドポイント「https://graphql-pokeapi.vercel.app/api/graphql」にアクセスして、GraphQL Playground を起動する
2. 画面右端の「SCHEMA」ボタンをクリックして、サイドメニューを開く
3. サイドメニュー右上の「DOWNLOAD」ボタンをクリックして、表示されたセレクトボックスから「SDL」ボタンをクリックして「schema.graphql」ファイルをダウンロードする

※本当は Introspection Query を使用して直接スキーマをダウンロードしたかったが、同一オリジン以外からの Introspection Query が許可されていなかったため、上記の手順を採用しています。

## 地域化 CSV ファイルのソース

- pokemon.csv
  - [https://wiki.ポケモン.com/wiki/ポケモンの外国語名一覧](https://wiki.xn--rckteqa2e.com/wiki/%E3%83%9D%E3%82%B1%E3%83%A2%E3%83%B3%E3%81%AE%E5%A4%96%E5%9B%BD%E8%AA%9E%E5%90%8D%E4%B8%80%E8%A6%A7)
- move.csv
  - https://bulbapedia.bulbagarden.net/wiki/List_of_moves_in_other_languages
- ability.csv
  - https://bulbapedia.bulbagarden.net/wiki/List_of_Abilities_in_other_languages
- type.csv
  - 特になし
- item.csv
  - [https://wiki.ポケモン.com/wiki/アイテムの外国語名一覧
    ナビゲーションに移動検索に移動
    ](https://wiki.xn--rckteqa2e.com/wiki/%E3%82%A2%E3%82%A4%E3%83%86%E3%83%A0%E3%81%AE%E5%A4%96%E5%9B%BD%E8%AA%9E%E5%90%8D%E4%B8%80%E8%A6%A7)

## 持ち物の画像

- https://www.serebii.net
