## Observations

### Nommage fichier dart

Suivre la convention "snake case" : mots en miniscule séparés par underscore.
Exemple : 

```dart
home_page.dart
filter_tab.dart
```

### Réorganisation du projet

On a un dossier par fonctionnalité. Dans ce dossier, on a :
- Un dossier ```pages``` pour les pages de la fonctionnalité
- Un dossier ```widgets``` pour les widgets de la pages (les composants réutilisables)

### Lecture du code 

1. J'ai vu que tu as 3 importations des styles 

```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
```

Il faut utiliser un seul en occurrence 

```dart
import 'package:flutter/material.dart';
```

### Installation de dépendances

Il faut utiliser ces deux dépendances pour la suite :

- Gap : https://pub.dev/packages/gap. 
Ca permet de gérer rapidement les espacements au lieu d'utiliser ```SizedBox```

- Sizer : https://pub.dev/packages/sizer. 
Ca permet de gérer la responsivité des interfaces.

Je vais le configurer pour toi dans ce projet et après tu vas mettre ```.w``` pour les largeurs, ```.h``` pour les hauteurs, et ```.sp``` pour la taille des texgtes.

Exemple 

```dart
// Largeur
SizedBox(width: 10.w)
// Hauteur
SizedBox(heigth: 3.h)
// Taille texte
Text(
  "test",
  style : TextStyle(
    fontSize: 10.sp
  )
)

// Si tu veux faire un container carré faut pas mettre 10.w et 10.h, 
//il faut utiliser 10.w pour chaque dimension

Container(
   width: 30.w,
   height: 30.w
)

⚠️⚠️⚠️⚠️ ATTENTION ⚠️⚠️⚠️⚠️⚠️

SI TU DOIS AVEC .h METTRE UNE VALEUR PLUS GRANDE QUE 3, AU LIEU DE 3.h PASSE EN 3.w
```