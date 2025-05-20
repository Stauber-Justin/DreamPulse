# SQL Server-Verbindung
$server = "localhost\SQLEXPRESS"
$database = "DreamPulse"
$user = "sa"
$password = "root"  # Alternativ mit Windows Auth

# Relativer Pfad zum SQL-Ordner
$sqlPath = ".\Create Table\"

# Alle .sql-Dateien alphabetisch holen
$sqlFiles = Get-ChildItem -Path $sqlPath -Filter *.sql | Sort-Object Name

foreach ($file in $sqlFiles) {
    Write-Host "Importiere $($file.Name)..."
    
    sqlcmd -S $server -d $database -U $user -P $password -i "$($file.FullName)"

    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Fehler beim Ausführen von $($file.Name)" -ForegroundColor Red
        exit 1
    }
}
Write-Host "✅ Alle Skripte erfolgreich importiert." -ForegroundColor Green
