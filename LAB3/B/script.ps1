$folder = Get-ChildItem -Path .\texts

Clear-Content "list.txt"

foreach($file in $folder){
    if(Select-String -Pattern "море" -Path $file){
       Add-content list.txt -value $file
    }
}