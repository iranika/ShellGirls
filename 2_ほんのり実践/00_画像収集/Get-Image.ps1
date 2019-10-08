params(
    $url="https://www.atelier-boz.co.jp/products/list?category_id=6"
)
$srcs = (Invoke-WebRequest $url).Images.src 

$srcs | % -Parallel {
    $filename = $_ -replace ".*/"
    Invoke-WebRequest ("https://www.atelier-boz.co.jp/" + $_) -OutFile $filename
}