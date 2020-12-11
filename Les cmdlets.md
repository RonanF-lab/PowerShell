# Les Cmdlets PowerShell 

### A savoir sur les cmdlets

Les applets de commande (Cmdlets) sont des commandes PowerShell avec des fonctions prédéfinies, telles que des opérateurs dans les langages de programmation. Voici quelques informations importantes sur les applets de commande : 

- Il existe des cmdlets système, utilisateur et personnalisés. 

- Les cmdlets fournissent des résultats sous forme d’objet ou de tableau d’objets. 

- Les cmdlets peuvent obtenir des données à analyser ou transférer des données vers un autre cmdlet par le biais de canaux (je reviendrai sur ces canaux – ou pipes – dans un instant). 

- Les cmdlets sont « insensibles à la casse ». C’est-à-dire que les majuscules et minuscules n’ont aucune importance, vous pouvez tout aussi bien taper « Get-ADUser », « get-aduser » ou « gEt-AdUsEr ». 

- Si vous voulez utiliser plusieurs cmdlets dans une même chaîne, vous devez les séparer par un point-virgule (;). 

### Les format des cmdlets 

 

Les applets de commande se composent toujours de verbes (ou de mots qui agissent comme des verbes) et d’un nom, séparés d’un tiret (c'est la règle « verbe-nom »). Voici quelques exemples de verbes : 

### Liste de quelques verbes utilisables 

- Add permet d'ajouter des données ou informations sur le nom qui le suit ;
```
Add-LocalGroupMember : ajoute un membre dans un groupe local.
```
- Get permet d'obtenir des données ou informations sur le nom qui le suit ; 
```
Get-Process : affiche les processus en cours d’exécution sur votre ordinateur.
```
- Clear permet de réinitialiser un affichage ou une variable ; 
```
Clear-Variable : supprime les données stockées dans une variable, mais ne supprime pas la variable.
```
- Import et Export permet d'importer/exporter des fichiers de commandes ou des alias ; 
```
Import-Alias : importe une liste d'alias à partir d'un fichier.
```
- New permet de créer de nouveaux objets ou variable ; 
```
New-Variable : crée une variable dans Windows PowerShell.
```
- Set permet de définir des données ou informations sur le nom qui le suit ; 
```
Set-Date : modifie la date et l'heure système sur l'ordinateur en les remplaçant par la date et l'heure que vous spécifiez.
```
- Write permet d'écrire des données ou informations sur le nom qui le suit et peut agir comme le compte-rendu d'une commande. 
```
Write-Warning : écrit un message d'avertissement sur l'hôte Windows PowerShell.
```
