# Les boucles For
Il existe plusieurs types de boucle mais malgré ça le but reste le même, ces blocs de code sont conçus pour exécuter plusieurs itérations du même ensemble d'instructions. Cependant, ils ont besoin d'une instruction indiquant la condition de sortie, sinon ils écriront une boucle infinie.

### Boucles For

Avec PowerShell les boucles "For" s'appuie sur une synthaxe bien précise:
```
For(<état initial>;<condition de répétition>;<incrémentation>)
{
  <Si la condition est vraie, on exécute ce bloc d'instructions>
}

```
__Exemple d'utilisation de boucles For__

Dans cet exemple nous allons dire que la variable i est égale à 2  et que tant qu'elle sera inférieure à 6 alors nous augmenterons de 1 jusqu'à ce que i soit égale à 6. 
```
PS C:\Windows\system32> for($i = 2; $i -le 6; $i++){
>>     "$i"
>> }
2
3
4
5
6
```
Comme vous pouvez le voir après exécution du bloc les chiffres de 2 à 6 sont imprimé les uns après les autres dans l'odre croissant comme demandé jusqu'à ce que ça arrive à 6.
### Boucles Foreach

La boucle "foreach" est une instruction très couramment utilisée dans le langage Powershell. Contrairement à l'instruction "for", cette instruction vous permet de parcourir un tableau ou une collection de 0 à n éléments, quel que soit le nombre.

__Exemple d'utilisation de boucles Foreach__

Dans cette exemple grâce à Foreach nous allons pouvoir parcourir la fonction tableau et imprimé le tableau de chiffre qu'elle contient. 
```
PS C:\Windows\system32> $Tab = 6..9
>> foreach ($ChiffreInTab in $Tab) {
>> write-host $ChiffreInTab
>> }
6
7
8
9
```
Vous pouvez voir après exécution que les chiffres du tableau que nous avons définis de 2 à 6 ont bine été imprimmé.

- [Direction le sommaire ?](https://github.com/RonanF-lab/PowerShell/blob/main/README.md#sommaire)
