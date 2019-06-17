MATCH(n) DETACH DELETE n;
CREATE
  (`2` :Jeux {titre:'string,',`annee`:'int,',ventes_unites_M:'double,',`note%`:'int,',pegi:'int,',genre:'string,'}) ,
  (`7` :pesonnage {nom:'string,', `annee`:'int,'}) ,
  (`8` :Plateforme {nom : 'string,', `annee`:'int,', ventes_unites_M:'double,', salon:'boolean,', portable:'boolean'}) ,
  (`9` :Studios {nom:'string,',id_fortes:'string,',`annee`:'int,',`effectif`:'int'}) ,
  (`7`)-[:`apparait_dans` ]->(`2`),
  (`2`)-[:`apparait_sur` ]->(`8`),
  (`9`)-[:`a_developpe` ]->(`2`),
  (`7`)-[:`antagoniste` ]->(`7`),
  (`7`)-[:`adelphité` ]->(`7`),
  (`7`)-[:`allié` ]->(`7`),
  (`7`)-[:`filiation`]->(`7`)

//---------------------------------------Plateformes-------------------------------------------//
    //-Portables
  CREATE (gnw :Plateforme {nom:"Game and Watch ", annee:1980, ventes_unites_M:43.4, salon:false, portable: true})
  CREATE (gameboy :Plateforme {nom:"Game Boy", annee:1989, ventes_unites_M:118.69, salon:false, portable: true})
  CREATE (gbc :Plateforme {nom:"Game Boy Color", annee: 1998, ventes_unites_M:118.69, salon:false, portable: true})
  CREATE (gba :Plateforme {nom:"Game Boy Advance", annee:2001, ventes_unites_M:81.51, salon:false, portable:true})
  CREATE (nds :Plateforme {nom:"Famille Nintendo DS", annee:2004, ventes_unites_M:154.90, salon:false, portable:true})
  CREATE (n3ds :Plateforme {nom:"Famille Nintendo 3DS", annee:2011, ventes_unites_M:75.08, salon:false, portable:true})
  CREATE (mobile :Plateforme{nom:"Appareils Androïd/IOS", annee:2007, ventes_unites_M:null, salon:false, portable:true})

    //-Salon
  CREATE (arc :Plateforme {nom:"Arcade", annee:1980, ventes_unites_M:null, salon:false, portable:false})
  CREATE (nes :Plateforme {nom:"NES/Famicom", annee:1983, ventes_unites_M:61.91, salon:true, portable:false})
  CREATE (snes :Plateforme {nom:"SNES/Super Famicom", annee:1990, ventes_unites_M:49.10, salon:true, portable:false})
  CREATE (nsixfour :Plateforme {nom:"Nintendo 64", annee:1996, ventes_unites_M:32.93, salon:true, portable:false})
  CREATE (gc :Plateforme {nom:"GameCube", annee:2001, ventes_unites_M:21.74, salon:true, portable:false})
  CREATE (wii :Plateforme {nom:"Wii", annee:2006, ventes_unites_M:101.64, salon:true, portable:false})
  CREATE (wiiu :Plateforme {nom:"Wii U", annee: 2012, ventes_unites_M:13.56, salon:true, portable:false})
  CREATE (nx :Plateforme {nom:"Switch", annee: 2017, ventes_unites_M:34.74, salon:true, portable:true})
//---------------------------------------------------------------------------------------------//

//---------------------------------------Studios-------------------------------------------//
  CREATE (NEPD :Studios {nom:'Nintendo Entertainement Planning & Development',id_fortes:'Shigeru Miyamoto-Satoru Iwata-Eiji Aonuma-Shinya Takahashi-Yoshiaki Koizumi', annee:1983 })
  CREATE (HalSora :Studios {nom:'HAL Laboratory/SORA Ltd', id_fortes:'Satoru Iwata-Masahiro Sakurai', annee:1980})
  CREATE (Monolith :Studios {nom:'Monolith Soft', id_fortes:'Tetsuya Takahasi', annee:1999} )
  CREATE (Platinum :Studios {nom:'Platinum Games', id_fortes:'Tatsuya Minami', annee:2006})
  CREATE (Intellgt :Studios {nom:'Intellegent Systems', id_fortes:'Shozou Kaga', annee:1986})
  CREATE (Gf :Studios {nom:'Gamefreak', id_fortes:'Satoshi Tajiri-Junichi Masuda', annee:1989})
  CREATE (retro :Studios {nom:'Retro Studios', id_fortes:'Michael Mann', annee:1998})
//----------------------------------------------------------------------------------------//

//---------------------------------------Jeux-------------------------------------------//
    //POKEMON
  CREATE (pokerb :Jeux {titre:'Pokémon Rouge, Vert, Jaune & Bleu', annee:1996, ventes_unites_M:45.8, note%:88})
  CREATE (pokedp :Jeux {titre:'Pokémon Diamant, Perle & Platine', annee:, ventes_unites_M:24.4, note%:85})
  CREATE (pokexy :Jeux {titre:'Pokémon X & Y', annee:2013, ventes_unites_M:16.3, note%:88})
  CREATE (pokesm :Jeux {titre:'Pokémon (Ultra)Soleil & (Ultra)Lune', annee:2016, ventes_unites_M:24, note%:87})

    //MARIO https://fr.wikipedia.org/wiki/Liste_des_jeux_vid%C3%A9o_Mario
  CREATE (donkeyk :Jeux {titre:'Donkey Kong', annee:1981, ventes_unites_M:null, note%:null})
  CREATE (mariob :Jeux {titre:'Mario Bros. Arcade', annee:1983, ventes_unites_M:null, note%:null})
  CREATE (Mariocement :Jeux {titre:'Marios Cement Factory', annee:1983, ventes_unites_M:null, note%:null})
  CREATE (Mariobros :Jeux {titre:'Mario Bros', annee:1981, ventes_unités_M:2.3, note%:80})
  CREATE (smb :Jeux {titre:'Super Mario Bros', annee:1985, ventes_unités_M:40, note%:null})
  CREATE (lostlvl :Jeux {titre:'Super Mario Bros: The Lost Levels', annee:1986, ventes_unites_M:null, note%:null})
  CREATE (smb2 :Jeux {titre:'Super Mario Bros 2', annee:1988, ventes_unites_M:7.5, note%:null})
  CREATE (smb3 :Jeux {titre:'Super Mario Bros 3', annee:1990, ventes_unites_M:17.3, note%:null})
  CREATE (sml :Jeux {tire:'Super Mario Land', annee:1989, ventes_unites_M:18.1, note%:null})
  CREATE (drmario :Jeux {titre:'Dr. Mario', annee:1990, ventes_unites_M:null, note%:66})
  CREATE (smw :Jeux {titre:'Super Mario World', annee:1991, ventes_unites_M:20.6, note%:null})
  CREATE (sml2 :Jeux {titre: 'Super Mario Land 2', annee:1992, ventes_unites_M:11.2, note%:null})
  CREATE (smrpg :Jeux {titre: 'Super Mario RPG: Lengend of the Seven Stars', annee: 1995, ventes_unites_M:1.5, note%:88})
  CREATE (yoshiisl :Jeux {titre:'Yoshis Island', annee:1995, ventes_unites_M:null, note%:83})
  CREATE (smsixfour :Jeux {titre:'Super Mario 64', annee:1996, ventes_unites_M:11.9, note%:94})
  CREATE (paperm :Jeux {titre:'Paper Mario', annee:2001, ventes_unites_M:1.4, note%:93})
  CREATE (smadv :Jeux {titre:'Super Mario Advance', annee:2001, ventes_unites_M:null, note%:75})
  CREATE (smsun :Jeux {titre:'Super Mario Sunshine', annee:2002, ventes_unites_M:6.3, note%:91})
  CREATE (malusuperstar :Jeux {titre:'Mario & Luigi Superstar Saga', annee:2003, ventes_unites_M:2.17, note%:90})
  CREATE (mavsdk :Jeux {titre:'Mario vs Donkey Kong', annee:2004, ventes_unites_M:null , note%:null})
  CREATE (malubrotime :Jeux {titre: 'Mario & Luigi: Les frères du temps', annee:2005, ventes_unites_M:1.3, note%:86})
  CREATE (newsmb : Jeux {titre:'New Super Mario Bros.', annee:2006, ventes_unites_M:30.8, note%:89})
  CREATE (smgal :Jeux{titre:'Super Mario Galaxy', annee:2007, ventes_unites_M:8.6, note%:97})
  CREATE (mlvoycbow :Jeux{titre:'Mario & Luigi: Voyage au centre de Bowser', ventes_unites_M:null, note%:90})
  CREATE (nsmbw :Jeux{titre:'New Super Mario Bros Wii', annee:2009, ventes_unites_M:13.8, note%:87})
  CREATE (smgtwo : Jeux{titre:'Super Mario Galaxy 2', annee:2010,ventes_unites_M:6.4, note%:90})
  CREATE (sm3dl: Jeux{titre:'Super Mario 3D Land', annee:2011, ventes_unites_M:5.82, note%:93})
  CREATE (nsmb2: Jeux{titre:'New Super Mario Bros. 2', annee:2012,ventes_unites_M:13.16, note%:78})
  CREATE (nsmbu: Jeux{titre:'New Super Mario Bros. U', annee:2012,ventes_unites_M:5.8, note%:84})
  CREATE (mldream: Jeux{titre:'Mario & Luigi: Dream Team Bros.', annee:2013,ventes_unites_M:2.33, note%:81})
  CREATE (sm3dw: Jeux{titre:'Super Mario 3D World', annee:2013,ventes_unites_M:5.8, note%:96})
  CREATE (mamak: Jeux{titre:'Super Mario Maker', annee:2015, ventes_unites_M:4, note%:92})
  CREATE (maluipap: Jeux{titre:'Mario & Luigi: Paper Jam Bros.', annee:2015,ventes_unites_M:1, note%:76})
  CREATE (papmacol: Jeux{titre:'Paper Mario: Color Splash', annee:2016,ventes_unites_M:0.87, note%:74})
  CREATE (smod: Jeux{titre:'Super Mario Odyssey', annee:2017, ventes_unites_M:14.4, note%:97})
  CREATE (mkw: Jeux{titre:'Mario Kart Wii', annee:2008,ventes_unites_M:35.6, note%:82})
  CREATE (mkdd: Jeux{titre:'Mario Kart Double Dash', annee:2003,ventes_unites_M:6.9, note%:87})
  CREATE (mk8: Jeux{titre:'Mario Kart 8', annee:2014,ventes_unites_M:25.13, note%:90})
  CREATE (ssb: Jeux{titre:'Super Smash Bros.', annee:1999,ventes_unites_M:5.55, note%:79})
  CREATE (ssbm: Jeux{titre:'Super Smash Bros. Melee', annee:2001,ventes_unites_M:7.41, note%:92})
  CREATE (ssbb: Jeux{titre:'Super Smash Bros. Brawl', annee:2008,ventes_unites_M:13.3, note%:93})
  CREATE (ssb4: Jeux{titre:'Super Smash Bros. for 3DS & Wii U', annee:2014,ventes_unites_M:15, note%:89})
  CREATE (ssbu: Jeux{titre:'Super Smash Bros. Ultimate', annee:2018,ventes_unites_M:13.81, note%:93})
  CREATE (MarioParty: Jeux{titre:'Mario Party', annee:1998,ventes_unites_M:44.57, note%:65})
  CREATE (msjo: Jeux{titre:'Mario & Sonic aux Jeux Olympiques', annee:2007,ventes_unites_M:null, note%:97})

  //Personnages
  CREATE (Mario:personnage {nom:'Mario(Jumpman)', annee:1981})
  CREATE (Luigi:personnage {nom:'Luigi', annee:1983})
  CREATE (Bowser:personnage {nom:'Bowser', annee:1985})
  CREATE (Daisy:personnage {nom:'Princesse Daisy', annee:1989})
  CREATE (Peach:personnage {nom:'Princesse Peach', annee:1985})
  CREATE (Harmonie:personnage {nom:'Harmonie', annee:2007})
  CREATE (Toad:personnage {nom:'Toad', annee:1985})
  CREATE (Waluigi:personnage {nom:'Waluigi', annee:2000})
  CREATE (Wario:personnage {nom:'Wario', annee:1992})
  CREATE (Yoshi:personnage {nom:'Yoshi', annee:1990})
  CREATE (Donkey_Kong:personnage {nom:'Donkey Kong', annee:1981})
  CREATE (Diddy_Kong:personnage {nom:'Diddy Kong', annee:1994})
  CREATE (Dixie_Kong:personnage {nom:'Dixie Kong', annee:1995})
  CREATE (K_Rool:personnage {nom:'K. Rool', annee:1994})
  CREATE (Ganon:personnage {nom:'Ganon', annee:1986})
  CREATE (Link:personnage {nom:'Link', annee:1986})
  CREATE (Sheik:personnage {nom:'Sheik', annee:1998})
  CREATE (Tingle:personnage {nom:'Tingle', annee:2000})
  CREATE (Zelda:personnage {nom:'Princesse Zelda', annee:1986})
  CREATE (Falco:personnage {nom:'Falco Lombardi', annee:1993})
  CREATE (Fox:personnage {nom:'Fox McCloud', annee:1993})
  CREATE (Wolf:personnage {nom:'Wolf O Donnell', annee:1993})
  CREATE (Ridley:personnage {nom:'Ridley', annee:1994})
  CREATE (Samus:personnage {nom:'Samus Aran', annee:1986})
  CREATE (Dadidou:personnage {nom:'Roi Dadidou', annee:1992})
  CREATE (Kirby:personnage {nom:'Kirby', annee:1992})
  CREATE (Meta_Knight:personnage {nom:'Meta Knight', annee:1993})
  CREATE (Lucario:personnage {nom:'Lucario', annee:2006})
  CREATE (Mewtwo:personnage {nom:'Mewtwo', annee:1996})
  CREATE (Pichu:personnage {nom:'Pichu', annee:1996})
  CREATE (Pikachu:personnage {nom:'Pikachu', annee:1996})
  CREATE (Rondoudou:personnage {nom:'Rondoudou', annee:1996})
  CREATE (Ike:personnage {nom:'Ike', annee:2005})
  CREATE (Marth:personnage {nom:'Marth', annee:1990})
  CREATE (Roy:personnage {nom:'Roy', annee:2002})
  CREATE (Lucas:personnage {nom:'Lucas', annee:2006})
  CREATE (Ness:personnage {nom:'Ness', annee:1994})
  CREATE (Pit:personnage {nom:'Pit', annee:1986})
  CREATE (Palutena:personnage {nom:'Palutena', annee:1986})
  CREATE (Captain_Falcon:personnage {nom:'Captain Falcon', annee:1990})
  CREATE (Little_Mac:personnage {nom:'Little Mac', annee:1983})
  CREATE (Mii:personnage {nom:'Mii', annee:2006})
  CREATE (Mr_Game_Watch:personnage {nom:'Mr. Game & Watch', annee:1980})
  CREATE (Olimar:personnage {nom:'Olimar', annee:2001})
  CREATE (Ice_Climber:personnage {nom:'Popo et Nana', annee:1984})
  CREATE (ROB:personnage {nom:'R.O.B.', annee:1985})
  CREATE (sonic:personnage {nom:'Sonic', annee:1990})
  CREATE (Link_Cartoon:personnage {nom:'Link Cartoon', annee:2003})
  CREATE (Chrom:personnage {nom:'Chrom', annee:2011})
  CREATE (Lucina:personnage {nom:'Lucina', annee:2011})
  CREATE (Daraen:personnage {nom:'Daraen', annee:2011})
  CREATE (Corrin:personnage {nom:'Corrin', annee:2015})
  CREATE (Mega_Man:personnage {nom:'Mega Man', annee:1987})
  CREATE (snake:personnage {nom:'Snake', annee:1987})
  CREATE (Herbizarre:personnage {nom:'Herbizarre', annee:1996})
  CREATE (Dracaufeu:personnage {nom:'Dracaufeu', annee:1996})
  CREATE (Carapuce:personnage {nom:'Carapuce', annee:1996})
  CREATE (Villageois:personnage {nom:'Villageois', annee:2001})
  CREATE (Entraineuse:personnage {nom:'Entraineuse/Entraineur wii fit', annee:2007})
  CREATE (Amphinobi:personnage {nom:'Amphinobi', annee:2013})
  CREATE (Pacman:personnage {nom:'Pac-Man', annee:1980})
  CREATE (Shulk:personnage {nom:'Shulk', annee:2010})
  CREATE (Bowserjr:personnage {nom:'Bowser Jr', annee:2002})
  CREATE (DuckHunt:personnage {nom:'Duck Hunt', annee:1984})
  CREATE (Ryu:personnage {nom:'Ryu', annee:1987})
  CREATE (Ken:personnage {nom:'Ken', annee:1987})
  CREATE (Cloud:personnage {nom:'Cloud', annee:1997})
  CREATE (Bayonetta:personnage {nom:'Bayonetta', annee:2009})
  CREATE (Inkling:personnage {nom:'Inkling', annee:2015})
  CREATE (Simon:personnage {nom:'Simon', annee:1986})
  CREATE (Richter:personnage {nom:'Richter', annee:1986})
  CREATE (Marie:personnage {nom:'Marie', annee:2013})
  CREATE (Felinferno:personnage {nom:'Félinferno', annee:2016})
  CREATE (Paper_Mario:personnage {nom:'Paper Mario', annee:2000})
  CREATE (Paper_Luigi:personnage {nom:'Paper Luigi', annee:2000})
  CREATE (Bb_Mario:personnage {nom:'Bebe Mario', annee:1995})
  CREATE (Bb_Luigi:personnage {nom:'Bebe Luigi', annee:1995})
  CREATE (Bowsers_army:personnage {nom:'Armée de Bowser', annee:1981})




    //-Pokémon
    //-Mario
    //-Donkey Kong
    //-Zelda
    //-Kirby
    //-Animal Crossing
    //-F0
    //-Ice Climbers
    //-Metroïd
    //-Star Fox
    //-Mother
    //-Final Fantasy
    //-Game & Watch
    //-Kid Icarus
    //-Metal Gear Solid
    //-Sonic
    //-Pikmin
    //-R.O.B.
    //-Wii-Fit
    //-Mega Man
    //-Punch Out
    //-Duck Hunt
    //-Street Figther
    //-Splatoon
