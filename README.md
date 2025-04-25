# m3_app

音楽同人イベント M3 の非公式アプリプロジェクト

## 更新

(2025/4/25)
2025 春に一時的に対応

branch → ver2025spring

(レスポンスのデータ構造が前回若干ことなっており、互換対応ができていないのでmainにはマージしていない)

[androidAPK](https://drive.google.com/drive/folders/1yLqPOpCbROfYeZSzF7jMl8pq716PPKSq?usp=sharing)

## 環境

2024/10/9 created

**version**  
Flutter 3.24.3 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 2663184aa7 (4 weeks ago) • 2024-09-11 16:27:48 -0500
Engine • revision 36335019a8
Tools • Dart 3.5.3 • DevTools 2.37.3

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
