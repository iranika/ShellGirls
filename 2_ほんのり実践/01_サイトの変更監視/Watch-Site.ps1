param(
    $site_url = "http://iranika.github.io/mo-code/"
    ,$latest_file = "./latest_content.html"
    ,$current_file = "./current_content.html"
)


function SiteChangeEvent(){
    Write-Host "サイトが更新されました"
    Copy-Item current_content.html latest_content.html
}

#メイン処理
(Invoke-WebRequest $site_url).Content > $current_file

$current = Get-Content $current_file -Raw
$latest = Get-Content $latest_file -Raw

if($current -ne $latest){
    SiteChangeEvent
}
