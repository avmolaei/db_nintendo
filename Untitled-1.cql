MATCH(n) DETACH DELETE n;
CREATE 
  (`2` :Jeux {titre:'string,',`année`:'int,',date:'string,',profit:'int,',note:'int,',pegi:'int,',genre:'string,'}) ,
  (`7` :pesonnage {nom:'string,',date:'string,',annee:'int'}) ,
  (`8` :Plateforme {nom : 'string,', `année`:'int,',ventes:'int,',salon:'boolean,',portable:'boolean'}) ,
  (`9` :Studios {nom:'string,',id_fortes:'string,',`année`:'int'}) ,
  (`7`)-[:`apparait_dans` ]->(`2`),
  (`2`)-[:`apparait_sur` ]->(`8`),
  (`9`)-[:`a_developpe` ]->(`2`),
  (`7`)-[:`antagoniste` ]->(`7`),
  (`7`)-[:`adelphité` ]->(`7`),
  (`7`)-[:`allié` ]->(`7`),
  (`7`)-[:`filiation`]->(`7`)



  CREATE (gnw :Plateforme {nom:"Emil Eifrem", born:1978})
