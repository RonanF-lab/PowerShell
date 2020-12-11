# PowerShell Cmdlets 

 

Les applets de commande (Cmdlets) sont des commandes PowerShell avec des fonctions prédéfinies, telles que des opérateurs dans les langages de programmation. Voici quelques informations importantes sur les applets de commande : 

Il existe des cmdlets système, utilisateur et personnalisés. 

Les cmdlets fournissent des résultats sous forme d’objet ou de tableau d’objets. 

Les cmdlets peuvent obtenir des données à analyser ou transférer des données vers un autre cmdlet par le biais de canaux (je reviendrai sur ces canaux – ou pipes – dans un instant). 

Les cmdlets sont « insensibles à la casse ». C’est-à-dire que les majuscules et minuscules n’ont aucune importance, vous pouvez tout aussi bien taper « Get-ADUser », « get-aduser » ou « gEt-AdUsEr ». 

Si vous voulez utiliser plusieurs cmdlets dans une même chaîne, vous devez les séparer par un point-virgule (;). 

### Format de cmdlet 

 

Les applets de commande se composent toujours de verbes (ou de mots qui agissent comme des verbes) et d’un nom, séparés d’un tiret (c'est la règle « verbe-nom »). Voici quelques exemples de verbes : 

Liste de quelques verbes utilisables 

- Add permet d'ajouter des données ou informations sur le nom qui le suit ; 

- Get permet d'obtenir des données ou informations sur le nom qui le suit ; 

- Clear permet de réinitialiser un affichage ou une variable ; 

- Import et Export permet d'importer/exporter des fichiers de commandes ou des alias ; 

- New permet de créer de nouveaux objets ou variable ; 

- Set permet de définir des données ou informations sur le nom qui le suit ; 

- Write permet d'écrire des données ou informations sur le nom qui le suit et peut agir comme le compte-rendu d'une commande. 
