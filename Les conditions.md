## Les conditions 

 

Powershell prend en charge les opérateurs de logique conditionnelle standard, tout comme de nombreux langages de programmation. Ceux-ci permettent d'exécuter certaines fonctions ou commandes dans certaines circonstances. 

### Condition If 

 

La syntaxe d'une structure de condition If simple est la suivante : 

__If(condition)__  

__{__  

  __bloc de code (instructions)__ 

__}__ 

La section "Conditions" vous permettra de tester une ou plusieurs conditions. Si la condition est vraie, le bloc de code sera exécuté. 

 

Pour mieux comprendre je vais vous montrer des exemples 

Nous allons commencer avec quelque chose basique, si notre $texte est égal à “Traduire bonjour” alors “Hello” sera imprimé. 

__PS C:\Windows\system32> $texte = "Traduire Bonjour"__ 

__If($texte -eq "Traduire Bonjour")__

__{__  

  __Write-Output "Hello"__ 

__}__ 

__Hello__ 

Comme prévu le “Hello” a bien été imprimé car notre texte $texte est bien égale à "Traduire Bonjour". 

 

### Condition If / Else 

Maintenant, nous allons ajouter une condition supplémentaire à cette déclaration : si le $texte est bien égale à "Traduire Bonjour", alors nous écrirons "Hello". Sinon, c'est là que Else va jouer son rôle et imprimer la deuxième option “Traduction Impossible” 

__PS C:\Windows\system32> $texte = "Pas traduire Bonjour"__ 

  
__If($texte -eq "Traduire Bonjour")__  

__{__  

  __Write-Output "Hello"__ 

__}else{__ 

  __Write-Output "Traduction impossible"__ 

__}__ 

__Traduction impossible__ 

 

Dans le cas présent notre $texte n’est pas égale à celui dans notre condition donc le Else rentre en jeu et “Traduction impossible” va être imprimé. 

### Condition If / ElseIf / Else 

Dans l’exemple précédent nous agissons seulement dans le cas où $texte est égal à “Traduire Bonjour” et si ce n’est pas le cas avec le Else nous renvoyons juste à “Traduction impossible”. 

Mais avec le ElseIf nous allons pouvoir ajouter une deuxième possibilité ou si l’utilisateur écrit “Traduire Holà en français” alors “Bonjour” pourra aussi être imprimé. 

__PS C:\Windows\system32> $texte = "Traduire Hola en français"__ 

 

__If($texte -eq "Traduire Bonjour")__ 

__{__ 

   __Write-Output "Hello"__ 

__}elseif($texte -eq "Traduire Hola en français")__ 

__{__

   __Write-Output "Bonjour"__ 

__}else{__ 

   __Write-Output "Traduction impossible"__ 

__}__ 

> Bonjour

Dans l’exemple que je viens de vous montrer le texte de début n’est pas égale “Traduire Bonjour” mais à "Traduire Hola en français" comme précisé dans le ElseIf donc comme prévu on obtient Bonjour après exécution. 

```
dz
```
