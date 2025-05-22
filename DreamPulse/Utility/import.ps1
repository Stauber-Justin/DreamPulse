# Unicode
chcp 65001

# SQL Server-Verbindung
$server = "localhost\SQLEXPRESS"
$database = "DreamPulse"

# Relativer Pfad zum SQL-Ordner
$sqlPath = ".\DreamPulse\Alter Table\"
# ".\DreamPulse\Create Table\"
# ".\DreamPulse\Alter Table\"
# ".\DreamPulse\My_insert\"
# ".\DreamPulse\Scripte\"

# Alle .sql-Dateien rekursiv und alphabetisch holen
$sqlFiles = Get-ChildItem -Path $sqlPath -Filter *.sql -Recurse | Sort-Object FullName

foreach ($file in $sqlFiles) {
    Write-Host "Importiere $($file.FullName)..."
    sqlcmd -S $server -d $database -i "$($file.FullName)" -E -b -f 65001
    if ($LASTEXITCODE -ne 0) {
        Write-Host "---! Fehler beim Ausführen von $($file.FullName) !---:" -ForegroundColor Red
        exit 1
    }
}
Write-Host "---! Alle Skripte erfolgreich importiert. !---" -ForegroundColor Green