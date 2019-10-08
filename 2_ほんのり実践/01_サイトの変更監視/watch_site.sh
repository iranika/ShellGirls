#!/bin/sh

#初期化
INIT_URL="https://iranika.github.io/mo-code/"
URL=${1:-$INIT_URL}
INIT_CURRENT_FILE="./current_content.html"
CURRENT_FILE=${2:-$INIT_CURRENT_FILE}
INIT_LATEST_FILE="./latest_content.html"
LATEST_FILE=${3:-$INIT_LATEST_FILE}

# サイトの変更を検知したら実行される関数
function site_change_event(){
    echo "サイトが更新されたよ"
    #環境によってはaliasでForce禁止だったりするため、alias無効でcp
    \cp -f ./current_content.html ./latest_content.html
}

# メイン処理
## サイトのコンテンツをCURRENT_FILEに書き出し
curl -s $URL > $CURRENT_FILE

## サイトのコンテンツが変更されていたらsite_change_eventを呼び出す
diff -q $CURRENT_FILE $LATEST_FILE || site_change_event 
