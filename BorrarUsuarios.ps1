$usuarios=Import-Csv -Path C:\Users\jtaban\Desktop\EliminarUsuarios.csv.txt
foreach  ($user in $usuarios)
{
	Remove-LocalUser $user.cuenta
}