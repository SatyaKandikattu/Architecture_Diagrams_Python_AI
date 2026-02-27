param(
    [string]$dotfile = "diagrams/contoso_architecture.dot",
    [string]$outfile = "diagrams/contoso_architecture.png"
)

$dotPath = "C:\Program Files\Graphviz\bin\dot.exe"
if (Test-Path $dotPath) {
    & "$dotPath" -Tpng $dotfile -o $outfile
    Write-Output "Rendered: $outfile (using $dotPath)"
} else {
    # fallback to dot on PATH
    dot -Tpng $dotfile -o $outfile
    Write-Output "Rendered: $outfile (using dot from PATH)"
}
