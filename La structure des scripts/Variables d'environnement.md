# Les variables d'envrionnement 

Les variables d’environnement sont accessibles de plusieurs manières : 

 

• __Via le lecteur PowerShell__

```
PS C:\Windows\system32> Get-ChildItem env:U* 
  

Name / Value 

USERPROFILE                    C:\Users\33669 

USERNAME                       33669 

USERDOMAIN_ROAMINGPROFILE      DESKTOP-EMG1VR0 

USERDOMAIN                     DESKTOP-EMG1VR0 

````

• __Via une variable PowerShell__ 

````
PS C:\Windows\system32> $env:COMPUTERNAME 

DESKTOP-EMG1VR0 

PS C:\Windows\system32> $env:USERDOMAIN_ROAMINGPROFILE                                                                  

DESKTOP-EMG1VR0 
````
 

• __Via l’interpréteur traditionnel (méthode peu utilisée et moyenne mais existante)__ 


````
PS C:\Windows\system32> cmd /c set U 

USERDOMAIN=DESKTOP-EMG1VR0 

USERDOMAIN_ROAMINGPROFILE=DESKTOP-EMG1VR0 

USERNAME=33669 

USERPROFILE=C:\Users\33669 
````
 


Ces variables dynamiques sont globales au système, permettant le transfert d'informations entre différents processus exécutés par Windows. Les informations qu'ils fournissent dépendent de la configuration de Windows sur le poste de travail. 

Prenons un exemple simple, en utilisant la variable $ env: USERNAME : Cela retournera le nom du profil de l'utilisateur connecté. Si vous utilisez un autre compte utilisateur sur un autre post le nom retourné y sera différent. 

Par conséquent, il est préférable d'utiliser autant que possible les variables d'environnement pour les scripts PowerShell qui risquent de s'exécuter sur des postes de travail avec des configurations complètement différentes. 

- [Direction le sommaire ?](https://github.com/RonanF-lab/PowerShell/blob/main/README.md#sommaire)
