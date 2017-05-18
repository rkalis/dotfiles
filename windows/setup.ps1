$reader = [System.IO.File]::OpenText("choco.list")
while($null -ne ($line = $read.ReadLine())) {
    cinst $line
}
