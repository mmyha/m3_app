# m3_app

音楽同人イベント M3 の非公式アプリプロジェクト

## 更新

(2026/4/26)
2026春に一時的に対応

2025秋版はアンインストールしてください。

[androidAPK](https://drive.google.com/drive/folders/1WXvfFeG9PM1Fcd4qMxm_fygnaX4F5bSK?usp=sharing)

*iosのビルドファイルの配布はできません。

## 環境

2024/10/9 created
2025/10/26 updated

**version**  
Flutter 3.35.6 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 9f455d2486 (2 weeks ago) • 2025-10-08 14:55:31 -0500
Engine • hash a5f2c36e367c13f868cfe98db5806f562c52c35e (revision d2913632a4) (18 days ago)

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
