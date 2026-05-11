param(
    [string]$ViveToolPath = "C:\ViveTool\ViVeTool.exe"
)

function Invoke-ViVeReset {
    param(
        [Parameter(Mandatory)]
        [int]$Id
    )

    if (-not (Test-Path $ViveToolPath)) {
        throw "ViVeTool not found at '$ViveToolPath'"
    }

    $args = @("/reset", "/id:$Id")

    Write-Host "vivetool $($args -join ' ')" -ForegroundColor Yellow
    & $ViveToolPath $args
}