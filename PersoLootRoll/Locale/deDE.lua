local Name, Addon = ...
local Locale = Addon.Locale
local lang = "deDE"

-- Chat messages
local L = {lang = lang}
setmetatable(L, Locale.MT)
Locale[lang] = L

-- Messages
L["MSG_BID_1"] = "Brauchst du das %s?"
L["MSG_BID_2"] = "Könnte ich %s haben, wenn du es nicht brauchst?"
L["MSG_BID_3"] = "Ich könnte %s gebrauchen, wenn du es nicht willst."
L["MSG_BID_4"] = "%s würde ich nehmen, wenn du es loswerden willst."
L["MSG_BID_5"] = "Brauchst du %s, oder könnte ich das haben?"
L["MSG_HER"] = "sie"
L["MSG_HIM"] = "ihn"
L["MSG_ITEM"] = "Item"
L["MSG_NEED"] = "bedarf,ja,yep,jap,jau,jo,joa,jawohl,nehm ich,würde? ich nehmen"
L["MSG_PASS"] = "passe,nein,nö,nope"
L["MSG_ROLL"] = "verrollen,vergeben"
L["MSG_ROLL_ANSWER_AMBIGUOUS"] = "Ich vergebe gerade mehrere Items, bitte schick mir den Link von dem Item das du haben möchtest."
L["MSG_ROLL_ANSWER_BID"] = "Ok, ich hab dein Gebot für %s registriert."
L["MSG_ROLL_ANSWER_NO"] = "Tut mir Leid, auf das Item kann nicht mehr geboten werden."
L["MSG_ROLL_ANSWER_NO_OTHER"] = "Tut mir Leid, ich habs schon jemand anderes gegeben."
L["MSG_ROLL_ANSWER_NO_SELF"] = "Tut mir Leid, Ich brauche es selber."
L["MSG_ROLL_ANSWER_NOT_ELIGIBLE"] = "Tut mir Leid, du kannst auf das Item nicht bieten."
L["MSG_ROLL_ANSWER_NOT_TRADABLE"] = "Tut mir Leid, ich kann das nicht handeln."
L["MSG_ROLL_ANSWER_STARTED"] = "Ok, ich werde es verlosen."
L["MSG_ROLL_ANSWER_YES"] = "Du kannst es haben, handel mich einfach an."
L["MSG_ROLL_ANSWER_YES_MASTERLOOT"] = "Du kannst es haben, handel %s einfach an."
L["MSG_ROLL_DISENCHANT"] = "<%s> wird %s entzaubern -> Mich anhandeln!"
L["MSG_ROLL_DISENCHANT_MASTERLOOT"] = "<%s> wird %s von <%s> entzaubern -> Sie/Ihn anhandeln!"
L["MSG_ROLL_DISENCHANT_MASTERLOOT_OWN"] = "<%s> wird sein/ihr eigenes %s entzaubern!"
L["MSG_ROLL_DISENCHANT_WHISPER"] = "Du wurdest ausgewählt %s zu entzaubern, bitte handel mich an."
L["MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT"] = "Du wurdest ausgewählt %s von <%s> zu entzaubern, bitte handel sie/ihn an."
L["MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN"] = "Du wurdest ausgewählt dein eigenes %s zu entzaubern!"
L["MSG_ROLL_START"] = "Vergebe %s -> /w me oder /roll %d!"
L["MSG_ROLL_START_CONCISE"] = "%s jemand Bedarf?"
L["MSG_ROLL_START_MASTERLOOT"] = "Vergebe %s von <%s> -> /w me oder /roll %d!"
L["MSG_ROLL_WINNER"] = "<%s> hat %s gewonnen -> Mich anhandeln!"
L["MSG_ROLL_WINNER_CONCISE"] = "<%s> bitte mich anhandeln!"
L["MSG_ROLL_WINNER_MASTERLOOT"] = "<%s> hat %s von <%s> gewonnen -> Sie/Ihn anhandeln!"
L["MSG_ROLL_WINNER_MASTERLOOT_OWN"] = "<%s> hat sein/ihr eigenes %s gewonnen!"
L["MSG_ROLL_WINNER_WHISPER"] = "Du hast %s gewonnen! Bitte handel mich an."
L["MSG_ROLL_WINNER_WHISPER_CONCISE"] = "Handel mich bitte an."
L["MSG_ROLL_WINNER_WHISPER_MASTERLOOT"] = "Du hast %s von <%s> gewonnen! Bitte handel sie/ihn an."
L["MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN"] = "Du hast dein eigenes %s gewonnen!"



-- Addon
local L = LibStub("AceLocale-3.0"):NewLocale(Name, lang, lang == Locale.FALLBACK)
if not L then return end

L["ACTION"] = "Aktion"
L["ACTIONS"] = "Aktionen"
L["ADVERTISE"] = "Im Chat ankündigen"
L["ANSWER"] = "Antwort"
L["ASK"] = "Frage"
L["AWARD"] = "Zuweisen"
L["AWARD_LOOT"] = "Beute zuweisen"
L["AWARD_RANDOMLY"] = "Zufällig zuweisen"
L["BID"] = "Gebot"
L["COMMUNITY_GROUP"] = "Community Gruppe"
L["COMMUNITY_MEMBER"] = "Community Mitglied"
L["CONFIRM"] = "Bestätigen"
L["DISABLED"] = "Deaktiviert"
L["DOWN"] = "unten"
L["ENABLED"] = "Aktiviert"
L["EQUIPPED"] = "Angezogen"
L["GET_FROM"] = "Bekomme von"
L["GIVE_AWAY"] = "Vergeben"
L["GIVE_TO"] = "Gib an"
L["GUILD_MASTER"] = "Gildenmeister"
L["GUILD_OFFICER"] = "Gildenoffizier"
L["HIDE"] = "Ausblenden"
L["HIDE_ALL"] = "Alle ausblenden"
L["ITEM"] = "Item"
L["ITEM_LEVEL"] = "Gegenstandsstufe"
L["KEEP"] = "Behalten"
L["LEFT"] = "links"
L["MASTERLOOTER"] = "Plündermeister"
L["MESSAGE"] = "Nachricht"
L["ML"] = "PM"
L["OPEN_ROLLS"] = "Öffne Roll-Fenster"
L["OWNER"] = "Besitzer"
L["PLAYER"] = "Spieler"
L["PRIVATE"] = "Privat"
L["PUBLIC"] = "Öffentlich"
L["RAID_ASSISTANT"] = "Raidassistent"
L["RAID_LEADER"] = "Raidleiter"
L["RESTART"] = "Neu starten"
L["RIGHT"] = "rechts"
L["RINGS"] = "Ringe"
L["ROLL"] = "Gerollt"
L["ROLLS"] = "Verlosungen"
L["SECONDS"] = "%ds"
L["SET_ANCHOR"] = "Verankerung setzen: Nach %s und %s wachsen"
L["SHOW"] = "Einblenden"
L["SHOW_ALL"] = "Alle anzeigen"
L["SHOW_HIDE"] = "Ein-/Ausblenden"
L["TRADE"] = "Handeln"
L["TRINKETS"] = "Schmuckstücke"
L["UP"] = "oben"
L["VERSION_NOTICE"] = "Es gibt eine neue Version dieses Addons. Bitte mache ein Update um kompatibel zu allen anderen zu bleiben und keine Beute zu verpassen!"
L["VOTE"] = "Abstimmen"
L["VOTE_WITHDRAW"] = "Zurücknehmen"
L["VOTES"] = "Stimmen"
L["WAIT"] = "Warte"
L["WINNER"] = "Gewinner"
L["WON"] = "Gewonnen"
L["YOUR_BID"] = "Dein Gebot"

-- Commands
L["HELP"] = [=[Verrolle und biete auf items (/PersoLootRoll oder /plr).
Benutzung:
/plr: Verlosungs-Fenster öffnen
/plr help: Gib diese Hilfsmeldung aus
/plr roll [Item]* (<Spieler> <Zeit>): Starte Verlosungen für ein or mehrere Item(s)
/plr bid [Item] (<Spieler> <Gebot>): Biete auf ein Item eines anderen Spielers
/plr trade (<Spieler>): Handle mit dem angegebenen Spieler oder mit deinem aktuellen Ziel
/plr test: Starte eine Test-Verlosung (nur du wirst sie sehen können)
/plr options: Öffne das Einstellungs-Fenster
/plr config: Einstellungen über die Commando-Zeile ändern
/plr debug: Debug-Modus an- oder ausschalten

Legende: (..) = optional, [..] = Item-Link, * = Ein- oder Mehrmals]=]
L["USAGE_BID"] = "Benutzung: /plr bid [Item] (<Spieler> <Gebot>)"
L["USAGE_ROLL"] = "Benutzung: /plr roll [Item]* (<Spieler> <Zeit>)"

-- Errors
L["ERROR_CMD_UNKNOWN"] = "Unbekannter Befehl '%s'"
L["ERROR_COLLECTION_FILTERS_DISABLED"] = "Alle Sammlungsfilter sind deaktiviert. Wenn du auf noch fehlende Sammlungsitems bieten möchtest aktiviere sie in den Item-Filter Optionen."
L["ERROR_ITEM_NOT_TRADABLE"] = "Du kannst dieses Item nicht handeln."
L["ERROR_NOT_IN_GROUP"] = "Du bist nicht in einer Gruppe/Raid."
L["ERROR_NOT_MASTERLOOTER_OTHER_OWNER"] = "Du musst Plündermeister werden, um Verlosungen für andere Spieler zu starten."
L["ERROR_NOT_MASTERLOOTER_TIMEOUT"] = "Du kannst die Laufzeit nicht ändern während jemand anders dein Plündermeister ist."
L["ERROR_OPT_MASTERLOOT_EXPORT_FAILED"] = "Export der Plündermeister-Einstellungen zu <%s> ist fehlgeschlagen!"
L["ERROR_PLAYER_NOT_FOUND"] = "Kann Spieler %q nicht finden."
L["ERROR_ROLL_BID_IMPOSSIBLE_OTHER"] = "%s hat ein Gebot für %s gesendet, aber hat dazu gerade keine Berechtigung."
L["ERROR_ROLL_BID_IMPOSSIBLE_SELF"] = "Du kannst für dieses Item gerade nicht bieten."
L["ERROR_ROLL_BID_UNKNOWN_OTHER"] = "%s hat ein ungültiges Gebot für %s gesendet."
L["ERROR_ROLL_BID_UNKNOWN_SELF"] = "Das ist keine gültige Antwort."
L["ERROR_ROLL_STATUS_NOT_0"] = "Diese Verlosung hat schon begonnen oder wurde beendet."
L["ERROR_ROLL_STATUS_NOT_1"] = "Diese Verlosung läuft noch nicht."
L["ERROR_ROLL_UNKNOWN"] = "Diese Verlosung existiert nicht."
L["ERROR_ROLL_VOTE_IMPOSSIBLE_OTHER"] = "%s hat eine Stimme für %s gesendet, aber hat dazu gerate keine Berechtigung."
L["ERROR_ROLL_VOTE_IMPOSSIBLE_SELF"] = "Du kannst für dieses Item gerade nicht abstimmen."

-- GUI
L["DIALOG_MASTERLOOT_ASK"] = "<%s> möchte dein Plündermeister werden."
L["DIALOG_OPT_MASTERLOOT_LOAD"] = "Deine aktuellen Plündermeister-Einstellugen werden durch die in der Gilden/Community-Info gespeicherten ersetzt, bist du sicher dass du fortfahren möchtest?"
L["DIALOG_OPT_MASTERLOOT_SAVE"] = "Jegliche Plündermeister-Einstellugen in der Gilden/Community-Info werden durch deine aktuellen Einstellungen ersetzt, bist du sicher dass du fortfahren möchtest?"
L["DIALOG_ROLL_CANCEL"] = "Möchtest du diese Verlosung abbrechen?"
L["DIALOG_ROLL_RESTART"] = "Möchtest du diese Verlosung neu starten?"
L["DIALOG_ROLL_WHISPER_ASK"] = "Möchtest du andere Spieler automatisch anflüstern, um sie nach Loot zu fragen? Du kannst das jederzeit in den \"Nachrichten\" Einstellungen ändern."
L["FILTER"] = "Filter"
L["FILTER_ALL"] = "Für alle Spieler"
L["FILTER_ALL_DESC"] = "Zeige Verlosungen für alle Spieler, nicht nur deine oder solche deren Items die dich interessieren könnten."
L["FILTER_AWARDED"] = "Zugewiesen"
L["FILTER_AWARDED_DESC"] = "Zeige Verlosungen an, die von jemandem gewonnen wurden."
L["FILTER_DONE"] = "Fertig"
L["FILTER_DONE_DESC"] = "Zeige fertige Verlosungen an."
L["FILTER_HIDDEN"] = "Versteckte"
L["FILTER_HIDDEN_DESC"] = "Zeige abgebrochene, wartende, gepasste und versteckte Verlosungen."
L["FILTER_TRADED"] = "Gehandelt"
L["FILTER_TRADED_DESC"] = "Zeige Verlosungen an, deren Items bereits gehandelt wurden."
L["MENU_MASTERLOOT_SEARCH"] = "Suche Plündermeister in Gruppe"
L["MENU_MASTERLOOT_SETTINGS"] = "Plündermeister Einstellungen"
L["MENU_MASTERLOOT_START"] = "Werde Plündermeister"
L["TIP_ADDON_MISSING"] = "Addon fehlt:"
L["TIP_ADDON_VERSIONS"] = "Addon Versionen:"
L["TIP_CHAT_TO_TRADE"] = "Bitte frag das Ziel erst bevor zu handelst"
L["TIP_COMP_ADDON_USERS"] = "Nutzer kompatibler Addons:"
L["TIP_ENABLE_WHISPER_ASK"] = "Tipp: Rechts-Klick um das automatische Fragen nach Loot zu aktivieren"
L["TIP_MASTERLOOT"] = "Plündermeister ist aktiv"
L["TIP_MASTERLOOT_INFO"] = [=[|cffffff78Plündermeister:|r %s
|cffffff78Roll Zeit:|r %ds (+ %ds pro Item)
|cffffff78Rat:|r %s
|cffffff78Gebote:|r %s
|cffffff78Stimmen:|r %s]=]
L["TIP_MASTERLOOT_START"] = "Werde oder suche einen Plündermeister"
L["TIP_MASTERLOOT_STOP"] = "Plündermeister entfernen"
L["TIP_MASTERLOOTING"] = "Plündermeister Gruppe (%d):"
L["TIP_MINIMAP_ICON"] = [=[|cffffff78Links-Klick:|r Verlosung-Übersicht umschalten
|cffffff78Rechts-Klick:|r Optionen öffnen]=]
L["TIP_SUPPRESS_CHAT"] = "|cffffff78Tipp:|r Du kannst einzelne Chat-Nachrichten unterdrücken, indem du den bieten/passen Button mit gedrückter Shift-Taste klickst."
L["TIP_TEST"] = "Zeige eine Test-Verlosung"
L["TIP_VOTES"] = "Stimmen von:"

-- Options-Home
L["OPT_ACTIONS_WINDOW"] = "Zeige Aktions-Übersicht"
L["OPT_ACTIONS_WINDOW_DESC"] = "Zeige die Aktions-Übersicht wenn eine Aktion ansteht, z.B. wenn du ein Item gewonnen hast und den Eigner anhandeln musst um es zu bekommen."
L["OPT_ACTIONS_WINDOW_MOVE"] = "Verschieben"
L["OPT_ACTIONS_WINDOW_MOVE_DESC"] = "Verschiebe die Aktions-Übersicht."
L["OPT_ACTIVE_GROUPS"] = "Aktiviere nach Gruppentyp"
L["OPT_ACTIVE_GROUPS_DESC"] = [=[Aktiviere das Addon nur, wenn du in einer dieser Gruppentypen bist.

|cffffff78Gildengruppe:|r Die Mitglieder einer Gilde stellen %d%% oder mehr der Gruppe.
|cffffff78Community Gruppe:|r Die Mitglieder einer deiner WoW-Communities stellen %d%% oder mehr der Gruppe.]=]
L["OPT_ALLOW_DISENCHANT"] = "Erlaube \"Entzaubern\" Gebote"
L["OPT_ALLOW_DISENCHANT_DESC"] = "Erlaube anderen \"Entzaubern\" auf deine Items zu bieten."
L["OPT_AUTHOR"] = "|cffffd100Author:|r Shrugal (EU-Mal'Ganis)"
L["OPT_AWARD_SELF"] = "Eigene Beute selbst verteilen"
L["OPT_AWARD_SELF_DESC"] = "Wähle selbst wer deinen Loot bekommen soll, anstatt das Addon entscheiden zu lassen. Wenn du Plündermeister bist ist dies immer aktiv"
L["OPT_BID_PUBLIC"] = "Gebote öffentlich"
L["OPT_BID_PUBLIC_DESC"] = "Gebote deiner Verlosungen sind öffentlich, sodass jeder mit dem Addon sie sehen kann."
L["OPT_CHILL_MODE"] = "Chill-Modus"
L["OPT_CHILL_MODE_DESC"] = [=[Die Idee vom "Chill-Modus" ist keinen Zeitdruck mehr bei der Vergabe von Beute zu haben, selbst wenn es dadurch etwas länger dauert. Wenn du ihn aktivierst ändert sich folgendes:

|cffffff781.|r Verlosungen von dir starten erst nachdem du sie geteilt hast, sodass do soviel Zeit zum Enscheiden hast wie du möchtest. Außerdem sehen andere Addon-Nutzer deine Items nicht mehr schon vorher.
|cffffff782.|r Verlosungen von dir haben doppelte Laufzeit, oder überhaupt keine wenn du dich entschieden hast Gewinner deiner Items selbst auszuwählen (siehe nächste Option).
|cffffff783.|r Verlosungen von Gruppenmitgliedern ohne Addon bleiben auch solange bestehen bis du dich entschieden hast.

|cffff0000WICHTIG:|r Verlosungen von anderen Addon-Nutzern ohne aktivem "Chill-Mode" haben weiterhin die normale Laufzeit. Für einen entspannten Run solltest du sicherstellen, dass alle in deiner Gruppe "Chill-Mode" aktiviert haben.]=]
L["OPT_COLLECTIONS"] = "Zeige immer fehlende Items von diesen Sammlungen, unabhängig von den anderen Regeln."
L["OPT_DISENCHANT"] = "Entzaubern"
L["OPT_DISENCHANT_DESC"] = "Biete \"Entzaubern\" auf Items die du nicht nutzen kannst, wenn du den Beruf hast und der Item-Besitzer es erlaubt hat."
L["OPT_DONT_SHARE"] = "Keine Beute teilen"
L["OPT_DONT_SHARE_DESC"] = "Rolle nicht auf die Beute anderer, und teile deine eigene Beute nicht. Das Addon wird Anfragen zu deiner eigenen Beute verneinen (wenn aktiviert), und du kannst weiterhin Plündermeister und Ratsmitglied sein."
L["OPT_ENABLE"] = "Aktiviert"
L["OPT_ENABLE_DESC"] = "Aktiviere oder deaktiviere das Addon"
L["OPT_ENABLE_MODULE_DESC"] = "Aktiviere oder deaktiviere dieses Modul"
L["OPT_ILVL_THRESHOLD"] = "Item-Level Schwelle"
L["OPT_ILVL_THRESHOLD_DESC"] = [=[Ignoriere Items basierend auf ihrem Item-Level im Vergleich zu den Items die du für den Slot angelegt oder in der Tasche hast.

|cffffff78Negativ:|r Das Level eines Items kann max. um so viel niedriger sein als deins.
|cffffff78Positiv:|r Das Level eines Items muss min. um so viel höher sein als deins.]=]
L["OPT_ILVL_THRESHOLD_DOUBLE"] = "Doppelte Schwelle für ..."
L["OPT_ILVL_THRESHOLD_DOUBLE_DESC"] = "Einige Items sollten eine doppelt so hohe Itel-Level Schwelle haben, da ihr Wert durch Proc-Effekte etc. stark schwanken kann."
L["OPT_ILVL_THRESHOLD_RINGS"] = "Doppelte Schwelle für Ringe"
L["OPT_ILVL_THRESHOLD_RINGS_DESC"] = "Ringe sollten eine doppelt so hohe Schwelle haben, da ihr Wert durch fehlende Primär-Attribute stark schwanken kann."
L["OPT_ILVL_THRESHOLD_TRINKETS"] = "Doppelte Schwelle für Trinkets"
L["OPT_ILVL_THRESHOLD_TRINKETS_DESC"] = "Trinkets sollten eine doppelt so hohe Schwelle haben, da ihr Wert durch Proc-Effekte stark schwanken kann."
L["OPT_INFO"] = "Informationen"
L["OPT_INFO_DESC"] = "Ein paar Informationen über das Addon."
L["OPT_ITEM_FILTER"] = "Item Filter"
L["OPT_ITEM_FILTER_DESC"] = "Ändere welche Items dir vorgeschlagen werden."
L["OPT_ITEM_FILTER_ENABLE"] = "Aktiviere zusätzliche Regeln"
L["OPT_ITEM_FILTER_ENABLE_DESC"] = "Items die du nicht verwenden oder zu einem Twink senden kannst werden immer herausgefiltert. Unten kannst du zusätzliche Regeln festlegen, welche Items erfüllen müssen um dir vorgeschlagen zu werden."
L["OPT_LVL_THRESHOLD"] = "Character-Level Schwelle"
L["OPT_LVL_THRESHOLD_DESC"] = "Ignoriere Items deren benötigtes Charakter-Level mehr als diesen Wert über deinem aktuellen Level liegen. Setze den Wert auf -1 um diesen Filter zu deaktivieren."
L["OPT_MINIMAP_ICON"] = "Minimap Icon anzeigen"
L["OPT_MINIMAP_ICON_DESC"] = "Das Minimap Icon anzeigen oder ausblenden."
L["OPT_MISSING_PETS"] = "Fehlende Haustiere"
L["OPT_MISSING_TRANSMOG"] = "Fehlende Transmog-Aussehen"
L["OPT_MISSING_TRANSMOG_ITEM"] = "Überprüfe Transmog-Item"
L["OPT_MISSING_TRANSMOG_ITEM_DESC"] = "Überprüfe ob du ein Item gesammelt hast, nicht nur ob du das Transmog-Aussehen besitzt."
L["OPT_ONLY_MASTERLOOT"] = "Nur Plündermeister"
L["OPT_ONLY_MASTERLOOT_DESC"] = "Aktiviere das Addon nur, wenn der Plündermeister-Modus aktiv ist (z.B. mit deiner Gilde)"
L["OPT_PAWN"] = "Überprüfe \"Pawn\""
L["OPT_PAWN_DESC"] = "Rolle nur auf Items, die laut dem \"Pawn\" Addon ein Upgrade für dich sind."
L["OPT_ROLL_FRAMES"] = "Zeige Roll-Fenster"
L["OPT_ROLL_FRAMES_DESC"] = "Zeige Roll-Fenster wenn jemand etwas plündert dass dich interessieren könnten, sodass du darauf rollen kannst."
L["OPT_ROLLS_WINDOW"] = "Zeige Verlosungs-Übersicht"
L["OPT_ROLLS_WINDOW_DESC"] = "Zeige die Verlosungs-Übersicht jedes Mal wenn jemand etwas plündert dass dich interessieren könnten. Wenn du Plündermeister bist ist dies immer aktiv."
L["OPT_SPECS"] = "Spezialisierungen"
L["OPT_SPECS_DESC"] = "Schlage nur Beute für diese Klassen-Spezialisierungen vor."
L["OPT_TRANSLATION"] = "|cffffd100Übersetzung:|r Shrugal (EU-Mal'Ganis)"
L["OPT_TRANSMOG"] = "Prüfe Transmog-Aussehen"
L["OPT_TRANSMOG_DESC"] = "Rolle auf Items deren Aussehen du noch nicht hast."
L["OPT_UI"] = "Benutzerinterface"
L["OPT_UI_DESC"] = "Passe das Aussehen von %s nach deinen Bedürfnissen an."
L["OPT_VERSION"] = "|cffffd100Version:|r %s"

-- Options-Masterloot
L["OPT_MASTERLOOT"] = "Plündermeister"
L["OPT_MASTERLOOT_APPROVAL"] = "Zustimmung"
L["OPT_MASTERLOOT_APPROVAL_ACCEPT"] = "Plündermeister automatisch akzeptieren"
L["OPT_MASTERLOOT_APPROVAL_ACCEPT_DESC"] = "Akzeptiere Plündermeister-Anfragen von diesen Spielern automatisch."
L["OPT_MASTERLOOT_APPROVAL_ALLOW"] = "Plündermeister erlauben"
L["OPT_MASTERLOOT_APPROVAL_ALLOW_ALL"] = "Jeden erlauben"
L["OPT_MASTERLOOT_APPROVAL_ALLOW_ALL_DESC"] = "|cffff0000WARNUNG:|r Diese Option erlaubt jedem dir eine Plündermeister-Anfrage zu schicken, es könnte also theoretisch passieren, dass du um deine Beute betrogen wirst. Aktiviere dies nur wenn du weißt was du tust."
L["OPT_MASTERLOOT_APPROVAL_ALLOW_DESC"] = [=[Entscheide wer dein Plündermeister werden kann. Du bekommst dann eine Popup-Nachricht die nach deiner Zustimmung verlangt, du kannst also Anfragen immer noch ablehnen.

|cffffff78Gildengruppe:|r Jemand aus einer Gilde deren Mitglieder %d%% oder mehr des Raids stellen.]=]
L["OPT_MASTERLOOT_APPROVAL_DESC"] = "Hier kannst du festlegen wer dein Plündermeister werden kann."
L["OPT_MASTERLOOT_APPROVAL_WHITELIST"] = "Plündermeister Whitelist"
L["OPT_MASTERLOOT_APPROVAL_WHITELIST_DESC"] = "Du kannst hier Namen von Spielern eintragen, die zusätzlich dein Plündermeister werden können sollen. Trenne mehrere Namen mit Leerzeichen oder Kommas."
L["OPT_MASTERLOOT_AWARD"] = "Vergabe"
L["OPT_MASTERLOOT_BIDS_AND_VOTES"] = "Gebote und Stimmen"
L["OPT_MASTERLOOT_CLUB"] = "Gilde/Community"
L["OPT_MASTERLOOT_CLUB_DESC"] = "Wähle die Gilde/Community aus, von der du die Einstellungen im-/exportieren möchtest."
L["OPT_MASTERLOOT_COUNCIL"] = "Rat"
L["OPT_MASTERLOOT_COUNCIL_CLUB_RANK"] = "Rat Gilden/Community Rang"
L["OPT_MASTERLOOT_COUNCIL_CLUB_RANK_DESC"] = "Füge Gilden/Community Mitglieder mit diesem Rang deinem Rat hinzu, zusätzlich zu der obigen Option."
L["OPT_MASTERLOOT_COUNCIL_DESC"] = "Spieler in deinem Rat können darüber abstimmen, wer welche Beute bekommen soll."
L["OPT_MASTERLOOT_COUNCIL_ROLES"] = "Rat Rollen"
L["OPT_MASTERLOOT_COUNCIL_ROLES_DESC"] = "Welche Spieler sollen automatisch Teil deines Beute-Rats werden."
L["OPT_MASTERLOOT_COUNCIL_WHITELIST"] = "Rat Whitelist"
L["OPT_MASTERLOOT_COUNCIL_WHITELIST_DESC"] = "Du kannst hier Namen von Spielern eintragen, die zusätzlich in deinem Rat sein sollen. Trenne mehrere Namen mit Leerzeichen oder Kommas."
L["OPT_MASTERLOOT_DESC"] = "Wenn du (oder jemand anderes) Plündermeister wird, dann wird jegliche Beute von diesem Spieler verteilt. Du wirst benachrichtigt wessen Items du gewinnst bzw. wer deine Items gewinnt, sodass du mit der entsprechenden Person handeln kannst."
L["OPT_MASTERLOOT_EXPORT_DONE"] = "Plündermeister-Einstellungen wurden erfolgreich nach <%s> exportiert."
L["OPT_MASTERLOOT_EXPORT_GUILD_ONLY"] = "Bitte ersetze die Community-Beschreibung mit diesem Text, da das automatische Überschreiben nur bei Gilden funktioniert."
L["OPT_MASTERLOOT_EXPORT_NO_PRIV"] = "Bitte einen Gildenoffizier die Gilden-Beschreibung durch diesen Text zu ersetzen, da du nicht die Berechtigungen hast es selber zu tun."
L["OPT_MASTERLOOT_EXPORT_WINDOW"] = "Plündermeister-Einstellungen exportieren"
L["OPT_MASTERLOOT_LOAD"] = "Laden"
L["OPT_MASTERLOOT_LOAD_DESC"] = "Lade Plündermeister-Einstellungen von der Gilden/Community-Beschreibung."
L["OPT_MASTERLOOT_RULES"] = "Regeln"
L["OPT_MASTERLOOT_RULES_ALLOW_DISENCHANT_DESC"] = "Erlaube Gruppenmitgliedern \"Entzaubern\" auf Items zu bieten."
L["OPT_MASTERLOOT_RULES_ALLOW_KEEP"] = "Erlaube Beute zu behalten"
L["OPT_MASTERLOOT_RULES_ALLOW_KEEP_DESC"] = "Spieler können ihre eigene Beute behalten. Sie wird nur vergeben, wenn sie sich entscheiden sie nicht zu behalten."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD"] = "Beute automatisch vergeben"
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_DESC"] = "Lass das Addon automatisch entscheiden wer die Beute bekommen soll, basierend auf Faktoren wie Rat Stimmen, Gebote, ausgerüstetes Itemlevel etc."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT"] = "Automatsch vergeben Basis Laufzeit"
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_DESC"] = "Die Basis Wartezeit bevor Beute automatisch vergeben wird, sodass du Zeit hast Ratsstimmen zu sammeln und evtl. doch selbst zu entscheiden."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_PER_ITEM"] = "Automatisch vergeben zusätzliche Laufzeit pro Item"
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_PER_ITEM_DESC"] = "Für jedes gedroppte Item wird so viel zur Wartezeit für automatische Vergabe hinzugefügt."
L["OPT_MASTERLOOT_RULES_BID_PUBLIC"] = "Gebote öffentlich"
L["OPT_MASTERLOOT_RULES_BID_PUBLIC_DESC"] = "Du kannst Gebote öffentlich machen, sodass jeder sehen kann wer für was gestimmt hat."
L["OPT_MASTERLOOT_RULES_DESC"] = "Diese Optionen betreffen jeden der dich als Plündermeister akzeptiert."
L["OPT_MASTERLOOT_RULES_DISENCHANTER"] = "Entzauberer"
L["OPT_MASTERLOOT_RULES_DISENCHANTER_DESC"] = "Gib Beute die niemand haben möchte an Spieler zum Entzaubern. Trenne mehrere Namen mit Leerzeichen oder Kommas."
L["OPT_MASTERLOOT_RULES_GREED_ANSWERS"] = "Eigene 'Gier' Antworten"
L["OPT_MASTERLOOT_RULES_GREED_ANSWERS_DESC"] = [=[Lege bis zu 9 eigene Antworten für das 'Gier' Gebot fest, in absteigender Priorität. Du kannst auch '%s' selbst hinzufügen, um dessen Priorität unter die der vorherigen Antworten zu senken Trenne mehrer Einträge mit Kommas.

Beim Rollen erreichst du sie per Rechtsklick auf den 'Gier' Button.]=]
L["OPT_MASTERLOOT_RULES_NEED_ANSWERS"] = "Eigene 'Bedarf' Antworten"
L["OPT_MASTERLOOT_RULES_NEED_ANSWERS_DESC"] = [=[Lege bis zu 9 eigene Antworten für das 'Bedarf' Gebot fest, in absteigender Priorität. Du kannst auch '%s' selbst hinzufügen, um dessen Priorität unter die der vorherigen Antworten zu senken. Trenne mehrer Einträge mit Kommas.

Beim Rollen erreichst du sie per Rechtsklick auf den 'Bedarf' Button.]=]
L["OPT_MASTERLOOT_RULES_START_ALL"] = "Starte Verlosungen für jeden"
L["OPT_MASTERLOOT_RULES_START_ALL_DESC"] = "Starte Verlosungen für alle erbeuteten Items von Gruppenmitgliedern ohne Addon."
L["OPT_MASTERLOOT_RULES_START_LIMIT"] = "Gleichzeitige Verlosungen Limit"
L["OPT_MASTERLOOT_RULES_START_LIMIT_DESC"] = [=[Maximale Anzahl an gleichzeitig laufender Verlosungen. Nachfolgende Verlosungen starten automatisch nachdem die vorherigen beendet wurden, selbst wenn manueller Start eingestellt wurde.

Zum deaktivieren 0 auswählen.]=]
L["OPT_MASTERLOOT_RULES_START_MANUALLY"] = "Starte Verlosungen manuell"
L["OPT_MASTERLOOT_RULES_START_MANUALLY_DESC"] = "Starte neue Verlosungen nicht automatisch, sondern per Hand über das Roll-Fenster."
L["OPT_MASTERLOOT_RULES_START_WHISPER"] = "Starte Verlosungen per Flüsternachricht"
L["OPT_MASTERLOOT_RULES_START_WHISPER_DESC"] = "Erlaube Gruppenmitgliedern ohne Addon dir einen Item-Link und das Wort \\\"%s\\\" zu flüster, um eine Verlosung für ihre Beute zu starten."
L["OPT_MASTERLOOT_RULES_TIMEOUT_BASE"] = "Verlosung Basis Laufzeit"
L["OPT_MASTERLOOT_RULES_TIMEOUT_BASE_DESC"] = "Die Basis Laufzeit von Verlosungen, unabhängig davon wieviele Items gedropped sind."
L["OPT_MASTERLOOT_RULES_TIMEOUT_PER_ITEM"] = "Zusätzliche Laufzeit pro Item"
L["OPT_MASTERLOOT_RULES_TIMEOUT_PER_ITEM_DESC"] = "Für jedes gedroppte Item wird so viel zur Laufzeit von Verlosungen hinzugefügt."
L["OPT_MASTERLOOT_RULES_VOTE_PUBLIC"] = "Abstimmung öffentlich"
L["OPT_MASTERLOOT_RULES_VOTE_PUBLIC_DESC"] = "Du kannst Rat Stimmen öffentlich machen, sodass jeder sehen kann wer wieviele Stimmen bekommen hat."
L["OPT_MASTERLOOT_SAVE"] = "Speichern"
L["OPT_MASTERLOOT_SAVE_DESC"] = "Speichere deine aktuellen Plündermeister-Einstellungen in der Gilden/Community-Beschreibung."

-- Options-Messages
L["OPT_CUSTOM_MESSAGES"] = "Nachrichten anpassen"
L["OPT_CUSTOM_MESSAGES_DEFAULT"] = "Standard Sprache (%s)"
L["OPT_CUSTOM_MESSAGES_DEFAULT_DESC"] = "Diese Nachrichten werden verwendet, wenn der Empfänger %s oder nicht die Standardsprache deines Servers (%s) spricht."
L["OPT_CUSTOM_MESSAGES_DESC"] = "Du kannst die Reihenfolge von Platzhaltern (|cffffff78%s|r, |cffffff78%d|r) verändern, indem du ihre Position und das $ Zeichen in der Mitte einfügst, also z.B. |cffffff78%2$s|r statt |cffffff78%s|r für den 2. Platzhalter. Weitere Details in den Tooltips."
L["OPT_CUSTOM_MESSAGES_LOCALIZED"] = "Server Sprache (%s)"
L["OPT_CUSTOM_MESSAGES_LOCALIZED_DESC"] = "Diese Nachrichten werden verwendet, wenn der Empfänger die Standardsprache deines Servers (%s) spricht."
L["OPT_ECHO"] = "Chat Informationen"
L["OPT_ECHO_DEBUG"] = "Debug"
L["OPT_ECHO_DESC"] = [=[Wie viel Information möchtest du vom Addon im Chat sehen?

|cffffff78Nichts:|r Keine Infos im Chat.
|cffffff78Fehler:|r Nur Fehlernachrichten.
|cffffff78Info:|r Fehler und nützliche Infos, auf die du wahrscheinlich reagieren möchtest.
|cffffff78Ausführlich:|r Informiert dich über quasi jede Aktion des Addons.
|cffffff78Debug:|r Genauso wie Ausführlich, und zusätzlich Debug-Informationen.]=]
L["OPT_ECHO_ERROR"] = "Fehler"
L["OPT_ECHO_INFO"] = "Info"
L["OPT_ECHO_NONE"] = "Nichts"
L["OPT_ECHO_VERBOSE"] = "Ausführlich"
L["OPT_GROUPCHAT"] = "Gruppenchat"
L["OPT_GROUPCHAT_ANNOUNCE"] = "Verkünde Verlosungen und Gewinner"
L["OPT_GROUPCHAT_ANNOUNCE_DESC"] = "Verkünde deine Verlosungen und Gewinner deiner Verlosungen im Gruppen-Chat."
L["OPT_GROUPCHAT_CONCISE"] = "Knappe Ankündigungen wenn möglich"
L["OPT_GROUPCHAT_CONCISE_DESC"] = [=[Verwende knappere Ankündigungen, wenn Bosse nur ein Item droppen (z.B. in 5-Mann Dungeons).

Das Addon wird nur Item-Links in den Chat posten, und Gruppenmitglieder können einfach "%s", "%s" or "+" anworten, um auf sie zu bieten.]=]
L["OPT_GROUPCHAT_DESC"] = "Hier kannst du ändern wann das Addon Nachrichten im Gruppen-Chat posten soll."
L["OPT_GROUPCHAT_GROUP_TYPE"] = "Verkünde nach Gruppentyp"
L["OPT_GROUPCHAT_GROUP_TYPE_DESC"] = [=[Schreibe im Gruppen-Chat nur, wenn du in einer dieser Gruppentypen bist.

|cffffff78Gildengruppe:|r Jemand aus einer Gilde deren Mitglieder %d%% oder mehr der Gruppe stellen.
|cffffff78Community Gruppe:|r Die Mitglieder einer deiner WoW-Communities stellen %d%% oder mehr der Gruppe.]=]
L["OPT_GROUPCHAT_ROLL"] = "Auf Loot im Chat rollen"
L["OPT_GROUPCHAT_ROLL_DESC"] = "Rolle auf Loot (/roll), der im Gruppen-Chat gepostet wurde."
L["OPT_MESSAGES"] = "Nachrichten"
L["OPT_MSG_BID"] = "Frage nach Beute: Variante %d"
L["OPT_MSG_BID_DESC"] = "1: Item Link"
L["OPT_MSG_ROLL_ANSWER_AMBIGUOUS"] = "Antwort: Sende mir den Item Link"
L["OPT_MSG_ROLL_ANSWER_AMBIGUOUS_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_BID"] = "Antwort: Gebot registriert"
L["OPT_MSG_ROLL_ANSWER_BID_DESC"] = "1: Item Link"
L["OPT_MSG_ROLL_ANSWER_NO_OTHER"] = "Antwort: Ich hab's jemand anderes gegeben"
L["OPT_MSG_ROLL_ANSWER_NO_OTHER_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_NO_SELF"] = "Antwort: Ich brauche das selbst"
L["OPT_MSG_ROLL_ANSWER_NO_SELF_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_NOT_TRADABLE"] = "Antwort: Es ist nicht handelbar"
L["OPT_MSG_ROLL_ANSWER_NOT_TRADABLE_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_STARTED"] = "Antwort: Ich hab eine Verlosung für ich gestartet"
L["OPT_MSG_ROLL_ANSWER_STARTED_DESC"] = "Nachdem jemand ohne Addon uns als Plündermeister angeflüstert hat, damit wir eine Verlosung für sein/ihr Item starten."
L["OPT_MSG_ROLL_ANSWER_YES"] = "Antwort: Du kannst es haben"
L["OPT_MSG_ROLL_ANSWER_YES_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_YES_MASTERLOOT"] = "Antwort: Du kannst es haben (als Plündermeister)"
L["OPT_MSG_ROLL_ANSWER_YES_MASTERLOOT_DESC"] = "1: Item Besitzer"
L["OPT_MSG_ROLL_DISENCHANT"] = "Den Entzauberer einer Verlosung verkünden"
L["OPT_MSG_ROLL_DISENCHANT_DESC"] = [=[1: Entzauberer
2: Item Link]=]
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT"] = "Den Entzauberer einer Verlosung verkünden (als Plündermeister)"
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_DESC"] = [=[1: Entzauberer
2: Item Link
3: Item Besitzer
4: ihn/sie]=]
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_OWN"] = "Verkünden, dass ein Item Besitzer sein/ihr Item entzaubern wird (als Plündermeister)"
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_OWN_DESC"] = [=[1: Item Besitzer
2: Item Link]=]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER"] = "Den Entzauberer einer Verlosung anflüstern"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_DESC"] = "1: Item Link"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT"] = "Den Entzauberer einer Verlosung anflüstern (als Plündermeister)"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_DESC"] = [=[1: Item Link
2: Item Besitzer
3: ihn/sie]=]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN"] = "Einem Item Besitzer flüstern sein/ihr Item zu entzaubern (als Plündermeister)"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN_DESC"] = "1: Item Link"
L["OPT_MSG_ROLL_START"] = "Eine neue Verlosung verkünden"
L["OPT_MSG_ROLL_START_CONCISE"] = "Eine neue Verlosung verkünden (knapp)"
L["OPT_MSG_ROLL_START_CONCISE_DESC"] = "1: Item Link"
L["OPT_MSG_ROLL_START_DESC"] = [=[1: Item Link
2: Roll Nummer]=]
L["OPT_MSG_ROLL_START_MASTERLOOT"] = "Eine neue Verlosung verkünden (als Plündermeister)"
L["OPT_MSG_ROLL_START_MASTERLOOT_DESC"] = [=[1: Item Link
2: Item Besitzer
3: Roll Nummer]=]
L["OPT_MSG_ROLL_WINNER"] = "Den Gewinner einer Verlosung verkünden"
L["OPT_MSG_ROLL_WINNER_CONCISE"] = "Den Gewinner einer Verlosung verkünden (knapp)"
L["OPT_MSG_ROLL_WINNER_CONCISE_DESC"] = "1: Gewinner"
L["OPT_MSG_ROLL_WINNER_DESC"] = [=[1: Gewinner
2: Item Link]=]
L["OPT_MSG_ROLL_WINNER_MASTERLOOT"] = "Den Gewinner einer Verlosung verkünden (als Plündermeister)"
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_DESC"] = [=[1: Gewinner
2: Item Link
3: Item Besitzer
4: ihn/sie]=]
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_OWN"] = "Verkünden, dass ein Item Besitzer sein/ihr Item behält (als Plündermeister)"
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_OWN_DESC"] = [=[1: Item Besitzer
2: Item Link]=]
L["OPT_MSG_ROLL_WINNER_WHISPER"] = "Den Gewinner einer Verlosung anflüstern"
L["OPT_MSG_ROLL_WINNER_WHISPER_CONCISE"] = "Den Gewinner einer Verlosung anflüstern (knapp)"
L["OPT_MSG_ROLL_WINNER_WHISPER_CONCISE_DESC"] = ""
L["OPT_MSG_ROLL_WINNER_WHISPER_DESC"] = "1: Item Link"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT"] = "Den Gewinner einer Verlosung anflüstern (als Plündermeister)"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_DESC"] = [=[1: Item Link
2: Item Besitzer
3: ihn/sie]=]
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN"] = "Dem Besitzer einer Verlosung flüstern sein/ihr item zu behalten (als Plündermeister)"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN_DESC"] = "1: Item Link"
L["OPT_SHOULD_CHAT"] = "An/abschalten"
L["OPT_SHOULD_CHAT_DESC"] = "Ändere wann da Addon in den Gruppen/Raid-Chat postet und andere Spieler anschreibt."
L["OPT_WHISPER"] = "Flüsternachrichten"
L["OPT_WHISPER_ANSWER"] = "Anfragen beantworten"
L["OPT_WHISPER_ANSWER_DESC"] = "Lass das Addon auf Anfragen von Gruppenmitgliedern antworten, die sich auf Items von dir beziehen."
L["OPT_WHISPER_ASK"] = "Frage nach Beute"
L["OPT_WHISPER_ASK_DESC"] = "Flüstere andere an, wenn sie Beute bekommen haben die du haben möchtest."
L["OPT_WHISPER_ASK_VARIANTS"] = "Aktiviere Frage-Varianten"
L["OPT_WHISPER_ASK_VARIANTS_DESC"] = "Verwende unterschiedliche Sätze (s.u.) um nach Beute zu fragen, um es weniger repetitiv zu machen."
L["OPT_WHISPER_DESC"] = "Hier kannst du ändern ob das Addon anderen Spielern Flüsternachrichten senden und auf sie antworten soll."
L["OPT_WHISPER_GROUP"] = "Flüstern nach Gruppe"
L["OPT_WHISPER_GROUP_DESC"] = "Flüstere andere an, abhängig von der Art von Gruppe in der du gerade bist."
L["OPT_WHISPER_GROUP_TYPE"] = "Frage nach Gruppentyp"
L["OPT_WHISPER_GROUP_TYPE_DESC"] = [=[Frage nach Beute nur, wenn du in einer dieser Gruppentypen bist.

|cffffff78Gildengruppe:|r Die Mitglieder einer Gilde stellen %d%% oder mehr der Gruppe.
|cffffff78Community Gruppe:|r Die Mitglieder einer deiner WoW-Communities stellen %d%% oder mehr der Gruppe.]=]
L["OPT_WHISPER_SUPPRESS"] = "Anfragen unterdrücken"
L["OPT_WHISPER_SUPPRESS_DESC"] = "Unterdrücke Anfragen von Gruppenmitgliedern während du deine Beute vergibst."
L["OPT_WHISPER_TARGET"] = "Frage nach Ziel"
L["OPT_WHISPER_TARGET_DESC"] = "Frage nach Beute, abhängig davon ob das Ziel in deiner Gilde, einer deiner WoW-Communities oder auf deiner Freundesliste ist."

-- Plugins-EPGP
L["EPGP"] = "EPGP"
L["EPGP_CREDIT_GP"] = "Vergebe %d GP an <%s> für %s."
L["EPGP_EP"] = "EP"
L["EPGP_ERROR_CREDIT_GP_FAILED"] = "Vergabe von %d GP an <%s> für %s ist fehlgeschlagen!"
L["EPGP_GP"] = "GP"
L["EPGP_OPT_AWARD_BEFORE"] = "Vergabe Priorität"
L["EPGP_OPT_AWARD_BEFORE_DESC"] = "Wähle vor welcher Standard Vergabe-Methode der EPGP PR Wert beim Beute verteilen verwendet werden soll."
L["EPGP_OPT_BID_WEIGHTS"] = "Gebot GP Gewichtung"
L["EPGP_OPT_BID_WEIGHTS_DESC"] = "Vergebe unterschiedliche Gewichtungen für Gebote. Die GP, die einem Item-Gewinner zugeschrieben werden werden mit diesem Wert multipliziert, und er kann auch 0 oder negativ sein."
L["EPGP_OPT_DESC"] = "Verwende EPGP für die Beute-Vergabe bei aktiviertem Plündermeister-Modus. Dies beinhaltet das Anzeigen von und Sortieren nach dem PR Wert der Mitspieler, ebenso wie die Vergabe von GP wenn Beute verteilt wird."
L["EPGP_OPT_ONLY_GUILD_RAID"] = "Nur in Gildenraids"
L["EPGP_OPT_ONLY_GUILD_RAID_DESC"] = "Aktiviere nur wenn du in einem Raid bist der zu mindestens %d%% aus Mitgliedern deiner Gilde besteht."
L["EPGP_OPT_WARNING_NO_ADDON"] = "|cffff0000WARNUNG:|r Das \"EPGP Next\" Addon muss installiert und aktiviert sein, damit dieses Modul funktioniert."
L["EPGP_OPT_WARNING_NO_OFFICER"] = "|cffff0000WARNUNG:|r Du hast nicht die Befugnis Offiziersnotizen von Gildenmitgliedern zu bearbeiten, d.h. dass EPGP keine GP für Beute zuschreiben kann während du Plündermeister bist."
L["EPGP_PR"] = "PR"

-- Roll
L["BID_CHAT"] = "Frage %s nach %s -> %s."
L["BID_MAX_WHISPERS"] = "Frage %s nicht nach %s, weil %d Spieler in deiner Gruppe schon gefragt haben -> %s."
L["BID_NO_CHAT"] = "Kann für % keine Verlosung ankündigen oder danach fragen."
L["BID_NO_CHAT_ADDONS"] = "Verlosung für %s wird nicht verkündet, weil alle Beute-Addons benutzen."
L["BID_NO_CHAT_ANNOUNCE"] = "Verlosung für %s wird nicht verkündet, weil es deaktiviert ist."
L["BID_NO_CHAT_ASK"] = "Frage %s nicht nach %s, weil es deaktiviert ist -> %s."
L["BID_NO_CHAT_CLUB"] = "Frage %s nicht nach %s, weil er/sie in einer deiner Communities ist -> %s."
L["BID_NO_CHAT_DND"] = "Frage %s nicht nach %s, weil er/sie DND aktiviert hat -> %s."
L["BID_NO_CHAT_FRIEND"] = "Frage %s nicht nach %s, weil du mit ihm/ihr befreundet bist -> %s."
L["BID_NO_CHAT_GRP"] = "Verlosung für %s wird nicht verkündet, weil es eine '%s' Gruppe ist."
L["BID_NO_CHAT_GRP_ASK"] = "Frage %s nicht nach %s, weil es eine '%s' Gruppe ist -> %s."
L["BID_NO_CHAT_GUILD"] = "Frage %s nicht nach %s, weil er/sie in deiner Gilde ist -> %s."
L["BID_NO_CHAT_OTHER"] = "Frage %s nicht nach %s, weil er/sie fremd ist -> %s."
L["BID_NO_CHAT_SELF"] = "Frage %s nicht nach %s, weil du es selber bist -> %s."
L["BID_NO_CHAT_TRACKING"] = "Frage %s nicht nach %s, weil er/sie ebenfalls ein Beute-Addon verwendet -> %s."
L["BID_PASS"] = "Passe auf %s von %s."
L["BID_START"] = "Biete auf %s von %s."
L["MASTERLOOTER_OTHER"] = "%s ist jetzt dein Plündermeister."
L["MASTERLOOTER_REJECT"] = "%s möchte dein Plündermeister werden, dies muss aber vorher in den \"Plündermeister\" Optionen erlaubt werden."
L["MASTERLOOTER_SELF"] = "Du bist jetzt der Plündermeister."
L["ROLL_AWARD_BIDS"] = "Gebote"
L["ROLL_AWARD_RANDOM"] = "Zufällig"
L["ROLL_AWARD_ROLLS"] = "Würfelergebnisse"
L["ROLL_AWARD_VOTES"] = "Stimmen"
L["ROLL_AWARDED"] = "Zugewiesen"
L["ROLL_AWARDING"] = "Zuweisen"
L["ROLL_CANCEL"] = "Breche Verlosung für %s von %s ab."
L["ROLL_END"] = "Beende Verlosung für %s von %s."
L["ROLL_IGNORING_BID"] = "Ignoriere Gebot von %s für %s, weil ihr zuvor gechattet habt -> Gebot: %s oder %s."
L["ROLL_LIST_EMPTY"] = "Aktive Verlosungen werden hier angezeigt"
L["ROLL_START"] = "Verolle Item %s."
L["ROLL_STATUS_0"] = "Wartend"
L["ROLL_STATUS_1"] = "Läuft"
L["ROLL_STATUS_-1"] = "Abgebrochen"
L["ROLL_STATUS_2"] = "Fertig"
L["ROLL_TRADED"] = "Gehandelt"
L["ROLL_WHISPER_SUPPRESSED"] = "Gebot von %s für %s -> %s / %s."
L["ROLL_WINNER_MASTERLOOT"] = "%s hat %s von %s gewonnen."
L["ROLL_WINNER_OTHER"] = "%s hat %s von dir gewonnen -> %s."
L["ROLL_WINNER_OWN"] = "Du hast %s von dir selbst gewonnen."
L["ROLL_WINNER_SELF"] = "Du hast %s von %s gewonnen -> %s."
L["TRADE_CANCEL"] = "Breche Handel mit %s ab."
L["TRADE_START"] = "Starte Handel mit %s."

-- Globals
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NO_ADDON"] = "Der Besitzer dieses Items benutzt nicht das PersoLootRoll Addon."
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NO_DISENCHANT"] = "Der Besitzer des Items hat \"Entzaubern\" Gebote nicht erlaubt."
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NOT_ENCHANTER"] = "Dein Charakter hat den \"Verzauberungskunst\" Beruf nicht."


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
