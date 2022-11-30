$file_users=Import-Csv -Path C:\Users\jtaban\Desktop\usuarios.csv.txt 
foreach ($user in $file_users) { 
  $password=ConvertTo-SecureString $user.password -AsPlainText -Force
  New-LocalUser $user.cuenta -Password $password -Description $user.descripcion -FullName $user.nombre -AccountNeverExpires -PasswordNeverExpires
  Set-LocalUser $user.cuenta -PasswordNeverExpires $false 
  net user $user.cuenta /logonpasswordchg:yes 
  #Añadimos la cuenta de usuario en el grupo de Usuarios del sistema
  Add-LocalGroupMember -Group usuarios  -Member $user.cuenta 
  Add-LocalGroupMember -Group $user.departamento  -Member $user.cuenta
}