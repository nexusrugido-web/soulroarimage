# renomear.ps1 — numera as imagens de cada pasta de video por data de modificacao
# A mais antiga vira scene-01, a mais recente vira a ultima.
# Mesma logica da fila de midias do Cosmic Processor.

$ErrorActionPreference = 'Stop'
$exts = @('.png', '.jpg', '.jpeg', '.webp')

if (-not (Test-Path 'videos')) {
    Write-Host '  pasta videos/ nao existe ainda'
    exit 0
}

$pastas = Get-ChildItem -Path 'videos' -Directory

if ($pastas.Count -eq 0) {
    Write-Host '  nenhuma pasta de video encontrada'
    exit 0
}

foreach ($pasta in $pastas) {

    $imgs = Get-ChildItem -Path $pasta.FullName -File |
            Where-Object { $exts -contains $_.Extension.ToLower() } |
            Sort-Object LastWriteTime

    if ($imgs.Count -eq 0) {
        Write-Host ('  ' + $pasta.Name + ' - vazia, ignorada')
        continue
    }

    # Ja esta tudo numerado? nao mexe.
    $numeradas = @($imgs | Where-Object { $_.BaseName -match '^scene-\d{2}$' })
    if ($numeradas.Count -eq $imgs.Count) {
        Write-Host ('  ' + $pasta.Name + ' - ja numerado (' + $imgs.Count + ' imagens)')
        continue
    }

    # Passo 1: nome temporario, evita colisao com nomes ja existentes
    $i = 0
    foreach ($f in $imgs) {
        $i++
        $novo = 'tmp-' + $i.ToString('00') + $f.Extension.ToLower()
        Rename-Item -LiteralPath $f.FullName -NewName $novo
    }

    # Passo 2: nome final
    $tmps = Get-ChildItem -Path $pasta.FullName -File -Filter 'tmp-*' | Sort-Object Name
    $i = 0
    foreach ($f in $tmps) {
        $i++
        $novo = 'scene-' + $i.ToString('00') + $f.Extension.ToLower()
        Rename-Item -LiteralPath $f.FullName -NewName $novo
    }

    Write-Host ('  ' + $pasta.Name + ' - ' + $i + ' imagens renomeadas (scene-01 a scene-' + $i.ToString('00') + ')')
}

exit 0
