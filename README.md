# m3_app

音楽同人イベント M3 の非公式アプリプロジェクト

## 更新

(2026/10/25) v1.1.0
2026秋に対応

[androidAPK (GitHub Releases)](https://github.com/mmyha/m3_app/releases/latest)

旧版から上書きインストールできない場合は、アンインストールしてからインストールしてください。

*iosのビルドファイルの配布はできません。

## 環境

2024/10/9 created
2026/10/25 updated

**version**  
Flutter 3.47.8 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 737ba8f885 • 2026-10-22 21:37:31 -0700
Engine • hash dfd2e6cb7d319db05e3bf1503f3e2ac60f6288a2 (revision cf636b1dfb)
Tools • Dart 3.13.7

### 環境構築

`make setup`（要 fvm）

## 機能

### サークル一覧

- 1 度データ取得後、ローカルに保存されるのでオフラインで閲覧可能
- サークル名、スペース場所、サークル説明文に一致するワードで検索可能
- 詳細ではサークル情報、各リンク、ウィッシュリストへの登録が可能

  <img src="https://github.com/user-attachments/assets/6937b880-712b-40e5-971e-4dd023938791" width =200>
  <img src="https://github.com/user-attachments/assets/9aadc7ec-08ac-4a1a-a8b1-e98c9926686a" width =200>

### ウィッシュリスト機能

- 予算管理や行く予定のサークルの管理ができます
- データはローカルに保存
  
  <img src="https://github.com/user-attachments/assets/c8aa3781-fa3c-4fef-b8a9-15e70ccca5f2" width =200>
  <img src="https://github.com/user-attachments/assets/1924875d-5c9d-4210-9d97-74c0f6a260cf" width =200>

### 会場マップ閲覧機能

- 1 度データ取得後、ローカルに保存されるのでオフラインで閲覧可能
  
  <img src="https://github.com/user-attachments/assets/6511006d-6c65-4e61-9038-f8c520668edd" width =200>

## 開催ごとの更新

### マップのスペース位置

マップ上でスペースをハイライトするため、マップPDFからスペースごとの位置を `assets/map/spaces_<開催>.json` に生成しています。

1. その開催のマップPDFをダウンロードする
2. 前回の設定 `tool/map_spaces/<前回の開催>.json` を `tool/map_spaces/<開催>.json` にコピーし、配置が変わっていればホールの範囲(`areas`)を直す
   - 座標はPDFのポイント(左上原点)
   - `label` は範囲内の番号を全てそのラベルにする(壁際の列など)
   - `labels` + `assign` は範囲内のラベルのうち、`x`(横)/`y`(縦)の距離が一番近いものにする
3. `make map_spaces PDF=<マップPDF> EVENT=<開催>` で生成する
   - ラベルごとの件数と番号の抜けが表示されるので、マップと合っているか確認する
4. デバッグビルドでマップ画面右上のグリッドのボタンを押し、スペースの枠がマップと重なっているか確認する
   - 枠の中の線は番号が増える向き。a/b、x/y/z はこの向きに並ぶ
   - 向きが違うスペースは設定の `overrides` で `{"A-01": {"dir": "left"}}` のように直す
5. `test/repository/map_space_repository_test.dart` の件数などを今回のマップに合わせる
