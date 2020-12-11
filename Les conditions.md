## Les conditions 

 

Powershell prend en charge les opérateurs de logique conditionnelle standard, tout comme de nombreux langages de programmation. Ceux-ci permettent d'exécuter certaines fonctions ou commandes dans certaines circonstances. 

### Condition If 

 

La syntaxe d'une structure de condition If simple est la suivante : 

```
If(condition)  

{  

  # bloc de code (instructions) 

} 
```

La section "Conditions" vous permettra de tester une ou plusieurs conditions. Si (If) la condition est vraie, le bloc de code sera exécuté. 

 

Pour mieux comprendre je vais vous montrer des exemples 

Nous allons commencer avec quelque chose basique, si (If) notre $texte est égal à “Traduire bonjour” alors “Hello” sera imprimé. 

```
PS C:\Windows\system32> $texte = "Traduire Bonjour" 

If($texte -eq "Traduire Bonjour")  

{  

  Write-Output "Hello" 

} 

Hello 
```

Comme prévu le “Hello” a bien été imprimé car notre texte $texte est bien égale à "Traduire Bonjour". 

 

### Condition If / Else 

Maintenant, nous allons ajouter une condition supplémentaire à cette déclaration : si (If) le $texte est bien égale à "Traduire Bonjour", alors nous écrirons "Hello". Sinon (Else), c'est là que Else va jouer son rôle et imprimer la deuxième option “Traduction Impossible” 

```
PS C:\Windows\system32> $texte = "Pas traduire Bonjour" 

  

If($texte -eq "Traduire Bonjour")  

{  

  Write-Output "Hello" 

}else{ 

  Write-Output "Traduction impossible" 

} 

Traduction impossible
```

 

Dans le cas présent notre $texte n’est pas égale à celui dans notre condition donc le Else rentre en jeu et “Traduction impossible” va être imprimé. 

### Condition If / ElseIf / Else 

Dans l’exemple précédent nous agissons seulement dans le cas où $texte est égal à “Traduire Bonjour” et si ce n’est pas le cas avec le Else (sinon) nous renvoyons juste à “Traduction impossible”. 

Mais avec le ElseIf (sinon si) nous allons pouvoir ajouter une deuxième possibilité ou si l’utilisateur écrit “Traduire Holà en français” alors “Bonjour” pourra aussi être imprimé. 

```
PS C:\Windows\system32> $texte = "Traduire Hola en français" 

 

If($texte -eq "Traduire Bonjour") 

{ 

   Write-Output "Hello" 

}elseif($texte -eq "Traduire Hola en français") 

{ 

   Write-Output "Bonjour" 

}else{ 

   Write-Output "Traduction impossible" 

} 

Bonjour 
```

Dans l’exemple que je viens de vous montrer le $texte de début n’est pas égale “Traduire Bonjour” mais à "Traduire Hola en français" comme précisé dans le ElseIf (sinon si) donc comme prévu on obtient Bonjour après exécution. 
