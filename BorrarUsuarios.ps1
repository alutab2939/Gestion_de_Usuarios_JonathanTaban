$usuarios=Import-Csv -Path C:\Users\jtaban\Desktop\usuarios.csv.txt
foreach  ($user in $usuarios)
{
	Remove-LocalUser $user.cuenta
}