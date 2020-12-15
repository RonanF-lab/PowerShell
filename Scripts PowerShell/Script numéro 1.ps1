#1er bloc selection de l'action à réaliser
$choose = Read-Host -prompt('Voulez vous : 1 = créer un utilisateur, 2 = supprimer un utilisateur, 3 = modifier un utilisateur,
 4 = voir tout les utilisateurs, 5 = faire une recherche sur un utilisateur')

#2eme bloc si le choix égale à 1 création d'un utilisateur
If ($choose -eq 1)
{
    $name = Read-Host -prompt('Quel sera le nom du nouvel utilisateur ?')
    New-LocalUser -Name $name 
}
#3eme bloc si le choix égale à 2 suppression d'un utilisateur
elseif ($choose -eq 2)
{
    $removename = Read-Host -Prompt("Quel utilisateur voulez-vous supprimer ?")
    Remove-LocalUser -Name $removename
}
#4eme bloc si le choix égale à 3 modification d'un utilisateur
elseif ($choose -eq 3){
    $nametochange = Read-Host -prompt ("Quel est le nom d'utilisateur que vous souhaitez modifier ?")
    $namechange = Read-Host -prompt('Quel nouveau nom voulez vous donnez à votre utilisateur ?')
    Rename-LocalUser -Name $nametochange -NewName $namechange 
}
#5eme bloc si le choix égale à 4 affichage de tous les utilisateurs 
elseif ($choose -eq 4){
    Get-LocalUser
}
#6eme bloc si le choix égale à 5 afficher les infos sur un utilisateur précisément 
elseif ($choose -eq 5){
    $infoname = Read-Host -Prompt("Quel est le nom de l'utilisateur sur qui vous souhaitez avoir des informations ?")
    Get-LocalUser -Name $infoname
}