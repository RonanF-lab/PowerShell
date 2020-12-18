# Scripts de gestion des comptes utilisateurs

## Pourquoi faire ? 
 
Pour ce premier script le  but était de réaliser les actions suivantes

- de créer des utilisateurs

- de supprimer des utilisateurs

- de modifier des utilisateurs

- de voir tous les utilisateurs

- de faire une recherche sur l'existence d'un utilisateur en particulier

## Le script complet

Pour que vous ayez une meilleure compréhension des différentes parties de mon code je les ai commenté et après vous avoir montré ça je vais vous montrer comment agissent les différents blocs en les exécutant.

```
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
```

## Explication exécution des différents blocs

### Premier bloc
Le premier bloc sert à demander dans la console quelle action l'utilisateur veut effectuer:
```
PS C:\Windows\system32> E:\Tp 1.ps1
Voulez vous : 1 = créer un utilisateur, 2 = supprimer un utilisateur, 3 = modifier un utilisateur,
 4 = voir tout les utilisateurs, 5 = faire une recherche sur un utilisateur : 
```

### Deuxième bloc

Le deuxième bloc lui va servir à créer un utilisateur et lui donner un mot de passe:
```
PS C:\Windows\system32> E:\Tp 1.ps1
Voulez vous : 1 = créer un utilisateur, 2 = supprimer un utilisateur, 3 = modifier un utilisateur,
 4 = voir tout les utilisateurs, 5 = faire une recherche sur un utilisateur : 1
Quel sera le nom du nouvel utilisateur ? : Azerty
applet de commande New-LocalUser à la position 1 du pipeline de la commande
Fournissez des valeurs pour les paramètres suivants :

Name   Enabled Description
----   ------- -----------
Azerty True   
```

### Troisième bloc
Le troisième bloc sert lui à supprimer un utilisateur:
```
PS C:\Windows\system32> E:\Tp 1.ps1
Voulez vous : 1 = créer un utilisateur, 2 = supprimer un utilisateur, 3 = modifier un utilisateur,
 4 = voir tout les utilisateurs, 5 = faire une recherche sur un utilisateur : 2
Quel utilisateur voulez-vous supprimer ? : azerty
```

### Quatrième bloc
Le quatrième bloc sert lui à modifier un utilisateur:
```
PS C:\Windows\system32> E:\Tp 1.ps1
Voulez vous : 1 = créer un utilisateur, 2 = supprimer un utilisateur, 3 = modifier un utilisateur,
 4 = voir tout les utilisateurs, 5 = faire une recherche sur un utilisateur : 3
Quel est le nom d'utilisateur que vous souhaitez modifier ? : azert
Quel nouveau nom voulez vous donnez à votre utilisateur ? : azerty
```

### Cinquième bloc
Le cinquième bloc sert lui à avoir la liste de tous les utilisateurs:
```
PS C:\Windows\system32> E:\Tp 1.ps1
Voulez vous : 1 = créer un utilisateur, 2 = supprimer un utilisateur, 3 = modifier un utilisateur,
 4 = voir tout les utilisateurs, 5 = faire une recherche sur un utilisateur : 4

Name               Enabled Description                                                                                               
----               ------- -----------                                                                                               
33669              True                                                                                                              
Administrateur     False   Compte d’utilisateur d’administration                                                                     
azerty             True                                                                                                              
DefaultAccount     False   Compte utilisateur géré par le système.                                                                   
Invité             False   Compte d’utilisateur invité                                                                               
Ronan              True                                                                                                              
WDAGUtilityAccount False   Compte d’utilisateur géré et utilisé par le système pour les scénarios Windows Defender Application Guard.
```

### Sixième bloc
Le sixième bloc sert lui à avoir des informations sur un utilisateur spécifique:
```
PS C:\Windows\system32> E:\Tp 1.ps1
Voulez vous : 1 = créer un utilisateur, 2 = supprimer un utilisateur, 3 = modifier un utilisateur,
 4 = voir tout les utilisateurs, 5 = faire une recherche sur un utilisateur : 5
Quel est le nom de l'utilisateur sur qui vous souhaitez avoir des informations ? : azerty

Name   Enabled Description
----   ------- -----------
azerty True               
```

__Comme je vous l'ai montré avec les différents blocs de ce script nous pouvons bien créer un utilisateur, le supprimer, le modifier, voir la liste de tous les utilisateurs et regarder les informations spécifiques sur un utilisateur spécifique.__

[C'est déjà fini, direction le sommaire ?](https://github.com/RonanF-lab/PowerShell/blob/main/README.md#sommaire)
