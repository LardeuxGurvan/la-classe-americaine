-- Deploy laclasse:seeding to pg

BEGIN;

INSERT INTO "actor" ("name")
    VALUES  ('Raymond Loyer'),
            ('Roger Rudel'),
            ('Patrick Guillemin'),
            ('Joël Martineau'),
            ('Marc Cassot'),
            ('Jean-Claude Montalban'),
            ('Alain Chabat');

INSERT INTO "quote" ("phrase", "character", "actor_id")
    VALUES  ('Aah… Monde de merde.', 'George Abitbol', 1),
            ('Écoute-moi bien, mon petit José. Tu baises les ménagères, bien, tu dois avoir le cul qui brille. Mais c’est pas ça qu’on appelle la classe.', 'George Abitbol', 1),
            ('Excuse-moi de te dire ça, mon pauvre José, mais tu confonds un peu tout. Tu fais un amalgame entre la coquetterie et la classe. Tu es fou.', 'George Abitbol', 1),
            ('Tu dépenses tout ton argent dans les habits et accessoires de mode mais tu es ridicule. Enfin si ça te plaît. C’est toi qui les portes. Mais moi, si tu veux mon opinion, ça fait un peu… has been.', 'George Abitbol', 1),
            ('Tu n''es vraiment pas très sympa. Mais le train de tes injures roule sur le rail de mon indifférence. Je préfère partir plutôt que d''entendre ça plutôt que d''être sourd.', 'George Abitbol', 1),
            ('Si tu veux me parler, envoie-moi un... fax !', 'George Abitbol', 1),
            ('En tout cas s’il cherchait pour du trouble, il est venu à la bonne place.', 'George Abitbol', 1),
            ('Hop hop hop ! Et notre répétition de scie musicale ?', 'George Abitbol', 1),
            ('C’est ça, la puissance intellectuelle. Bac + 2, les enfants.', 'George Abitbol', 1),
            ('Va te faire branler, trotskard.', 'George Abitbol', 1),
            ('Blablabla, j’ai les bonbons qui collent au papier.', 'George Abitbol', 1),
            ('On va manger... des chips ! T''entends ?!? Des chips ! C''est tout ce que ça te fait quand je te dis qu''on va manger des chips ? Mais qu''est-ce qui t''arrive? Pourquoi tu dis rien, tu fais la tronche ou quoi?', 'l''Indien', 1),
            ('Parce que si on réfléchit bien, moi je suis un vrai démocrate. George est un fasciste de merde. Un fasciste de merde !', 'l''Indien', 1),
            ('Bonjour. C''est moi Orson Welles. Ceci est ma maison que vous voyez derrière là, pas mal non ? C''est français.', 'Orson Welles', 1),
            ('Je me permets d''interrompre ce flim parce qu''on se fout un peu de ma gueule : c''est du vol et du plagiat. J''aime pas trop les voleurs et les fils de pute.', 'Orson Welles', 1),
            ('Aaargh... Rosebud...', 'Orson Welles', 1),
            ('À l’époque, j’étais moi-même cowboy, je vivais avec Jacques, un bon copain. Il y avait rien de sexuel entre nous. Je dis ça parce que je me suis souvent fait traiter de pédale, de salope. Et c’est facile de traiter les gens de pédés, tout ça parce que deux garçons vivent ensemble dans un ranch et portent des pantalons en cuir.', 'Hugues', 2),
            ('C''est pas banal...', 'Hugues', 2),
            ('J’ai connu un mec de droite une fois, il avait dix fois plus de classe.', 'Hugues', 2),
            ('Je refuse de manger des ravioles. Mais par contre, je peux vous parler de madame Felipe. Elle s’est fait refaire les nichons, elle.', 'Hugues', 2),
            ('Ça commence à être pesant cette histoire de pédés. Tout le monde s’acharne sur nous alors qu’on n’est même pas pédés.', 'Hugues', 2),
            ('Où ça nous mène, la folie des hommes. On court tout droit à notre perte.', 'Hugues', 2),
            ('Salopes !', 'Dave', 3),
            ('Je vais la métamorphoser ma tête de Français, tu vas voir. Tu vas pas en croire tes yeux.', 'Dave', 3),
            ('Alors les bouseux, qui va me parler de George ? Qui c’est qui va tout dire à Dave ? Bon, toi tu dis rien, c’est normal tu es une croix en bois, tu as qu’à te taire', 'Dave', 3),
            ('Mettez des capotes.', 'Dave', 3),
            ('Ok, j''arrive, mais arrête de tirer sur oim !', 'Dino', 4),
            ('Sheraf. Tu connais pas Sheraf ? C’est un groupe, ils étaient number one.', 'Dino', 4),
            ('Regarde mes mains, saloperie ! Regarde, je me suis niqué les mains, moi, avec cette saloperie de collec’ de pin’s à la con.', 'Dino', 4),
            ('Messieurs, permettez-moi de vous souhaiter la bienvenue. D''ailleurs, il faut pas rester debout, asseyez-vous, mettez-vous à l’aise.', 'Dino', 4),
            ('J’arrivais d’Italie, de Turin. À l’époque j’étais supporter de la Juventus.', 'Dino', 4),
            ('Avec George, je me souviens, on passait des après-midi entières à rester dans notre chambre à se chamailler gentiment, à se raconter des souvenirs...', 'Dino', 4),
            ('Ah voilà enfin le roi de la classe l''homme trop bien sapé, Abitbol ! Alors comme ça t''as été élu l''homme le plus classe du monde ! Laisse moi rire ! Style le grand play-boy des fonds marins, genre qui fait rêver les ménagères. Sauf que moi je les baise, moi, les ménagères, non ? C’est pas vrai', 'José', 5),
            ('Eh, je t’arrête tout de suite. La classe, c’est d’être chic dans sa manière de s’habiller. Rien de tel que d’aller chez Azzedine Alaia ou même de s’acheter des sous-pulls chez Yohji Yamamoto !', 'José', 5),
            ('La vache ! Moi, j’ai l’air has been ? J’en ai pour plus d’une barre de fringues sur moi. Alors, va te faire mettre !', 'José', 5),
            ('Bien ! Considère qu''on est plus amis, Abitbol !', 'José', 5),
            ('Ben p''t''être qu''il avait personne d''autre à qui s''attacher... Mais de quoi on parle là ?', 'Steven', 3),
            ('Oh le lourd !', 'Steven', 3),
            ('Il commence vraiment à me faire chier, Dave.', 'Steven', 3),
            ('J''ai bien dit gentil, pas homosexuel !', 'Steven', 3),
            ('À quoi vous pensez si je vous dis « monde de merde » ?', 'Steven', 3),
            ('Moi je veux être connu. Tu sais pourquoi ? Pour niquer les gonzesses. Quand tu es célèbre, tu niques plein de gonzesses.', 'Steven', 3),
            ('Oh ça va, on vous fait pas chier, là ? Non c’est sûr, non mais je rêve !', 'Steven', 3),
            ('Moi je suis sûr qu’on dit « quiche ». Enfin bon...', 'Steven', 3),
            ('Alors une, tu poses mon bouquin d’exercices isométriques tout de suite !', 'Steven', 3),
            ('Bon maintenant tu arrêtes ! Parce que je te ferais dire que pendant qu’on parle, Peter il a la méga chiasse. Alors un peu de dignité, s’il te plaît !', 'Steven', 3),
            ('Abitbol. George Abitbol. Classe, man ! Top of the pop. A disparu… poil au cul ! Au large du port de Valparaiso… Ah, c’est beau ! Mais tout ça nous éloigne de George. Ouah-pa-pa-doo-ah. Angoisse, fausse angoisse. J’ai plus de repères pour l’instant... Ouah-doo-da-doo-doo !', 'Steven', 3),
            ('Mon cher Peter, me voici en Alaska, malgré le froid, malgré une mule impotente, malgré ma fausse barbe qui me gratte, je continue à croire en mon aventure.', 'Steven', 3),
            ('Mon cher Peter, j’ai perdu beaucoup de temps avec le blizzard. Je crois bien que j’ai pris froid.', 'Steven', 3),
            ('Mon cher Peter, me voilà dans le désert. J’ai un nouvel ami, il me suit partout, mais il est un peu con.', 'Steven', 3),
            ('Dites, j’ai un trou de mémoire, vous pouvez me dire le titre de votre plus grand film ?', 'Steven', 3),
            ('Attendez, faut que je me souvienne de tout. Chez vous, vers cinq heures... Bon, je vais essayer de m’en rappeler, hein.', 'Steven', 3),
            ('On va bientôt niquer, on va bientôt niquer !', 'Steven', 3),
            ('Si je comprends bien, on s’est tapé une enquête super dure alors que si on vous avait rencontrée avant, on aurait pu niquer tout de suite sans même être célèbres.', 'Steven', 3),
            ('Oui, on en a chié pour trouver cette idée, on était charrette', 'Peter', 6),
            ('Moi ce qui me fait chier c’est les effets spéciaux minables. Je supporte plus.', 'Peter', 6),
            ('Il devait être nerveux, le George, pour s’énerver comme ça.', 'Peter', 6),
            ('On dit une ouiche lorraine.', 'Peter', 6),
            ('Attention ! Quels connards ces piétons !', 'Peter', 6),
            ('Je sais pas toi, mais moi le mystère s’épaissit.', 'Peter', 6),
            ('Moi je me demande quand même s’il était pas un peu con.', 'Peter', 6),
            ('J’ai la méga chiasse, putain, la méga chiasse !', 'Peter', 6),
            ('Wow. Steven ! Tu vas pas me croire. J’ai plus mal au bide. Je suis guéri. Par contre, on ne peut plus rentrer dans les chiottes, il y en a partout.', 'Peter', 6),
            ('Ah, un restaurant mexican food', 'Peter', 6),
            ('Eh, la choucroute ! Si tu veux une saucisse...', 'Peter', 6),
            ('C’est du journalisme total.', 'Peter', 6),
            ('Très bien. Puisque vous ne voulez pas m’aider, allez vous faire enculer.', 'Peter', 6),
            ('Eh, oh, ça va, hein. Il y a pas le feu, on n’est pas aux pièces.', 'Peter', 6),
            ('Le journalisme total, c’est totalement con.', 'Peter', 6),
            ('À propos de salope, tout à l’heure, avant que vous commenciez votre histoire, vous m’aviez proposé de... comment dire... de faire le... j’aimerais bien passer à l’acte sexuel.', 'Peter', 6),
            ('Encore heureux que tu aies pas dit où en était l’enquête, parce que vu qu’on en est au point zéro, si tu l’avais dit on passait pour des busards.', 'Peter', 6),
            ('Sexe plus histoire de cul égalent meurtre', 'Peter', 6),
            ('Vous voulez niquer avec mon ami et moi ?', 'Peter', 6),
            ('Entre l’Australia et la South América, dans l’océan South Pacific : l’atoll de Pom Pom Galli.', 'voix off', 7);


COMMIT;
