$exclude = @("venv", "desafio10_monitoramento_preços.zip")
$files = Get-ChildItem -Path . -Exclude $exclude
Compress-Archive -Path $files -DestinationPath "desafio10_monitoramento_preços.zip" -Force