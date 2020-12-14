# Les boucles 
Il existe plusieurs types de boucle mais malgrès ça le but reste le même, une boucle est une séquence d'instructions qui sont exécutées en continu et à plusieurs reprises jusqu'à ce qu'une certaine condition soit atteinte. Elles vous permettent d'écrire des instructions très simples qui peuvent être exécutées à plusieurs reprises pour produire de meilleurs résultats.

### Boucles For

Avec PowerShell les boucles "For" s'appuie sur une synthaxe bien précise:
```
For(<état initial>;<condition de répétition>;<incrémentation>)
{
  <Si la condition est vraie, on exécute ce bloc d'instructions>
}

```
__Exemple d'utilisation de boucle For__

Dans cette exemple nous allons dire que la variable i est égale à 2  et que tant qu'elle sera inférieur à 6 alors nous augmenterons de 1 jusqu'à ce que i soit égale à 
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
### Boucles Foreach

La boucle "foreach" est une instruction très couramment utilisée dans le langage Powershell. Contrairement à l'instruction "for", cette instruction vous permet de parcourir un tableau ou une collection de 0 à n éléments, quel que soit le nombre.

__Exemple d'utilisation de boucles Foreach__

Dans cette exemple grâce à Foreach nous allons pouvoir parcourir la fonction tableau et imprimmé le tableau de chiffre qu'elle contient. 
```
PS C:\Windows\system32> $Tab = 2..6
>> foreach ($ChiffreInTab in $Tab) {
>> write-host $ChiffreInTab
>> }
2
3
4
5
6
```





