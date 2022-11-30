$file_groups=Import-Csv -Path C:\Users\jtaban\Desktop\CrarGrupos.csv.txt 
foreach ($group in $file_groups) { 
  New-LocalGroup -Name $group.nombre -Description $group.Descripcion
}
