local Name, Addon = ...
local Locale = Addon.Locale
local lang = "frFR"

-- Chat messages
local L = {lang = lang}
setmetatable(L, Locale.MT)
Locale[lang] = L

-- Messages
L["MSG_BID_1"] = "As-tu besoin de %s ?"
L["MSG_BID_2"] = "Pourrais-je avoir %s, si tu n'en as pas besoin ?"
L["MSG_BID_3"] = "Je pourrais utiliser %s, si tu ne le veux pas."
L["MSG_BID_4"] = "Je prendrais volontiers %s, si tu veux t'en débarrasser."
L["MSG_BID_5"] = "As-tu besoin de %s, ou pourrais-je l'avoir ?"
L["MSG_HER"] = "elle"
L["MSG_HIM"] = "lui"
L["MSG_ITEM"] = "objet"
L["MSG_NEED"] = "besoin,oui"
L["MSG_PASS"] = "je passe,non,nope"
L["MSG_ROLL"] = "lance un dé,partage,distribue"
L["MSG_ROLL_ANSWER_AMBIGUOUS"] = "Je propose plusieurs objets en ce moment, veuillez m'envoyer le lien de l'objet que vous voulez."
L["MSG_ROLL_ANSWER_BID"] = "Ok, j’inscris votre offre pour %s."
L["MSG_ROLL_ANSWER_NO"] = "Désolé, vous ne pouvez plus enchérir sur cet objet."
L["MSG_ROLL_ANSWER_NO_OTHER"] = "Désolé, je l'ai déjà donné à quelqu'un d'autre."
L["MSG_ROLL_ANSWER_NO_SELF"] = "Désolé, j'en ai besoin."
L["MSG_ROLL_ANSWER_NOT_ELIGIBLE"] = "Désolé, vous n’êtes pas éligible pour cet objet."
L["MSG_ROLL_ANSWER_NOT_TRADABLE"] = "Désolé, je ne peux pas l'échanger."
L["MSG_ROLL_ANSWER_STARTED"] = "Ok, je vais lancer un dé pour cela."
L["MSG_ROLL_ANSWER_YES"] = "Tu peux l'avoir, propose-moi un échange."
L["MSG_ROLL_ANSWER_YES_MASTERLOOT"] = "Tu peux l'avoir, propose un échange à <%s>."
L["MSG_ROLL_DISENCHANT"] = "<%s> va désenchanter %s -> Propose-moi un échange !"
L["MSG_ROLL_DISENCHANT_MASTERLOOT"] = "<%s> va désenchanter %s de <%s> -> Propose un échange avec lui/elle !"
L["MSG_ROLL_DISENCHANT_MASTERLOOT_OWN"] = "<%s> va désenchanter son propre %s !"
L["MSG_ROLL_DISENCHANT_WHISPER"] = "Tu as été choisi pour désenchanter %s, Propose-moi un échange."
L["MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT"] = "Tu as été choisi pour désenchanter %s de <%s>, Propose un échange avec lui/elle."
L["MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN"] = "Tu as été choisi pour désenchanter ton propre %s !"
L["MSG_ROLL_START"] = "Je donne %s -> /w moi ou /roll %d !"
L["MSG_ROLL_START_CONCISE"] = "Qui a besoin de %s ?"
L["MSG_ROLL_START_MASTERLOOT"] = "Distribution du %s de <%s> -> /w moi  ou /roll %d !"
L["MSG_ROLL_WINNER"] = "<%s> a gagné %s -> Propose-moi un échange !"
L["MSG_ROLL_WINNER_CONCISE"] = "%s Proposes moi un échange !"
L["MSG_ROLL_WINNER_MASTERLOOT"] = "<%s> a gagné %s de <%s> -> Propose un échange à %s ! "
L["MSG_ROLL_WINNER_MASTERLOOT_OWN"] = "<%s> a gagné son propre %s!"
L["MSG_ROLL_WINNER_WHISPER"] = "Tu as gagné %s! Débute un échange avec moi."
L["MSG_ROLL_WINNER_WHISPER_CONCISE"] = "Débute un échange avec moi."
L["MSG_ROLL_WINNER_WHISPER_MASTERLOOT"] = "tu as gagné le %s de <%s>! Débute un échange avec lui/elle."
L["MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN"] = "Tu as gagné ton propre %s !"


-- Addon
local L = LibStub("AceLocale-3.0"):NewLocale(Name, lang, lang == Locale.FALLBACK)
if not L then return end

L["ACTION"] = "Action"
L["ACTIONS"] = "Actions"
L["ADVERTISE"] = "Annoncer dans le chat"
L["ANSWER"] = "Répondre"
L["ASK"] = "Demander"
L["AWARD"] = "Attribuer"
L["AWARD_LOOT"] = "Attribuer le butin"
L["AWARD_RANDOMLY"] = "Attribuer au hasard"
L["BID"] = "Offre"
L["COMMUNITY_GROUP"] = "Groupe communautaire"
L["COMMUNITY_MEMBER"] = "Membre de la communauté"
L["CONFIRM"] = "Confirmer"
L["DISABLED"] = "Désactivé"
L["DOWN"] = "bas"
L["ENABLED"] = "Activé"
L["EQUIPPED"] = "Équipé "
L["GET_FROM"] = "Recevoir de"
L["GIVE_AWAY"] = "Distribution"
L["GIVE_TO"] = "Donner à"
L["GUILD_MASTER"] = "Maître de Guilde"
L["GUILD_OFFICER"] = "Officier de Guilde"
L["HIDE"] = "Masquer"
L["HIDE_ALL"] = "Tout masquer"
L["ITEM"] = "objet"
L["ITEM_LEVEL"] = "Niveau d'objet"
L["KEEP"] = "Garder"
L["LEFT"] = "Gauche"
L["MASTERLOOTER"] = "Maître du butin"
L["MESSAGE"] = "Message"
L["ML"] = "MdB"
L["OPEN_ROLLS"] = "Ouvrir la fenêtre de jet"
L["OWNER"] = "Propriétaire"
L["PLAYER"] = "Joueur"
L["PRIVATE"] = "Privé"
L["PUBLIC"] = "Publique"
L["RAID_ASSISTANT"] = "Raid assistant"
L["RAID_LEADER"] = "Raid leader"
L["RESTART"] = "Redémarrer"
L["RIGHT"] = "droite"
L["RINGS"] = "Bagues"
L["ROLL"] = "Jets de butin"
L["ROLLS"] = "Jets de butin"
L["SECONDS"] = "%ds"
L["SET_ANCHOR"] = "Définir l'ancre: Sens %s puis %s"
L["SHOW"] = "Afficher"
L["SHOW_ALL"] = "Tout afficher"
L["SHOW_HIDE"] = "Afficher/Masquer"
L["TRADE"] = "Échange"
L["TRINKETS"] = "Bijoux"
L["UP"] = "haut"
L["VERSION_NOTICE"] = "Une nouvelle version de cet addon est disponible. Veuillez le mettre à jour pour rester compatible avec les autres joueurs et ne manquer aucun butin !"
L["VOTE"] = "Vote"
L["VOTE_WITHDRAW"] = "Abandon"
L["VOTES"] = "Votes"
L["WAIT"] = "Patienter"
L["WINNER"] = "Gagnant"
L["WON"] = "Gagné"
L["YOUR_BID"] = "Votre offre"

-- Commands
L["HELP"] = [=[Débuter des jets ou des enchères pour du butin (/PersoLootRoll or /plr).
Utilisation:
/plr: Ouvre une fenêtre de jet de dé. /plr help: affiche ce message d'aide.
/plr roll [objet]* (<propriétaire> <délai>): débute un jet de dés pour un ou plusieurs objets.
/plr bid [item] (<propriétaire> <mise>): miser pour un objet d'un autre joueur.
/plr trade (<player>): débute un échange avec le joueur nommé ou votre cible actuelle.
/plr test: débute un jet de test (visible seulement par toi).
/plr options: ouvre la fenêtre de configuration.
/plr config: change les options en lignes de commande. /plr debug: activer le mode debug.
Legende [..] = item link, * = un ou plus, (..) optionnel.]=]
L["USAGE_BID"] = "Utilisation: /plr bid [objet] (<propriétaire> <offre>)"
L["USAGE_ROLL"] = "Utilisation: /plr roll [objet]* (<propriétaire> <expiration>)"

-- Errors
L["ERROR_CMD_UNKNOWN"] = "Commande inconnue '%s'"
L["ERROR_COLLECTION_FILTERS_DISABLED"] = "Tous les filtres de collection sont désactivés. Si vous voulez faire un jet de butin sur des items manquant dans une collection, activez-les dans les options de filtres d'objets."
L["ERROR_ITEM_NOT_TRADABLE"] = "Vous ne pouvez pas échanger cet objet."
L["ERROR_NOT_IN_GROUP"] = "Vous n'êtes pas dans un groupe ou un groupe de raid."
L["ERROR_NOT_MASTERLOOTER_OTHER_OWNER"] = "Vous devez devenir maitre de butin pour créer des lancers de dés pour les objets d'autres joueurs."
L["ERROR_NOT_MASTERLOOTER_TIMEOUT"] = "Vous ne pouvez pas changer le délai tant que vous n’êtes pas maître du butin."
L["ERROR_OPT_MASTERLOOT_EXPORT_FAILED"] = "Échec de l'envois des réglages de maître du butin à <%s> !"
L["ERROR_PLAYER_NOT_FOUND"] = "Impossible de trouver le joueur %q."
L["ERROR_ROLL_BID_IMPOSSIBLE_OTHER"] = "%s a fait une offre pour %s mais n'est pas autorisé à le faire maintenant."
L["ERROR_ROLL_BID_IMPOSSIBLE_SELF"] = "Vous ne pouvez pas faire d'offre pour cet objet maintenant."
L["ERROR_ROLL_BID_UNKNOWN_OTHER"] = "%s a envoyé une offre invalide pour %s."
L["ERROR_ROLL_BID_UNKNOWN_SELF"] = "Ce n'est pas une offre valide."
L["ERROR_ROLL_STATUS_NOT_0"] = "Le jet a déjà commencé ou s'est déjà terminé."
L["ERROR_ROLL_STATUS_NOT_1"] = "Le jet n'est pas en cours."
L["ERROR_ROLL_UNKNOWN"] = "Ce jet n'existe pas."
L["ERROR_ROLL_VOTE_IMPOSSIBLE_OTHER"] = "%s a voté pour %s mais n'est pas autorisé à le faire maintenant."
L["ERROR_ROLL_VOTE_IMPOSSIBLE_SELF"] = "Vous ne pouvez pas voter pour cet objet maintenant."

-- GUI
L["DIALOG_MASTERLOOT_ASK"] = "<%s> veut devenir votre maître de butin."
L["DIALOG_OPT_MASTERLOOT_LOAD"] = "Vos paramètres actuels de maître du butin seront remplacés par ceux stockés dans les infos de la guilde/communauté, êtes vous surs de vouloir continuer ?"
L["DIALOG_OPT_MASTERLOOT_SAVE"] = "Cela va remplacer les paramètres de butin stockés dans les infos de la guilde/communauté, par vos paramètres personnels, êtes vous surs de vouloir continuer ?"
L["DIALOG_ROLL_CANCEL"] = "Voulez-vous annuler ce jet ?"
L["DIALOG_ROLL_RESTART"] = "Voulez vous relancer ce jet ?"
L["DIALOG_ROLL_WHISPER_ASK"] = [=[Voulez-vous automatiquement chuchoter aux autres joueurs pour leur demander du butin ?
Vous pouvez changer cela quand vous voulez dans les options "Messages"]=]
L["FILTER"] = "Filtrer"
L["FILTER_ALL"] = "Pour tous les joueurs"
L["FILTER_ALL_DESC"] = "Inclure les jets de tous les joueurs, pas seulement les vôtres et ceux des objets qui pourraient vous intéresser."
L["FILTER_AWARDED"] = "Récompensé"
L["FILTER_AWARDED_DESC"] = "Inclure les jets remportés par quelqu'un."
L["FILTER_DONE"] = "Terminé"
L["FILTER_DONE_DESC"] = "Inclure les jets terminés."
L["FILTER_HIDDEN"] = "Masqué"
L["FILTER_HIDDEN_DESC"] = "Inclure les jets annulés, en cours, terminés ou masqués."
L["FILTER_TRADED"] = "Échangé "
L["FILTER_TRADED_DESC"] = "Inclure les jets pour lesquels les objets ont déja été échangés."
L["MENU_MASTERLOOT_SEARCH"] = "Recherche pour un maître du butin"
L["MENU_MASTERLOOT_SETTINGS"] = "Réglages de maître du butin"
L["MENU_MASTERLOOT_START"] = "Devenir maître du butin"
L["TIP_ADDON_MISSING"] = "Addon manquant:"
L["TIP_ADDON_VERSIONS"] = "Version de l'addon:"
L["TIP_CHAT_TO_TRADE"] = "Demande au propriétaire avant de procéder à l'échange"
L["TIP_COMP_ADDON_USERS"] = "Utilisateurs d'un addon compatible:"
L["TIP_ENABLE_WHISPER_ASK"] = "Astuce: Clic droit pour demander un butin automatiquement"
L["TIP_MASTERLOOT"] = "Maître du butin est actif"
L["TIP_MASTERLOOT_INFO"] = [=[|cffffff78Maître du butin:|r %s
|cffffff78Délai:|r %ds (+ %ds par butin)
|cffffff78Conseil:|r %s
|cffffff78Mises:|r %s
|cffffff78Votes:|r %s]=]
L["TIP_MASTERLOOT_START"] = "Devenir ou chercher un maître du butin"
L["TIP_MASTERLOOT_STOP"] = "Retirer le maître du butin"
L["TIP_MASTERLOOTING"] = "Groupe Maître du butin (%d):"
L["TIP_MINIMAP_ICON"] = [=[|cffffff78Clic gauche:|r Afficher la fenêtre de jet
|cffffff78Clic droit:|r Afficher les options]=]
L["TIP_SUPPRESS_CHAT"] = "|cffffff78Astuce:|r Vous pouvez supprimer un message unique du chat en maj-cliquant sur le boutont faire un jet/passer."
L["TIP_TEST"] = "Montre un jet de test"
L["TIP_VOTES"] = "Votes de :"

-- Options-Home
L["OPT_ACTIONS_WINDOW"] = "Afficher la fenêtre d'action"
L["OPT_ACTIONS_WINDOW_DESC"] = "Affiche la fenêtre d'action quand certaines sont en attente, ex. quand tu as gagné un objet dois échanger avec quelqu’un pour l'obtenir."
L["OPT_ACTIONS_WINDOW_MOVE"] = "Déplacer"
L["OPT_ACTIONS_WINDOW_MOVE_DESC"] = "Déplacer la fenêtre d'actions."
L["OPT_ACTIVE_GROUPS"] = "Activer par type de groupe"
L["OPT_ACTIVE_GROUPS_DESC"] = [=[Activé uniquement lorsque tu es dans un de ces types de groupe.

|cffffff78Groupe Guilde:|r Les membres de ta guilde représentent plus de %d%% du groupe.
|cffffff78Goupe de Communauté:|r Les membres de ta Communauté-WoW représentent plus de %d%% du groupe.]=]
L["OPT_ALLOW_DISENCHANT"] = "Autoriser les mises \"Désenchantement\""
L["OPT_ALLOW_DISENCHANT_DESC"] = "Autorise les autres joueurs à miser \"Désenchantement\" sur tes propres objets."
L["OPT_AUTHOR"] = "|cffffd100Auteur:|r Shrugal (EU-Mal'Ganis)"
L["OPT_AWARD_SELF"] = "Choisir toi même le vainqueur de tes objets"
L["OPT_AWARD_SELF_DESC"] = "Te laisse choisir qui doit recevoir le butin plutôt que de laisser l'addon le faire aléatoirement. Cette option est toujours activée quand tu es maître du butin."
L["OPT_BID_PUBLIC"] = "Enchères publiques"
L["OPT_BID_PUBLIC_DESC"] = "Les enchères sur tes jets sont publiques, toute personne avec cet addon peut les voir."
L["OPT_CHILL_MODE"] = "Mode décontracté"
L["OPT_CHILL_MODE_DESC"] = [=[Le but du mode décontracté est de retirer la pression liée au partage du butin, même si cela signifie de prendre plus de temps pour le faire. Les changements suivant sont apportés lorsque l'option est activée:

|cffffff781.|r Les jets de butin ne commencerons pas tant que tu n'as pas décidé de partager ou non ton butin, tu as donc tout le temps que tu désires pour faire ton choix, et les autres utilisateur d'addon ne verrons pas tes butins tant qu'ils ne seront pas partagés.
|cffffff782.|r Les jets de butin venant de toi auront le double du délai normal, ou pas de délai du tout si tu choisis de sélectionner le gagnant de ton butin toi même (voir l'option suivante).
|cffffff783.|r Les jets de butin pour les non utilisateur d'addon restent ouverts tant que tu le souhaites.

|cffff0000IMPORTANT:|r Les jets de butin, en provenance d'autres joueurs, sans le mode décontracté activé, auront le délai d'expiration normal. Dans un groupe, prêtes attention que l'option décontractée soit bien activée par tous.  ]=]
L["OPT_COLLECTIONS"] = "Toujours montrer les objets manquant dans ces collections en ignorant les autres règles."
L["OPT_DISENCHANT"] = "Désenchantement"
L["OPT_DISENCHANT_DESC"] = "Mise \"Désenchantement\" sur les butins que tu ne peux pas porter si tu possède le bon métier et que le propriétaire l'a autorisé."
L["OPT_DONT_SHARE"] = "Ne pas partager le butin"
L["OPT_DONT_SHARE_DESC"] = "Ne permet pas de faire de jet de butin sur les offres des autres joueurs, et ne partage pas votre butin non plus. l'addon refusera les requêtes pour votre butin (si activé). Tu peux toujours être maître du butin ou membre du conseil de distribution."
L["OPT_ENABLE"] = "Activé"
L["OPT_ENABLE_DESC"] = "Active ou désactive l'addon"
L["OPT_ENABLE_MODULE_DESC"] = "Active ou désactive ce module"
L["OPT_ILVL_THRESHOLD"] = "Seuil par Item-level"
L["OPT_ILVL_THRESHOLD_DESC"] = [=[Ignore les objets en fonction de leur ilvl par rapport à ce que tu as équipé actuellement ou dans tes sacs pour l'emplacement.

|cffffff78Négatif:|r Le niveau d'un butin peut être tout au plus aussi bas que le tient.
|cffffff78Positive:|r Le niveau d'un élément doit être au moins plus élevé que le tient.]=]
L["OPT_ILVL_THRESHOLD_DOUBLE"] = "Double le seuil pour ..."
L["OPT_ILVL_THRESHOLD_DOUBLE_DESC"] = "Certains butins doivent avoir le double du seuil normal d'ilvl, car les procs, etc. peuvent faire varier leur valeur de manière importante."
L["OPT_ILVL_THRESHOLD_RINGS"] = "Double le seuil des bagues"
L["OPT_ILVL_THRESHOLD_RINGS_DESC"] = "Les bagues doivent avoir le double du seuil normal, car leur valeur peut varier considérablement en raison de statistiques primaires manquantes."
L["OPT_ILVL_THRESHOLD_TRINKETS"] = "Double le seuil pour les bijoux"
L["OPT_ILVL_THRESHOLD_TRINKETS_DESC"] = "Les bijoux devraient avoir le double du seuil normal car les effets proc peuvent faire varier leur valeur de manière importante."
L["OPT_INFO"] = "Informations"
L["OPT_INFO_DESC"] = "Quelques informations à propos de cet addon."
L["OPT_ITEM_FILTER"] = "Filtres de butin"
L["OPT_ITEM_FILTER_DESC"] = "Changer quels butins te seront proposés pour un jet de butin."
L["OPT_ITEM_FILTER_ENABLE"] = "Activer les règles supplémentaires"
L["OPT_ITEM_FILTER_ENABLE_DESC"] = "Les objets que vous ne pouvez pas utiliser ou envoyer sur d'autres personnages seront toujours exclus. Vous pouvez activer des conditions supplémentaires que des objets doivent remplir pour vous être affichés ci-dessous."
L["OPT_LVL_THRESHOLD"] = "Seuil par niveau de personnage."
L["OPT_LVL_THRESHOLD_DESC"] = "Ignorez les objets qui nécessitent que le niveau de ton personnage soit supérieur à ce qu'il est actuellement. Régler sur -1 pour désactiver ce filtre."
L["OPT_MINIMAP_ICON"] = "Afficher l'icône de la minimap"
L["OPT_MINIMAP_ICON_DESC"] = "Afficher ou masquer l'icône de la minimap"
L["OPT_MISSING_PETS"] = "Mascottes manquantes"
L["OPT_MISSING_TRANSMOG"] = "Apparences de transmogrification manquantes"
L["OPT_MISSING_TRANSMOG_ITEM"] = "Vérifier l'objet de transmogrification"
L["OPT_MISSING_TRANSMOG_ITEM_DESC"] = "Vérifier si vous avez collecté cet objet spécifiquement, et pas seulement son apparence"
L["OPT_ONLY_MASTERLOOT"] = "Maître du butin uniquement"
L["OPT_ONLY_MASTERLOOT_DESC"] = "Activer l'addon uniquement quand le mode de maître du butin est actif (en guilde par exemple)"
L["OPT_PAWN"] = "Critère \"Pawn\""
L["OPT_PAWN_DESC"] = "Faire un jet uniquement si c'est une amélioration selon l'addon \"Pawn\"."
L["OPT_ROLL_FRAMES"] = "Afficher le cadre de jets de butin"
L["OPT_ROLL_FRAMES_DESC"] = "Afficher le cadre de jet du butin quand quelqu'un obtient un butin qui pourrai t’intéresser, pour que tu puisse faire un jet."
L["OPT_ROLLS_WINDOW"] = "Afficher la fenêtre de jets de butin"
L["OPT_ROLLS_WINDOW_DESC"] = "Toujours afficher la fenêtre de jet du butin (avec un résumé de tous les jets) quand quelqu'un obtient un butin qui pourrai t’intéresser. Cette option est toujours activée si tu es maître du butin. "
L["OPT_SPECS"] = "Spécialisations"
L["OPT_SPECS_DESC"] = "Ne propose que du butin pour ces spécialisations de classe."
L["OPT_TRANSLATION"] = "|cffffd100Traduction:|r Llathala (EU-Hyjal), Harkaan, Eldarinwa, Voxem"
L["OPT_TRANSMOG"] = " Vérifier la possession de l'apparence."
L["OPT_TRANSMOG_DESC"] = "Jet de butin sur les objets dont tu ne possède pas encore l'apparence."
L["OPT_UI"] = "Interface utilisateur"
L["OPT_UI_DESC"] = "Personnalise l'apparence de %s comme tu le veux."
L["OPT_VERSION"] = "|cffffd100Version:|r %s"

-- Options-Masterloot
L["OPT_MASTERLOOT"] = "Maître du butin"
L["OPT_MASTERLOOT_APPROVAL"] = "Approbation"
L["OPT_MASTERLOOT_APPROVAL_ACCEPT"] = "Approuver automatiquement le maître du butin"
L["OPT_MASTERLOOT_APPROVAL_ACCEPT_DESC"] = "Approuver automatiquement les demandes de maître du butin des ces joueurs."
L["OPT_MASTERLOOT_APPROVAL_ALLOW"] = "Permettre de devenir maître du butin"
L["OPT_MASTERLOOT_APPROVAL_ALLOW_ALL"] = "Autoriser tout le monde"
L["OPT_MASTERLOOT_APPROVAL_ALLOW_ALL_DESC"] = "|cffff0000AVERTISSEMENT:|r Cela permettra à tout le monde de demander à devenir maître du butin et potentiellement t'escroquer du butin! Ne l'activer que si tu sais ce que tu fais."
L["OPT_MASTERLOOT_APPROVAL_ALLOW_DESC"] = [=[Choisir qui peut demander à devenir maître du butin. tu recevras toujours un message contextuel te demandant de le confirmer, tu peux donc refuser une demande lorsqu'elle se produit.

|cffffff78Group de guilde:|r Membre d'une guilde dont les membres représentent plus de %d%% du groupe.]=]
L["OPT_MASTERLOOT_APPROVAL_DESC"] = "Tu choisi ici qui peut devenir maître du butin."
L["OPT_MASTERLOOT_APPROVAL_WHITELIST"] = "Maître du butin (liste blanche)"
L["OPT_MASTERLOOT_APPROVAL_WHITELIST_DESC"] = "Vous peux également nommer des joueurs spécifiques qui devraient pouvoir devenir maître du butin. Séparer plusieurs noms par des espaces ou des virgules."
L["OPT_MASTERLOOT_AWARD"] = "Attribution"
L["OPT_MASTERLOOT_BIDS_AND_VOTES"] = "Enchères et votes"
L["OPT_MASTERLOOT_CLUB"] = "Guilde/Communauté"
L["OPT_MASTERLOOT_CLUB_DESC"] = "Sectionner la guilde/communauté de laquelle importer les réglages."
L["OPT_MASTERLOOT_COUNCIL"] = "Conseil d'attribution du butin"
L["OPT_MASTERLOOT_COUNCIL_CLUB_RANK"] = "Rang de guilde/communauté des membres du conseil"
L["OPT_MASTERLOOT_COUNCIL_CLUB_RANK_DESC"] = "Ajouter des membres de ce rang de guilde/communauté à votre conseil, en plus des options ci-dessus."
L["OPT_MASTERLOOT_COUNCIL_DESC"] = "Joueurs du conseil de distribution du butin qui devrai recevoir le butin."
L["OPT_MASTERLOOT_COUNCIL_ROLES"] = "Rôles des membres du conseil"
L["OPT_MASTERLOOT_COUNCIL_ROLES_DESC"] = "Quels joueurs devraient automatiquement faire partie du conseil."
L["OPT_MASTERLOOT_COUNCIL_WHITELIST"] = "Conseil de distribution du butin (liste blanche)"
L["OPT_MASTERLOOT_COUNCIL_WHITELIST_DESC"] = "tu peux également nommer des joueurs spécifiques pour faire partie du conseil. Séparer plusieurs noms par des espaces ou des virgules."
L["OPT_MASTERLOOT_DESC"] = "Quand toi (ou quelqu'un d'autre) deviens maître du butin, tous les butins seront distribués par lui. tu recevras une notification à propos des butins que tu gagneras ou qui a gagnera vos butin, afin que tu puisse les échanger à la bonne personne."
L["OPT_MASTERLOOT_EXPORT_DONE"] = "Exportation des réglages de maître du butin vers <% s> réussie."
L["OPT_MASTERLOOT_EXPORT_GUILD_ONLY"] = "Remplacer les informations actuelles de la communauté par ce texte, car le remplacement automatique n'est possible que pour les guildes."
L["OPT_MASTERLOOT_EXPORT_NO_PRIV"] = "Demander à un officier de guilde de remplacer les informations de la guilde par ce texte, car tu n'as pas le droit de le faire."
L["OPT_MASTERLOOT_EXPORT_WINDOW"] = "Exporter les réglages de maître du butin"
L["OPT_MASTERLOOT_LOAD"] = "Importer"
L["OPT_MASTERLOOT_LOAD_DESC"] = "Importer les réglages de maître du butin depuis la description de guilde/communauté"
L["OPT_MASTERLOOT_RULES"] = "Règles"
L["OPT_MASTERLOOT_RULES_ALLOW_DISENCHANT_DESC"] = "Autoriser les membres du groupe à faire un jet \"désenchantement\" sur les butins."
L["OPT_MASTERLOOT_RULES_ALLOW_KEEP"] = "Permettre de garder le butin"
L["OPT_MASTERLOOT_RULES_ALLOW_KEEP_DESC"] = "Permettre au propriétaire de garder son butin, ne le distribuer que si celui-ci le décide."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD"] = "Automatiquement attribuer le butin"
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_DESC"] = "Laisser l'addon décider de qui devrait obtenir le butin, en fonction de facteurs tels que les votes du conseil, les enchères et les ilvl équipés."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT"] = "Délai de distribution automatique (initial)"
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_DESC"] = "La durée initiale d'attente avant la distribution automatique, laissant le temps de collecter des votes et potentiellement de décider manuellement."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_PER_ITEM"] = "Délai de distribution automatique (par butin)"
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_PER_ITEM_DESC"] = "Sera ajouté au temps d'attribution automatique initial pour chaque butin."
L["OPT_MASTERLOOT_RULES_BID_PUBLIC"] = "Enchères publiques"
L["OPT_MASTERLOOT_RULES_BID_PUBLIC_DESC"] = "Rends les enchères publiques, tout le monde peut voir les mises de chacun."
L["OPT_MASTERLOOT_RULES_DESC"] = "Ces règles s'appliquent à tout le monde quand tu es maître du butin."
L["OPT_MASTERLOOT_RULES_DISENCHANTER"] = "Enchanteur"
L["OPT_MASTERLOOT_RULES_DISENCHANTER_DESC"] = "Donner le butin que personne ne veut à ces joueurs pour désenchantement. Séparez plusieurs noms par des espaces ou des virgules."
L["OPT_MASTERLOOT_RULES_GREED_ANSWERS"] = "Réponses personnalisées \"Cupidité\" "
L["OPT_MASTERLOOT_RULES_GREED_ANSWERS_DESC"] = "Spécifier jusqu'à 9 réponses personnalisées lorsqu'un jet de 'Cupidité' est lancé, avec une priorité décroissante. Tu peux également insérer '%s' pour abaisser sa priorité sous les réponses précédentes. Séparer plusieurs entrées par des virgules. Tu peux y accéder en cliquant avec le bouton droit sur le bouton 'Cupidité' lorsque tu fais un jet de butin."
L["OPT_MASTERLOOT_RULES_NEED_ANSWERS"] = "Réponses personnalisées 'Besoin' "
L["OPT_MASTERLOOT_RULES_NEED_ANSWERS_DESC"] = "Spécifier jusqu'à 9 réponses personnalisées lorsqu'un jet de 'Besoin' est lancé, avec une priorité décroissante. Tu peux également insérer '%s' pour abaisser sa priorité sous les réponses précédentes. Séparer plusieurs entrées par des virgules. Tu peux y accéder en cliquant avec le bouton droit sur le bouton 'Besoin' lorsque tu fais un jet de butin."
L["OPT_MASTERLOOT_RULES_START_ALL"] = "Débuter les jets de butin pour tout le monde"
L["OPT_MASTERLOOT_RULES_START_ALL_DESC"] = "Débuter une série de jets pour tous les butins adaptés des membres du groupe sans addon."
L["OPT_MASTERLOOT_RULES_START_LIMIT"] = "Limite de Jets simultanés"
L["OPT_MASTERLOOT_RULES_START_LIMIT_DESC"] = "Nombre maximum de jets à exécuter simultanément. Les jets suivants démarreront automatiquement après la fin des précédents, même si tu as choisi de démarrer les jets manuellement. Désactiver en mettant à 0."
L["OPT_MASTERLOOT_RULES_START_MANUALLY"] = "Démarrer les jets manuellement"
L["OPT_MASTERLOOT_RULES_START_MANUALLY_DESC"] = "Ne lance pas de nouveaux jet automatiquement, mais manuellement via la fenêtre principale des jets de butin."
L["OPT_MASTERLOOT_RULES_START_WHISPER"] = "Démarrer les jets de butin par chuchotement"
L["OPT_MASTERLOOT_RULES_START_WHISPER_DESC"] = [=[Autoriser les membres du groupe sans l'addon à te chuchoter un item-link et le mot "%s" pour vous faire démarrer un jet pour leurs butins.
 
]=]
L["OPT_MASTERLOOT_RULES_TIMEOUT_BASE"] = "Délai de jet de butin (initial)"
L["OPT_MASTERLOOT_RULES_TIMEOUT_BASE_DESC"] = "Durée de base pour les jets de butin, quelque soit le nombre de butins obtenus."
L["OPT_MASTERLOOT_RULES_TIMEOUT_PER_ITEM"] = "Délai de jet de butin (par butin)"
L["OPT_MASTERLOOT_RULES_TIMEOUT_PER_ITEM_DESC"] = "Sera ajouté au délai de base pour tous les jets de butin."
L["OPT_MASTERLOOT_RULES_VOTE_PUBLIC"] = "Votes publiques"
L["OPT_MASTERLOOT_RULES_VOTE_PUBLIC_DESC"] = "Tu peux rendre le conseil de votes publique, tout le monde peut voir qui possède quels votes."
L["OPT_MASTERLOOT_SAVE"] = "Sauvegarder"
L["OPT_MASTERLOOT_SAVE_DESC"] = "Sauver tes réglages de maître du butin actuel dans ta description de guilde/communauté."

-- Options-Messages
L["OPT_CUSTOM_MESSAGES"] = "Messages personnalisés"
L["OPT_CUSTOM_MESSAGES_DEFAULT"] = "Langue par défaut (%s)"
L["OPT_CUSTOM_MESSAGES_DEFAULT_DESC"] = "Ces messages seront utilisés lorsque la langue des destinataires est %s ou une autre langue que celle par défaut du royaume (%s)."
L["OPT_CUSTOM_MESSAGES_DESC"] = "Tu peux réorganiser les espaces réservés (|cffffff78%s|r, |cffffff78%d|r) en ajoutant à leur position un signe $ au milieu, exemple :  |cffffff78%2$s|r au lieu de  |cffffff78%s|r pour le 2nd espace réservé. Voir le tooltip pour plus de détails."
L["OPT_CUSTOM_MESSAGES_LOCALIZED"] = "Langue du royaume (%s)"
L["OPT_CUSTOM_MESSAGES_LOCALIZED_DESC"] = "Ces messages seront utilisé quand le destinataire utilise la même langue que celle par défaut de ton royaume (%s)."
L["OPT_ECHO"] = "Information dans la fenêtre de discussion"
L["OPT_ECHO_DEBUG"] = "Debug"
L["OPT_ECHO_DESC"] = [=[Quelle quantité d'information veux tu voir dans la fenêtre de discussion?

|cffffff78Aucune:|r Pas de retours dans la fenêtre de discussion.
|cffffff78Erreurs:|r Uniquement les messages d'erreur.
|cffffff78Info:|r Erreurs et informations utiles sur lesquelles vous souhaitez probablement agir.
|cffffff78Verbeux:|r Affiche des notifications sur à peu près tout ce que fait l'addon.
|cffffff78Debug:|r Comme verbeux, plus des infos debug.]=]
L["OPT_ECHO_ERROR"] = "Erreur"
L["OPT_ECHO_INFO"] = "Info"
L["OPT_ECHO_NONE"] = "Rien"
L["OPT_ECHO_VERBOSE"] = "Verbeux"
L["OPT_GROUPCHAT"] = "Canal de discussion de groupe"
L["OPT_GROUPCHAT_ANNOUNCE"] = "Annonce des jets de butin et des vainqueurs"
L["OPT_GROUPCHAT_ANNOUNCE_DESC"] = "Annonce tes jets de butin et les vainqueurs de tes offres de butin dans le canal de discussion de groupe."
L["OPT_GROUPCHAT_CONCISE"] = "Annonces concises si possible "
L["OPT_GROUPCHAT_CONCISE_DESC"] = "Utilise des annonces plus concises quand les boss ne laisse qu'un seul butin à la fois (Donjon à 5 par exemple). l'addon affichera les liens dans la fenêtre de discussion. Les membres du groupe peuvent répondre \"%s\", \"%s\" ou \"+\" pour faire des jets de butin."
L["OPT_GROUPCHAT_DESC"] = "Choisis si l'addon utilise ou non la fenêtre de discussion de groupe."
L["OPT_GROUPCHAT_GROUP_TYPE"] = "Annonce par type de groupe"
L["OPT_GROUPCHAT_GROUP_TYPE_DESC"] = [=[Utiliser la fenêtre de discussion de groupe seulement si tu es membre d'un de ses types de groupe.

|cffffff78Groupe de guilde Group:|r Les membres de ta guilde représentent plus de %d%%  du groupe.
|cffffff78Groupe de Communauté:|r Les membres de ta communauté-WoW représentent plus de %d%% du groupe.]=]
L["OPT_GROUPCHAT_ROLL"] = "Jet de butin dans la fenêtre de discussion"
L["OPT_GROUPCHAT_ROLL_DESC"] = "Jet sur un butin que tu désires (/roll) si d'autres postent des liens de butin dans la fenêtre de discussion de groupe."
L["OPT_MESSAGES"] = "Messages"
L["OPT_MSG_BID"] = "Demander un butin: Variation de %d"
L["OPT_MSG_BID_DESC"] = "1: Item link"
L["OPT_MSG_ROLL_ANSWER_AMBIGUOUS"] = "Répondre: envois moi l'Item link"
L["OPT_MSG_ROLL_ANSWER_AMBIGUOUS_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_BID"] = "Répondre: Enchère enregistrée"
L["OPT_MSG_ROLL_ANSWER_BID_DESC"] = "1: Item link"
L["OPT_MSG_ROLL_ANSWER_NO_OTHER"] = "Répondre: Je le donne à quelqu'un d'autre"
L["OPT_MSG_ROLL_ANSWER_NO_OTHER_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_NO_SELF"] = "Répondre: j'en ai moi-même besoin"
L["OPT_MSG_ROLL_ANSWER_NO_SELF_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_NOT_TRADABLE"] = "Répondre: Ce n'est pas échangeable"
L["OPT_MSG_ROLL_ANSWER_NOT_TRADABLE_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_STARTED"] = "Répondre: J'ai lancé un jet pour toi"
L["OPT_MSG_ROLL_ANSWER_STARTED_DESC"] = "Après que quelqu'un sans l'addon nous a chuchoté de commencer un jet de butin pour lui (en tant que maître du butin)."
L["OPT_MSG_ROLL_ANSWER_YES"] = "Répondre: Tu peux l'avoir"
L["OPT_MSG_ROLL_ANSWER_YES_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_YES_MASTERLOOT"] = "Répondre : Tu peux l'avoir (comme maître du butin)"
L["OPT_MSG_ROLL_ANSWER_YES_MASTERLOOT_DESC"] = "1: Propriétaire du butin"
L["OPT_MSG_ROLL_DISENCHANT"] = "Annoncer un enchanteur"
L["OPT_MSG_ROLL_DISENCHANT_DESC"] = [=[1: Enchanteur
2: Item link]=]
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT"] = "Annoncer un enchanteur (comme maître du butin)"
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_DESC"] = [=[1: enchanteur
2: Item link
3: propriétaire du butin
4: son]=]
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_OWN"] = "Annoncer au propriétaire de désenchanter son butin (comme maître du butin)"
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_OWN_DESC"] = [=[1: Propriétaire du butin
2: Item link]=]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER"] = "Chuchoter à l'enchanteur"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_DESC"] = "1: Item link"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT"] = "Chuchoter à l'enchanteur (comme maître du butin)"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_DESC"] = [=[1: Item link
2: Propriétaire du butin
3: son]=]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN"] = "Chuchoter au propriétaire de désenchanter son butin (comme maître du butin)"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN_DESC"] = "1: Item link"
L["OPT_MSG_ROLL_START"] = "Annoncer un nouveau jet"
L["OPT_MSG_ROLL_START_CONCISE"] = "Annoncer un nouveau jet (concis)"
L["OPT_MSG_ROLL_START_CONCISE_DESC"] = "1: Item link"
L["OPT_MSG_ROLL_START_DESC"] = [=[1: Item link
2: Numéro du jet]=]
L["OPT_MSG_ROLL_START_MASTERLOOT"] = "Annoncer un nouveau jet (comme maître du butin)"
L["OPT_MSG_ROLL_START_MASTERLOOT_DESC"] = [=[1: Item link
2: Propriétaire du butin
3: Numéro du jet]=]
L["OPT_MSG_ROLL_WINNER"] = "Annoncer un vainqueur"
L["OPT_MSG_ROLL_WINNER_CONCISE"] = "Annoncer un vainqueur (concis)"
L["OPT_MSG_ROLL_WINNER_CONCISE_DESC"] = "1: Vainqueur"
L["OPT_MSG_ROLL_WINNER_DESC"] = [=[1: Vainqueur
2: Item link]=]
L["OPT_MSG_ROLL_WINNER_MASTERLOOT"] = "Annoncer un vainqueur (comme maître du butin)"
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_DESC"] = [=[1: Vainqueur
2: Item link
3: Propriétaire du butin
4: son]=]
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_OWN"] = "Annoncer que le propriétaire garde son butin (comme maître du butin)"
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_OWN_DESC"] = [=[1: Propriétaire du butin
2: Item link]=]
L["OPT_MSG_ROLL_WINNER_WHISPER"] = "Chuchoter au vainqueur du jet"
L["OPT_MSG_ROLL_WINNER_WHISPER_CONCISE"] = "Chuchoter au vainqueur du jet (concis)"
L["OPT_MSG_ROLL_WINNER_WHISPER_CONCISE_DESC"] = ""
L["OPT_MSG_ROLL_WINNER_WHISPER_DESC"] = "1: Item link"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT"] = "Chuchoter le vainqueur du jet (comme maître du butin)"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_DESC"] = [=[1: Item link
2: Propriétaire
3: son]=]
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN"] = "Chuchoter au propriétaire de garder son butin (comme maître du butin)"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN_DESC"] = "1: Item link"
L["OPT_SHOULD_CHAT"] = "Activer/Désactiver"
L["OPT_SHOULD_CHAT_DESC"] = "Défini quand l'addon utilisera les fenêtres de discussion de groupe/raid et chuchotera aux autres joueurs."
L["OPT_WHISPER"] = "Fenêtre de discussion des chuchotements"
L["OPT_WHISPER_ANSWER"] = "Répondre aux demandes"
L["OPT_WHISPER_ANSWER_DESC"] = "Laisser l'addon répondre aux chuchotements, concernant votre butin, des autres membres du groupe."
L["OPT_WHISPER_ASK"] = "Demander un butin"
L["OPT_WHISPER_ASK_DESC"] = "Chuchoter aux autres s'ils possèdent un butin que tu désire."
L["OPT_WHISPER_ASK_VARIANTS"] = "Activer les demandes alternatives"
L["OPT_WHISPER_ASK_VARIANTS_DESC"] = "Utilise différents textes (voir ci-dessous) quand tu demandes un butin, pour rendre les demandes moins répétitives."
L["OPT_WHISPER_DESC"] = "Sélectionne si oui ou non, l'addon va chuchoter aux autres joueurs et/ou  répondre aux messages entrant."
L["OPT_WHISPER_GROUP"] = "Chuchotement par type de groupe"
L["OPT_WHISPER_GROUP_DESC"] = "Chuchote aux autres joueurs s'ils possèdent un butin que tu souhaites, dépendant du type de groupe auquel tu appartient."
L["OPT_WHISPER_GROUP_TYPE"] = "Demandes par type de groupe"
L["OPT_WHISPER_GROUP_TYPE_DESC"] = [=[Demander du butin seulement si tu es membre d'un de ses types de groupe.

|cffffff78Groupe de guilde Group:|r Les membres de ta guilde représentent plus de %d%%  du groupe.
|cffffff78Groupe de Communauté:|r Les membres de ta communauté-WoW représentent plus de %d%% du groupe.]=]
L["OPT_WHISPER_SUPPRESS"] = "Supprimer les demandes"
L["OPT_WHISPER_SUPPRESS_DESC"] = "Supprime les messages de chuchotement entrants des joueurs éligibles lorsque tu distribues ton butin."
L["OPT_WHISPER_TARGET"] = "Demande un butin par cible"
L["OPT_WHISPER_TARGET_DESC"] = "Demande un butin selon si la cible est membre de ta guilde, d'une de tes communauté-WoW ou de ta liste d'amis."

-- Plugins-EPGP
L["EPGP"] = "EPGP"
L["EPGP_CREDIT_GP"] = "Créditer %d GP à <%s> pour %s"
L["EPGP_EP"] = "EP"
L["EPGP_ERROR_CREDIT_GP_FAILED"] = "Échec du crédit de %d GP à <%s> pour %s"
L["EPGP_GP"] = "GP"
L["EPGP_OPT_AWARD_BEFORE"] = "Priorité de récompenses "
L["EPGP_OPT_AWARD_BEFORE_DESC"] = "Choisir par avance la méthode d'attribution par défaut de la valeur EPGP PR qui doit être prise en compte lors de la détermination d'un gagnant."
L["EPGP_OPT_BID_WEIGHTS"] = "Enchérir des GP."
L["EPGP_OPT_BID_WEIGHTS_DESC"] = "Attribuer des poids différents aux jets d'enchères. Les GPs obtenus par le vainqueur des enchères sera multiplié par cette valeur, et peut être négative ou nulle."
L["EPGP_OPT_DESC"] = "Utiliser le score EPGP si le mode de distribution actif est maître du butin. Ceci inclus de montrer et de trier les joueurs par leur score de PR, ainsi que de créditer les GPs quand le butin est distribué."
L["EPGP_OPT_ONLY_GUILD_RAID"] = "Uniquement en raid de guilde"
L["EPGP_OPT_ONLY_GUILD_RAID_DESC"] = "Activé uniquement lorsque le raid est composé d'au moins  %d%% de membres de votre guilde."
L["EPGP_OPT_WARNING_NO_ADDON"] = "|cffff0000ATTENTION:|r Necessite que l'addon \"EPGP Next\" soit installé et actif pour que ce module fonctionne."
L["EPGP_OPT_WARNING_NO_OFFICER"] = "|cffff0000ATTENTION:|r Vous ne possédez pas les droits d'éditer les notes d'officier dans votre guilde, le module EPGP ne sera pas capable de créditer des GPs lorsque vous êtes maître du butin."
L["EPGP_PR"] = "PR"

-- Roll
L["BID_CHAT"] = "Demander %s pour %s -> %s"
L["BID_MAX_WHISPERS"] = "%s ne sera pas proposé pour %s car %d joueurs l'ont déjà été -> %s."
L["BID_NO_CHAT"] = "Impossible d'annoncer ou de demander de jet de dé pour %s."
L["BID_NO_CHAT_ADDONS"] = "Aucun jet de dés annoncé pour %s car un addon de gestion du butin est utilisé par tous les membres du groupe/raid. "
L["BID_NO_CHAT_ANNOUNCE"] = "Aucun jet de dés annoncé pour %s car l'option est désactivée."
L["BID_NO_CHAT_ASK"] = "%s ne sera pas proposé pour %s car l'option est désactivée -> %s."
L["BID_NO_CHAT_CLUB"] = "%s ne sera pas proposé pour %s car il/elle est membre d'une de tes communautés -> %s. "
L["BID_NO_CHAT_DND"] = "%s ne sera pas proposé pour %s car il/elle a le statu \"Ne pas déranger\" activé -> %s "
L["BID_NO_CHAT_FRIEND"] = "%s ne sera pas proposé pour %s car il/elle est un de tes amis -> %s. "
L["BID_NO_CHAT_GRP"] = "%s ne sera pas annoncé car c'est un groupe '%s'."
L["BID_NO_CHAT_GRP_ASK"] = "%s ne sera pas proposé pour %s car c'est un groupe '%s'. -> %s"
L["BID_NO_CHAT_GUILD"] = "%s ne sera pas proposé pour %s car il/elle est membre de ta guilde. -> %s"
L["BID_NO_CHAT_OTHER"] = "%s ne sera pas proposé pour %s car il/elle est sans affiliation. -> %s"
L["BID_NO_CHAT_SELF"] = "%s ne sera pas proposé pour %s car c'est toi même. -> %s"
L["BID_NO_CHAT_TRACKING"] = "%s ne sera pas proposé pour %s car il/elle utilise également un addon de butin. -> %s"
L["BID_PASS"] = "Transmettre %s de %s."
L["BID_START"] = "Mise avec %q pour %s de %s."
L["MASTERLOOTER_OTHER"] = "%s est maintenant votre maître du butin."
L["MASTERLOOTER_REJECT"] = "%s souhaite devenir maître du butin, mais n'est pas autorisé dans les options \"Maître du butin\"."
L["MASTERLOOTER_SELF"] = "Vous êtes maintenant le maître du butin."
L["ROLL_AWARD_BIDS"] = "Enchères"
L["ROLL_AWARD_RANDOM"] = "Aléatoire"
L["ROLL_AWARD_ROLLS"] = "Résultats des jets de butin"
L["ROLL_AWARD_VOTES"] = "Votes"
L["ROLL_AWARDED"] = "Attribué"
L["ROLL_AWARDING"] = "Attribution en cours"
L["ROLL_CANCEL"] = "Annulation des jets de butin pour %s de %s."
L["ROLL_END"] = "Fin des jets de butin pour %s de %s."
L["ROLL_IGNORING_BID"] = "Ignore les enchères de %s pour %s, car tu en as discuté avant -> Enchère: %s ou %s."
L["ROLL_LIST_EMPTY"] = "Les jets de butin en cours seront affichés ici"
L["ROLL_START"] = "Début des jets de butin pour %s de %s."
L["ROLL_STATUS_0"] = "En attente"
L["ROLL_STATUS_1"] = "En cours"
L["ROLL_STATUS_-1"] = "Annulé"
L["ROLL_STATUS_2"] = "Fini"
L["ROLL_TRADED"] = "Échangé"
L["ROLL_WHISPER_SUPPRESSED"] = "Enchère de %s pour %s -> %s / %s."
L["ROLL_WINNER_MASTERLOOT"] = "%s a gagné %s de %s."
L["ROLL_WINNER_OTHER"] = "%s a gagné ton %s. -> %s."
L["ROLL_WINNER_OWN"] = "Tu as gagné ton propre %s."
L["ROLL_WINNER_SELF"] = "Tu as gagné %s de %s. -> %s."
L["TRADE_CANCEL"] = "Échange avec %s annulé."
L["TRADE_START"] = "Début de l'échange avec %s."

-- Globals
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NO_ADDON"] = "Le propriétaire de cet objet n'utilise pas l'addon PersoLootRoll."
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NO_DISENCHANT"] = "La propriétaire n'a pas activer l'option \"Désenchantement\""
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NOT_ENCHANTER"] = "Vous n'êtes pas \"enchanteur\" sur ce personnage."


-- Other
L["ID"] = ID
L["ITEMS"] = ITEMS
L["LEVEL"] = LEVEL
L["STATUS"] = STATUS
L["TARGET"] = TARGET
L["ROLL_BID_1"] = NEED
L["ROLL_BID_2"] = GREED
L["ROLL_BID_3"] = ROLL_DISENCHANT
L["ROLL_BID_4"] = PASS
L[""] = ""
