local Name, Addon = ...
local Locale = Addon.Locale
local lang = "esES"

-- Chat messages
local L = {lang = lang}
setmetatable(L, Locale.MT)
Locale[lang] = L

-- Messages
L["MSG_BID_1"] = "¿Te sirve %s?"
L["MSG_BID_2"] = "Si no necesitas %s, ¿puedes pasármelo?"
L["MSG_BID_3"] = "Me mejora %s, si no lo quieres."
L["MSG_BID_4"] = "Me gustaría tener %s, si no lo quieres para nada."
L["MSG_BID_5"] = "¿Vas a usar %s, o me lo podría quedar yo?"
L["MSG_HER"] = "ella"
L["MSG_HIM"] = "él"
L["MSG_ITEM"] = "objeto"
--[[Translation missing --]]
L["MSG_NEED"] = "need,yes"
--[[Translation missing --]]
L["MSG_PASS"] = "pass,no,nope"
--[[Translation missing --]]
L["MSG_ROLL"] = "roll,share,give away"
L["MSG_ROLL_ANSWER_AMBIGUOUS"] = "Ahora mismo estoy repartiendo varios objetos, por favor envíame un enlace del objeto que deseas."
L["MSG_ROLL_ANSWER_BID"] = "Ok, he apuntado tu puja para %s."
--[[Translation missing --]]
L["MSG_ROLL_ANSWER_NO"] = "Sorry, you can't bid for that item anymore."
L["MSG_ROLL_ANSWER_NO_OTHER"] = "Lo siento, ya se lo he dado a otra persona."
L["MSG_ROLL_ANSWER_NO_SELF"] = "Lo siento, necesito ese objeto."
--[[Translation missing --]]
L["MSG_ROLL_ANSWER_NOT_ELIGIBLE"] = "Sorry, you aren't eligible for that item."
L["MSG_ROLL_ANSWER_NOT_TRADABLE"] = "Lo siento, no puedo comerciar ese objeto."
--[[Translation missing --]]
L["MSG_ROLL_ANSWER_STARTED"] = "Ok, I'll start a roll for it."
L["MSG_ROLL_ANSWER_YES"] = "Para ti, comercia conmigo."
L["MSG_ROLL_ANSWER_YES_MASTERLOOT"] = "Puedes quedártelo, comercia a <%s>."
L["MSG_ROLL_DISENCHANT"] = "<%s> va a desencantar %s -> Comercia conmigo!"
L["MSG_ROLL_DISENCHANT_MASTERLOOT"] = "<%s> va a desencantar %s de <%s> -> Comercia con %s!"
--[[Translation missing --]]
L["MSG_ROLL_DISENCHANT_MASTERLOOT_OWN"] = "<%s> will disenchant his/her own %s!"
L["MSG_ROLL_DISENCHANT_WHISPER"] = "Has sido elegido para desencantar %s, por favor, comercia conmigo."
L["MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT"] = "Has sido escogido para desencantar %s de <%s>, por favor comercia %s."
--[[Translation missing --]]
L["MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN"] = "You were picked to disenchant your own %s!"
L["MSG_ROLL_START"] = "Ofrezco %s -> susúrrame o haz /roll %d!"
--[[Translation missing --]]
L["MSG_ROLL_START_CONCISE"] = "%s someone need?"
L["MSG_ROLL_START_MASTERLOOT"] = "Ofrezco %s de <%s> -> susúrrame o haz /roll %d!"
L["MSG_ROLL_WINNER"] = "<%s> ha ganado %s -> ¡Comercia conmigo!"
--[[Translation missing --]]
L["MSG_ROLL_WINNER_CONCISE"] = "%s trade me!"
L["MSG_ROLL_WINNER_MASTERLOOT"] = "<%s> ha ganado %s de <%s> -> ¡Comercia con %s!"
--[[Translation missing --]]
L["MSG_ROLL_WINNER_MASTERLOOT_OWN"] = "<%s> has won his/her own %s!"
L["MSG_ROLL_WINNER_WHISPER"] = "¡Has ganado %s! Por favor comercia conmigo."
--[[Translation missing --]]
L["MSG_ROLL_WINNER_WHISPER_CONCISE"] = "Please trade me."
L["MSG_ROLL_WINNER_WHISPER_MASTERLOOT"] = "¡Has ganado %s de %s! Por favor comercia con %s."
--[[Translation missing --]]
L["MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN"] = "You have won your own %s!"


-- Addon
local L = LibStub("AceLocale-3.0"):NewLocale(Name, lang, lang == Locale.FALLBACK)
if not L then return end

L["ACTION"] = "Acción"
L["ACTIONS"] = "Acciones"
L["ADVERTISE"] = "Anunciar en el chat"
L["ANSWER"] = "Respuesta"
L["ASK"] = "Solicitar"
L["AWARD"] = "Entregar"
L["AWARD_LOOT"] = "Entregar loot"
L["AWARD_RANDOMLY"] = "Entregar al azar"
L["BID"] = "Solicitar"
L["COMMUNITY_GROUP"] = "Grupo de Comunidad"
L["COMMUNITY_MEMBER"] = "Miembro de Comunidad"
--[[Translation missing --]]
L["CONFIRM"] = "Confirm"
L["DISABLED"] = "Desactivado"
L["DOWN"] = "abajo"
L["ENABLED"] = "Activado"
L["EQUIPPED"] = "Equipado"
L["GET_FROM"] = "Obtener de"
L["GIVE_AWAY"] = "Entregar"
L["GIVE_TO"] = "Entregar a"
L["GUILD_MASTER"] = "Maestro de Clan"
L["GUILD_OFFICER"] = "Oficial de Clan"
L["HIDE"] = "Ocultar"
L["HIDE_ALL"] = "Ocultar todo"
L["ITEM"] = "objeto"
L["ITEM_LEVEL"] = "Nivel de objeto"
L["KEEP"] = "Quedármelo"
L["LEFT"] = "izquierda"
L["MASTERLOOTER"] = "Maestro despojador"
L["MESSAGE"] = "Mensaje"
L["ML"] = "MD"
L["OPEN_ROLLS"] = "Abrir ventana de tiradas"
L["OWNER"] = "Dueño"
L["PLAYER"] = "Jugador"
L["PRIVATE"] = "Privado"
L["PUBLIC"] = "Público"
L["RAID_ASSISTANT"] = "Asistente de raid"
L["RAID_LEADER"] = "Líder de raid"
L["RESTART"] = "Reinicio"
L["RIGHT"] = "correcto"
--[[Translation missing --]]
L["RINGS"] = "Rings"
L["ROLL"] = "Tirar dados"
L["ROLLS"] = "Tiradas de dado"
L["SECONDS"] = "%ds"
L["SET_ANCHOR"] = "Selección de anclaje: Crecimiento %s y %s"
L["SHOW"] = "Mostrar"
--[[Translation missing --]]
L["SHOW_ALL"] = "Show all"
L["SHOW_HIDE"] = "Mostrar/Ocultar"
L["TRADE"] = "Comercia"
--[[Translation missing --]]
L["TRINKETS"] = "Trinkets"
L["UP"] = "Arriba"
L["VERSION_NOTICE"] = "Hay una versión nueva de este addon disponible. Por favor, actualízalo para mantenerte compatible con todo el mundo y no perderte nada de loot!"
L["VOTE"] = "Votar"
L["VOTE_WITHDRAW"] = "Retirarse"
L["VOTES"] = "Votos"
--[[Translation missing --]]
L["WAIT"] = "Wait"
L["WINNER"] = "Ganador"
L["WON"] = "Ganado"
L["YOUR_BID"] = "Tu puja"

-- Commands
L["HELP"] = [=[Realiza tiradas y pujas por objetos (/PersoLootRoll o /plr).
Uso:
/plr: Abre la ventana de opciones
/plr roll [item]* (<timeout> <owner>): Empezar una tirada por uno o más objeto(s)
/plr bid <owner> ([item]): Pujar por un objeto de otro jugador
/plr options: Abrir la ventana de opciones
/plr config: Cambiar la configuración a través de la línea de comandos
/plr help: Mostrar este mensaje de ayuda
Leyenda: [..] = enlace del objeto, * = una o más veces, (..) = opcional]=]
L["USAGE_BID"] = "Uso: /plr bid [ítem] (<dueño> <bid>)"
L["USAGE_ROLL"] = "Uso: /plr roll [ítem]* (<dueño> <plazo>)"

-- Errors
L["ERROR_CMD_UNKNOWN"] = "Comando '%s' desconocido "
--[[Translation missing --]]
L["ERROR_COLLECTION_FILTERS_DISABLED"] = "All collection filters are disabled. If you want to roll on missing collection items make sure to enable them in the item filter options."
L["ERROR_ITEM_NOT_TRADABLE"] = "No puedes comerciar con ese objeto."
L["ERROR_NOT_IN_GROUP"] = "No estás en un grupo o banda."
L["ERROR_NOT_MASTERLOOTER_OTHER_OWNER"] = "Tienes que ser maestro despojador para poder crear pujas para objetos de otros jugadores."
L["ERROR_NOT_MASTERLOOTER_TIMEOUT"] = "No puedes cambiar el tiempo de espera mientras haya un maestro despojador que no seas tú."
L["ERROR_OPT_MASTERLOOT_EXPORT_FAILED"] = "¡La exportación de la configuración de maestro despojador a <%s> falló!"
L["ERROR_PLAYER_NOT_FOUND"] = "No se encuentra al jugador %q."
L["ERROR_ROLL_BID_IMPOSSIBLE_OTHER"] = "%s ha enviado una puja por %s pero no tiene permiso para hacerlo ahora."
L["ERROR_ROLL_BID_IMPOSSIBLE_SELF"] = "No puedes solicitar ese objeto ahora."
L["ERROR_ROLL_BID_UNKNOWN_OTHER"] = "%s ha enviado una puja incorrecta por %s."
L["ERROR_ROLL_BID_UNKNOWN_SELF"] = "Esa no es una puja correcta."
L["ERROR_ROLL_STATUS_NOT_0"] = "La tirada ya ha empezado o terminado."
L["ERROR_ROLL_STATUS_NOT_1"] = "La tirada no está en marcha."
L["ERROR_ROLL_UNKNOWN"] = "Esa tirada no existe."
L["ERROR_ROLL_VOTE_IMPOSSIBLE_OTHER"] = "%s ha enviado un voto por %s pero no puede hacerlo ahora mismo."
L["ERROR_ROLL_VOTE_IMPOSSIBLE_SELF"] = "No puedes votar por ese objeto ahora mismo."

-- GUI
L["DIALOG_MASTERLOOT_ASK"] = "<%s> quiere convertirse en tu maestro despojador."
L["DIALOG_OPT_MASTERLOOT_LOAD"] = "Esto reemplazará tu configuración actual de maestro despojador con la configurada en la información de la hermandad/comunidad, ¿estás seguro de que deseas continuar?"
L["DIALOG_OPT_MASTERLOOT_SAVE"] = "Esto reemplazará la configuración de maestro despojador almacenada en la información de la hermandad/comunidad con tu configuración actual, ¿estás seguro de que deseas continuar?"
L["DIALOG_ROLL_CANCEL"] = "¿Quieres cancelar esta tirada?"
L["DIALOG_ROLL_RESTART"] = "¿Quieres reiniciar esta tirada?"
--[[Translation missing --]]
L["DIALOG_ROLL_WHISPER_ASK"] = "Do you want to automatically whisper other players to ask for loot? You can change this anytime in the \"Messages\" options."
L["FILTER"] = "Filtrar"
L["FILTER_ALL"] = "Para todos los jugadores."
L["FILTER_ALL_DESC"] = "Incluye tiradas de todos los jugadores, no sólo las tuyas o aquellas de objetos que te pueden interesar."
L["FILTER_AWARDED"] = "Entregado"
L["FILTER_AWARDED_DESC"] = "Incluir objetos que han sido ganados por otros,"
L["FILTER_DONE"] = "Hecho"
L["FILTER_DONE_DESC"] = "Incluir tiradas que han terminado."
L["FILTER_HIDDEN"] = "Oculto"
L["FILTER_HIDDEN_DESC"] = "Incluir tiradas canceladas, pendientes, realizadas y ocultas."
L["FILTER_TRADED"] = "Comerciado"
L["FILTER_TRADED_DESC"] = "Incluir tiradas cuyos objetos han sido comerciados."
L["MENU_MASTERLOOT_SEARCH"] = "Buscar un maestro despojador en el grupo"
--[[Translation missing --]]
L["MENU_MASTERLOOT_SETTINGS"] = "Masterloot settings"
L["MENU_MASTERLOOT_START"] = "Convertirte en maestro despojador"
L["TIP_ADDON_MISSING"] = "Falta addon:"
L["TIP_ADDON_VERSIONS"] = "Versiones del addon:"
L["TIP_CHAT_TO_TRADE"] = "Por favor, antes de comerciar pregunta al dueño"
L["TIP_COMP_ADDON_USERS"] = "Usuarios de addons compatibles:"
L["TIP_ENABLE_WHISPER_ASK"] = "Consejo: clic-derecho para habilitar la petición automática de loot"
L["TIP_MASTERLOOT"] = "Maestro despojador activo"
L["TIP_MASTERLOOT_INFO"] = [=[|cffffff78Maestro despojador:|r %s
|cffffff78Tiempo de reparto:|r %ds (+ %ds per item)
|cffffff78Consejo de loot:|r %s
|cffffff78Pujas:|r %s
|cffffff78Votos:|r %s]=]
L["TIP_MASTERLOOT_START"] = "Convertirse en maestro despojador o buscar uno"
L["TIP_MASTERLOOT_STOP"] = "Quitar el maestro despojador"
L["TIP_MASTERLOOTING"] = "Grupo con maestro despojador (%d): "
L["TIP_MINIMAP_ICON"] = [=[|cffffff78Clic-izquierdo:|r Fija la ventana de repartos
|cffffff78Clic-derecho:|r Muestra Opciones]=]
--[[Translation missing --]]
L["TIP_SUPPRESS_CHAT"] = "|cffffff78Tip:|r You can suppress a single chat message by shift-clicking the bid/pass button."
L["TIP_TEST"] = "Mostrar una tirada de dados de prueba"
L["TIP_VOTES"] = "Votos de:"

-- Options-Home
L["OPT_ACTIONS_WINDOW"] = "Mostrar ventana de acciones"
L["OPT_ACTIONS_WINDOW_DESC"] = "Muestra la ventana de acciones cuando hay acciones pendientes, por ej. cuando ganas un objeto y tienes que comerciar con alguien para conseguirlo."
L["OPT_ACTIONS_WINDOW_MOVE"] = "Mover"
L["OPT_ACTIONS_WINDOW_MOVE_DESC"] = "Mueve la ventana de acciones."
L["OPT_ACTIVE_GROUPS"] = "Activar por tipo de grupo"
L["OPT_ACTIVE_GROUPS_DESC"] = [=[Activar sólo cuando estás en uno de estos tipos de grupo.

|cffffff78Grupo de heramandad:|r Los miembros de una hermandad son el %d%% o más del grupo.
|cffffff78Grupo de comunidad:|r Los miembros de una de tus comunidades de WoW son el %d%% o más del grupo]=]
L["OPT_ALLOW_DISENCHANT"] = "Permitir pujas para \"Desencantar\""
L["OPT_ALLOW_DISENCHANT_DESC"] = "Permite que otros pujen por objetos tuyos para la opción \"Desencantar\"."
L["OPT_AUTHOR"] = "|cffffd100Autor:|r Shrugal (EU-Mal'Ganis)"
L["OPT_AWARD_SELF"] = "Elegir manualmente el ganador de tus objetos"
L["OPT_AWARD_SELF_DESC"] = "Escoger manualmente quién debe recibir tus objetos, en lugar de dejar que el addon elija a alguien al azar. Esto está siempre activado cuando eres el maestro despojador."
L["OPT_BID_PUBLIC"] = "Publicar las pujas"
L["OPT_BID_PUBLIC_DESC"] = "Las pujas de tus tiradas son públicas, por lo que todo el que tenga el addon puede verlas."
L["OPT_CHILL_MODE"] = "Modo relajado"
L["OPT_CHILL_MODE_DESC"] = [=[El objetivo del modo relajado es reducir la presión para compartir el loot, incluso si eso significa que las cosas llevarán algo más de tiempo. Si lo habilitas, cambiará lo siguiente:

|cffffff781.|r Las pujas por objetos tuyos no comenzarán hasta que tú no decidas compartirlos, de modo que tienes todo el tiempo que quieras para decidir si los compartes, y otros usuarios del addon no verán el ítem hasta que tú lo hagas.
|cffffff782.|r Las pujas por tus objetos tienen el doble del tiempo de decisión, o no tienen limitación de tiempo si habilitas la opción de elegir por ti mismo los ganadores de tus objetos (ver la siguiente opción).
|cffffff783.|r Las pujas por objetos de usuarios sin el addon permanecen abiertas hasta que decidas si los quieres o no.

|cffff0000IMPORTANTE:|r Las pujas por otros usuarios del addon que no tengan el modo relajado activado seguirán teniendo el tiempo de ejecución normal. Asegúrate de que todo el mundo en tu grupo tiene el modo relajado activado si quieres una sesión relajada.]=]
--[[Translation missing --]]
L["OPT_COLLECTIONS"] = "Always show missing collectible items from these collections, regardless of the other rules."
L["OPT_DISENCHANT"] = "Desencantar"
L["OPT_DISENCHANT_DESC"] = "Pujar por \"Desencatar\" para objetos que no puedes usar, si tienes la profesión y el dueño del ítem lo permite."
L["OPT_DONT_SHARE"] = "No compartir objetos"
L["OPT_DONT_SHARE_DESC"] = "No tirar por objetos de otros jugadores y no compartir mis objetos. El addon rechazará las peticiones de mis objetos (si está activado), y podrás seguir  siendo maestro despojador y miembro del 'loot council'."
L["OPT_ENABLE"] = "Activar"
L["OPT_ENABLE_DESC"] = "Activa o desactiva el addon"
L["OPT_ENABLE_MODULE_DESC"] = "Habilitar o deshabilitar este módulo"
L["OPT_ILVL_THRESHOLD"] = "Límite de nivel de objeto"
L["OPT_ILVL_THRESHOLD_DESC"] = [=[Los objetos cuyo nivel de objeto esté por debajo del tuyo en más de esta cantidad serán ignorados.

|cffffff78Negative:|r An item's level can be at most this much lower than yours.
|cffffff78Positive:|r An item's level must be at least this much higher than yours.]=]
--[[Translation missing --]]
L["OPT_ILVL_THRESHOLD_DOUBLE"] = "Double threshold for ..."
--[[Translation missing --]]
L["OPT_ILVL_THRESHOLD_DOUBLE_DESC"] = "Some items should have double the normal item-level threshold value, because procs etc. can make their value vary by a large amount."
L["OPT_ILVL_THRESHOLD_RINGS"] = "Duplicar el límite en los anillos"
L["OPT_ILVL_THRESHOLD_RINGS_DESC"] = "Los anillos tienen que tener el doble del límite porque su valor puede variar mucho al no tener la estadística principal."
L["OPT_ILVL_THRESHOLD_TRINKETS"] = "Duplicar el límite en los abalorios"
L["OPT_ILVL_THRESHOLD_TRINKETS_DESC"] = "Los abalorios tienen que tener el doble del límite de nivel de objeto porque sus efectos pueden en gran medida modificar su valor."
L["OPT_INFO"] = "Información"
L["OPT_INFO_DESC"] = "Algo de información sobre este addon."
L["OPT_ITEM_FILTER"] = "Filtro de Objetos"
L["OPT_ITEM_FILTER_DESC"] = "Cambiar por qué objetos se te solicita tirar dados."
--[[Translation missing --]]
L["OPT_ITEM_FILTER_ENABLE"] = "Enable additional rules"
--[[Translation missing --]]
L["OPT_ITEM_FILTER_ENABLE_DESC"] = "Items you can't use or send to an alt will always be filtered out. Below you can set additional conditions that items must fulfill in order to be shown to you."
--[[Translation missing --]]
L["OPT_LVL_THRESHOLD"] = "Character-level threshold"
--[[Translation missing --]]
L["OPT_LVL_THRESHOLD_DESC"] = "Ignore items that require your character's level to be more than this much higher than it currently is. Set to -1 to disable this filter."
L["OPT_MINIMAP_ICON"] = "Mostrar el icono del minimapa"
L["OPT_MINIMAP_ICON_DESC"] = "Muestra u oculta el icono del minimapa."
--[[Translation missing --]]
L["OPT_MISSING_PETS"] = "Missing pets"
--[[Translation missing --]]
L["OPT_MISSING_TRANSMOG"] = "Missing transmog appearances"
--[[Translation missing --]]
L["OPT_MISSING_TRANSMOG_ITEM"] = "Check transmog item"
--[[Translation missing --]]
L["OPT_MISSING_TRANSMOG_ITEM_DESC"] = "Check if you've collected a specific item, and not just its appearance"
L["OPT_ONLY_MASTERLOOT"] = "Sólo maestro despojador"
L["OPT_ONLY_MASTERLOOT_DESC"] = "El addon sólo se activa cuando se use maestro despojador (p.e. con tu hermandad)"
L["OPT_PAWN"] = "Comprobar el \"Pawn\""
L["OPT_PAWN_DESC"] = "Optar solamente por objetos que sean una mejora según el addon \"Pawn\"."
L["OPT_ROLL_FRAMES"] = "Mostrar cuadros de loot"
L["OPT_ROLL_FRAMES_DESC"] = "Muestra cuadros de loot cuando alguien recibe algo en lo que tú puedas estar interesado, de manera que puedas optar a ello."
L["OPT_ROLLS_WINDOW"] = "Mostrar ventana de repartos"
L["OPT_ROLLS_WINDOW_DESC"] = "Siempre muestra la ventana de repartos (con todas las tiradas de dados en ella) cuando alguien recibe algo en lo que tú puedas estar interesado. Esta opción siempre está activa si eres maestro despojador."
L["OPT_SPECS"] = "Especializaciones"
L["OPT_SPECS_DESC"] = "Sólo sugiere loot a estas especializaciones de clase."
L["OPT_TRANSLATION"] = "|cffffd100Traducción:|r Jolugon (EU-Minahonda)"
L["OPT_TRANSMOG"] = "Comprobar apariencias para transfiguración"
L["OPT_TRANSMOG_DESC"] = "Optar a los ítems para los que aún no tienes la apariencia correspondiente."
L["OPT_UI"] = "Interfaz de usuario"
L["OPT_UI_DESC"] = "Personaliza la apariencia y comportamiento de %s a tu gusto."
L["OPT_VERSION"] = "|cffffd100Versión:|r %s"

-- Options-Masterloot
L["OPT_MASTERLOOT"] = "Maestro despojador"
L["OPT_MASTERLOOT_APPROVAL"] = "Aprobado"
L["OPT_MASTERLOOT_APPROVAL_ACCEPT"] = "Aceptar automáticamente el maestro despojador"
L["OPT_MASTERLOOT_APPROVAL_ACCEPT_DESC"] = "Aceptar automáticamente peticiones de maestro despojador de estos jugadores."
L["OPT_MASTERLOOT_APPROVAL_ALLOW"] = "Permitir convertirse en maestro despojador"
L["OPT_MASTERLOOT_APPROVAL_ALLOW_ALL"] = "Permitir a cuaquiera"
L["OPT_MASTERLOOT_APPROVAL_ALLOW_ALL_DESC"] = "|cffff0000WARNING:|r ¡Esto permitirá a cualquiera convertirse en tu maestro despojador y puede aprovecharse para llevarse tus objetos! Activarlo sólo si sabes lo que estás haciendo."
L["OPT_MASTERLOOT_APPROVAL_ALLOW_DESC"] = [=[Elige quién puede solicitar convertirse en tu maestro despojador. Aun así recibirás un mensaje para confirmarlo, por lo que puedes denegar la solicitud de maestro despojador cuando ocurra.

|cffffff78Grupo de Hermandad:|r Alguien de la hermandad cuyos miembros son %d%% o más del grupo.]=]
L["OPT_MASTERLOOT_APPROVAL_DESC"] = "Aquí puedes definir quien se convertirá en tu maestro despojador."
L["OPT_MASTERLOOT_APPROVAL_WHITELIST"] = "Lista blanca del maestro despojador"
L["OPT_MASTERLOOT_APPROVAL_WHITELIST_DESC"] = "También puede nombrar a jugadores específicos que podrán volverse tu maestro despojador. Separa sus nombres con espacios o comas."
--[[Translation missing --]]
L["OPT_MASTERLOOT_AWARD"] = "Awarding"
--[[Translation missing --]]
L["OPT_MASTERLOOT_BIDS_AND_VOTES"] = "Bids and votes"
L["OPT_MASTERLOOT_CLUB"] = "Hermandad/Comunidad"
L["OPT_MASTERLOOT_CLUB_DESC"] = "Selecciona la Hermandad/Comunidad de la que importar/exportar la configuración."
L["OPT_MASTERLOOT_COUNCIL"] = "Consejo"
L["OPT_MASTERLOOT_COUNCIL_CLUB_RANK"] = "Rango del Consejo de la hermandad/comunidad"
L["OPT_MASTERLOOT_COUNCIL_CLUB_RANK_DESC"] = "Añadir los miembros de este rango de la hermandad/comunidad al consejo, además de las opciones anteriores"
L["OPT_MASTERLOOT_COUNCIL_DESC"] = "Los jugadores que estén en tu consejo de loot pueden votar quién debe recibir el loot."
L["OPT_MASTERLOOT_COUNCIL_ROLES"] = "Roles del consejo"
L["OPT_MASTERLOOT_COUNCIL_ROLES_DESC"] = "Qué jugadores deben convertirse automáticamente en parte de tu consejo de loot."
L["OPT_MASTERLOOT_COUNCIL_WHITELIST"] = "Lista blanca del consejo de loot"
L["OPT_MASTERLOOT_COUNCIL_WHITELIST_DESC"] = "También puedes nombrar a jugadores específicos para que estén en tu consejo de loot. Si hay más de uno, sepáralos con espacios o comas."
L["OPT_MASTERLOOT_DESC"] = "Cuando tú (u otra persona) se convierte en maestro despojador, todo el loot se distribuirá a esa persona. Recibirás una notificación sobre qué piezas te llevas o quién se lleva las que te toquen a ti, de forma que puedas comerciarlas con la persona adecuada."
L["OPT_MASTERLOOT_EXPORT_DONE"] = "La configuración de maestro despojador se exportó con éxito a <%s>."
L["OPT_MASTERLOOT_EXPORT_GUILD_ONLY"] = "Por favor, reemplaza la información actual de la comunidad con este texto, porque el reemplazo automático sólo es posible para hermandades."
L["OPT_MASTERLOOT_EXPORT_NO_PRIV"] = "Por favor, pide a un líder que reemplace la información de la hermandad con este texto, porque tú no tienes permisos para poder hacerlo."
L["OPT_MASTERLOOT_EXPORT_WINDOW"] = "Exportar la configuración de maestro despojador"
L["OPT_MASTERLOOT_LOAD"] = "Cargar"
L["OPT_MASTERLOOT_LOAD_DESC"] = "Cargar la configuración de maestro despojador desde la descripción de tu hermandad/comunidad."
L["OPT_MASTERLOOT_RULES"] = "Reglas"
L["OPT_MASTERLOOT_RULES_ALLOW_DISENCHANT_DESC"] = "Permitir que los miembros del grupo pujen por \"Desencantar\" sobre objetos."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_ALLOW_KEEP"] = "Allow keeping loot"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_ALLOW_KEEP_DESC"] = "Allow item owners to keep their loot, and only give it away if they choose not to keep it."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD"] = "Dar loot automáticamente"
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_DESC"] = "Dejar que el addon decida quién tiene que recibir el loot, basándose en factores como los votos del consejo de loot, pujas e ilvl equipado."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT"] = "Tiempo de espera (base) para el reparto automático del loot"
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_DESC"] = "Tiempo de espera base a esperar antes activar el reparto automático del loot, de manera que tengas tiempo de recolectar votos o incluso decidir tú mismo quién lo recibe."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_PER_ITEM"] = "Tiempo de espera para el reparto automático (por ítem)"
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_PER_ITEM_DESC"] = "Será añadido al tiempo base de espera para reparto automático para cada ítem que caiga."
L["OPT_MASTERLOOT_RULES_BID_PUBLIC"] = "Pujas públicas"
L["OPT_MASTERLOOT_RULES_BID_PUBLIC_DESC"] = "Puedes hacer pujas públicas, de manera que todo el mundo pueda ver quién puja por qué."
L["OPT_MASTERLOOT_RULES_DESC"] = "Estas reglas aplican a todo el mundo cuando tú eres maestro despojador"
L["OPT_MASTERLOOT_RULES_DISENCHANTER"] = "Desencantador"
L["OPT_MASTERLOOT_RULES_DISENCHANTER_DESC"] = "Dar el loot que nadie quiera a estos jugadores para desencantar. Separate multiple names with spaces or commas."
L["OPT_MASTERLOOT_RULES_GREED_ANSWERS"] = "Respuestas tipo 'Codicia' personalizadas"
L["OPT_MASTERLOOT_RULES_GREED_ANSWERS_DESC"] = [=[Especifica un máximo de 9 respuestas personalizadas cuando se opte por 'Codicia', con prioridad decreciente. También puedes insertar '%s' a la misma para bajar su prioridad por debajo de las respuestas previas. Para introducir entradas múltiples, sepáralas por comas.

Se puede acceder a ellas haciendo clic con el botón derecho en el botón de 'Codicia' cuando se reparte el loot.]=]
L["OPT_MASTERLOOT_RULES_NEED_ANSWERS"] = "Respuestas tipo 'Necesidad' personalizadas"
L["OPT_MASTERLOOT_RULES_NEED_ANSWERS_DESC"] = [=[Especifica un máximo de 9 respuestas personalizadas cuando se opte por 'Necesidad', con prioridad decreciente. También puedes insertar '%s' a la misma para bajar su prioridad por debajo de las respuestas previas. Para introducir entradas múltiples, sepáralas por comas.

Se puede acceder a ellas haciendo clic con el botón derecho en el botón de 'Necesidad' cuando se reparte el loot.]=]
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_ALL"] = "Start rolls for everyone"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_ALL_DESC"] = "Start rolls for all suitable items that group members without the addon loot."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_LIMIT"] = "Concurrent rolls limit"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_LIMIT_DESC"] = [=[Maximum number of rolls to run simultaneously. Subsequent rolls will automatically start after the previous ones have ended, even if you chose to start rolls manually.

Disable by setting it to 0.]=]
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_MANUALLY"] = "Start rolls manually"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_MANUALLY_DESC"] = "Don't start new rolls automatically, but manually through the main rolls window."
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_WHISPER"] = "Start rolls by whisper"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_WHISPER_DESC"] = "Allow group members without the addon to whisper you an item-link and the word \"%s\" to make you start a roll for their items."
L["OPT_MASTERLOOT_RULES_TIMEOUT_BASE"] = "Tiempo (base) para optar a algo"
L["OPT_MASTERLOOT_RULES_TIMEOUT_BASE_DESC"] = "Tiempo base durante el que se puede optar a ítems, independientemente de cuántos hayan caído."
L["OPT_MASTERLOOT_RULES_TIMEOUT_PER_ITEM"] = "Tiempo para optar (por ítem)"
L["OPT_MASTERLOOT_RULES_TIMEOUT_PER_ITEM_DESC"] = "Será añadido al tiempo de espera base por cada ítem que caiga."
L["OPT_MASTERLOOT_RULES_VOTE_PUBLIC"] = "Votación pública"
L["OPT_MASTERLOOT_RULES_VOTE_PUBLIC_DESC"] = "Puedes hacer que las votaciones del consejo de loot sean públicas, de manera que todo el mundo pueda ver cuántos votos recibió cada uno."
L["OPT_MASTERLOOT_SAVE"] = "Guardar"
L["OPT_MASTERLOOT_SAVE_DESC"] = "Guarda la configuración actual de maestro despojador en la descripción de tu hermandad/comunidad."

-- Options-Messages
L["OPT_CUSTOM_MESSAGES"] = "Mensajes personalizados"
L["OPT_CUSTOM_MESSAGES_DEFAULT"] = "Idioma por defecto (%s)"
L["OPT_CUSTOM_MESSAGES_DEFAULT_DESC"] = "Estos mensajes se utilizarán cuando el receptor hable %s u otro idioma distinto del de tu reino (%s)"
L["OPT_CUSTOM_MESSAGES_DESC"] = "Puedes re ordenar los textos de sustitución (|cffffff78%s|r, |cffffff78%d|r) añadiendo su posición y un símbolo de dolar $ en el medio, por ej. |cffffff78%2$s|r en lugar de |cffffff78%s|r para el segundo texto de sustitución. Mira en la ventana emergente para tener más detalles."
L["OPT_CUSTOM_MESSAGES_LOCALIZED"] = "Idioma del reino (%s)"
L["OPT_CUSTOM_MESSAGES_LOCALIZED_DESC"] = "Estos mensajes se usarán cuando el receptor hable el idioma de tu reino (%s)."
L["OPT_ECHO"] = "Información de chat"
L["OPT_ECHO_DEBUG"] = "Depurar"
L["OPT_ECHO_DESC"] = [=[¿Cuánta información quieres ver del addon en el chat?

|cffffff78Ninguna:|r Sin información en el chat.
|cffffff78Error:|r Sólo mensajes de error.
|cffffff78Info:|r Errores e información útil que probablemente quieras conocer.
|cffffff78Verbose:|r Información sobre casi todo lo que hace el addon.
|cffffff78Depurar:|r Como verbose, pero con información de depuración adicional.]=]
L["OPT_ECHO_ERROR"] = "Error"
L["OPT_ECHO_INFO"] = "Información"
L["OPT_ECHO_NONE"] = "Nada"
L["OPT_ECHO_VERBOSE"] = "Detallar"
L["OPT_GROUPCHAT"] = "Chat de grupo"
L["OPT_GROUPCHAT_ANNOUNCE"] = "Anunciar tiradas y ganadores"
L["OPT_GROUPCHAT_ANNOUNCE_DESC"] = "Anunciar tus tiradas y los ganadores de tus tiradas en el chat de grupo."
--[[Translation missing --]]
L["OPT_GROUPCHAT_CONCISE"] = "Concise announcements if possible"
--[[Translation missing --]]
L["OPT_GROUPCHAT_CONCISE_DESC"] = [=[Use more concise announcements when bosses only drop one item at a time (e.g. in 5-man dungeons).

The addon will post item links in chat, and group members can just answer something like "%s", "%s" or "+" to roll on them.]=]
L["OPT_GROUPCHAT_DESC"] = "Selecciona si el addon mostrará o no información por el chat de grupo."
L["OPT_GROUPCHAT_GROUP_TYPE"] = "Anunciar por tipo de grupo"
L["OPT_GROUPCHAT_GROUP_TYPE_DESC"] = [=[Escribe en el chat de grupo sólo si estás en uno de estos tipos de grupo.

|cffffff78Grupo de Hermandad:|r Los miembros de una hermandad son %d%% o más del grupo.
|cffffff78Grupo de Comunidad:|r Los miembros de una de tus Comunidades del WoW son %d%%  o más del grupo.]=]
L["OPT_GROUPCHAT_ROLL"] = "Tirar por los objetos en el chat"
L["OPT_GROUPCHAT_ROLL_DESC"] = "Tirar dados para objetos que quieres (/roll) si otros jugadores ponen enlaces de esos objetos en el chat de grupo."
L["OPT_MESSAGES"] = "Mensajes"
L["OPT_MSG_BID"] = "Pedir loot: Variante %d"
L["OPT_MSG_BID_DESC"] = "1: Item link"
L["OPT_MSG_ROLL_ANSWER_AMBIGUOUS"] = "Respuesta: Mándame el enlace del objeto"
L["OPT_MSG_ROLL_ANSWER_AMBIGUOUS_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_BID"] = "Respuesta: Puja registrada"
L["OPT_MSG_ROLL_ANSWER_BID_DESC"] = "1: Item link"
L["OPT_MSG_ROLL_ANSWER_NO_OTHER"] = "Respuesta: Se lo di a otra persona"
L["OPT_MSG_ROLL_ANSWER_NO_OTHER_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_NO_SELF"] = "Respuesta: Lo necesito para mí"
L["OPT_MSG_ROLL_ANSWER_NO_SELF_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_NOT_TRADABLE"] = "Respuesta: No se puede comerciar"
L["OPT_MSG_ROLL_ANSWER_NOT_TRADABLE_DESC"] = ""
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_STARTED"] = "Answer: I started a roll for you"
--[[Translation missing --]]
L["OPT_MSG_ROLL_ANSWER_STARTED_DESC"] = "After someone without the addon whispered us to start a roll for them while being masterlooter."
L["OPT_MSG_ROLL_ANSWER_YES"] = "Respuesta: Para ti"
L["OPT_MSG_ROLL_ANSWER_YES_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_YES_MASTERLOOT"] = "Respuesta: Para ti (como maestro despojador)"
L["OPT_MSG_ROLL_ANSWER_YES_MASTERLOOT_DESC"] = "1: El dueño del objeto"
L["OPT_MSG_ROLL_DISENCHANT"] = "Anunciando un desencatador"
L["OPT_MSG_ROLL_DISENCHANT_DESC"] = [=[1: Desencantador
2: Enlace del objeto]=]
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT"] = "Anunciando un desencantador (como maestro despojador)"
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_DESC"] = [=[1: Desencantador
2: Enlace del objeto
3: Dueño del objeto
4: Él/ella]=]
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_OWN"] = "Announcing an item owner disenchants his/her item (as masterlooter)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_OWN_DESC"] = [=[1: Item owner
2: Item link]=]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER"] = "Susurrando el desencantador"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_DESC"] = "1: Enlace del objeto"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT"] = "Susurrando el desencantador (como maestro despojador)"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_DESC"] = [=[1: Enlace del objeto
2: Dueño del objeto
3: Él/ellla]=]
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN"] = "Whispering an item owner to disenchant his/her item (as masterlooter)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN_DESC"] = "1: Item link"
L["OPT_MSG_ROLL_START"] = "Anunciando un nuevo reparto"
--[[Translation missing --]]
L["OPT_MSG_ROLL_START_CONCISE"] = "Announcing a new roll (concise)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_START_CONCISE_DESC"] = "1: Item link"
L["OPT_MSG_ROLL_START_DESC"] = [=[1: Enlace del ítem
2: Número de la tirada de dados]=]
L["OPT_MSG_ROLL_START_MASTERLOOT"] = "Anunciando un nuevo reparto (como maestro despojador)"
L["OPT_MSG_ROLL_START_MASTERLOOT_DESC"] = [=[1: Enlace del objeto
2: Dueño del objeto
3: Número de la tirada de dados]=]
L["OPT_MSG_ROLL_WINNER"] = "Anunciando el ganador de un reparto"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_CONCISE"] = "Announcing a roll winner (concise)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_CONCISE_DESC"] = "1: Winner"
L["OPT_MSG_ROLL_WINNER_DESC"] = [=[1: Ganador
2: Enlace del objeto]=]
L["OPT_MSG_ROLL_WINNER_MASTERLOOT"] = "Anunciando el ganador de un reparto (como maestro despojador)"
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_DESC"] = [=[1: Ganador
2: Enlace del objeto
3: Dueño del objeto
4: Él/ella]=]
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_OWN"] = "Announcing an item owner keeps his/her item (as masterlooter)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_OWN_DESC"] = [=[1: Item owner
2: Item link]=]
L["OPT_MSG_ROLL_WINNER_WHISPER"] = "Susurrando el ganador del reparto"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_WHISPER_CONCISE"] = "Whispering the roll winner (concise)"
L["OPT_MSG_ROLL_WINNER_WHISPER_CONCISE_DESC"] = ""
L["OPT_MSG_ROLL_WINNER_WHISPER_DESC"] = "1: Enlace del objeto"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT"] = "Susurrando el ganador del reparto (como maestro despojador)"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_DESC"] = [=[1: Enlace del objeto
2: Dueño del objeto
3: Él/ella]=]
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN"] = "Whispering an item owner to keep his/her item (as masterlooter)"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN_DESC"] = "1: Item link"
L["OPT_SHOULD_CHAT"] = "Habilitar/Deshabilitar"
L["OPT_SHOULD_CHAT_DESC"] = "Define cuándo el addon escribirá en el chat de grupo/raid y susurrará a otros jugadores."
L["OPT_WHISPER"] = "Chat de susurros"
L["OPT_WHISPER_ANSWER"] = "Peticiones de respuesta"
L["OPT_WHISPER_ANSWER_DESC"] = "Dejar que el addon conteste a susurros provenientes de miembros del grupo acerca de objetos que has looteado."
L["OPT_WHISPER_ASK"] = "Preguntar por loot"
L["OPT_WHISPER_ASK_DESC"] = "Susurrar a otros si tienen loot que tú quieres."
L["OPT_WHISPER_ASK_VARIANTS"] = "Habilitar pedir con diferentes frases"
L["OPT_WHISPER_ASK_VARIANTS_DESC"] = "Utilizar diferentes frases (ver más abajo) cuando preguntes por loot, para hacerlo menos repetitivo."
L["OPT_WHISPER_DESC"] = "Selecciona si el addon va a susurrar a otros jugadores y/o responder mensajes entrantes."
L["OPT_WHISPER_GROUP"] = "Susurrar por tipo de grupo"
L["OPT_WHISPER_GROUP_DESC"] = "Susurra a otros si tienen loot que tú quieres, dependiendo del tipo de grupo en el que te encuentres."
L["OPT_WHISPER_GROUP_TYPE"] = "Preguntar según tipo de grupo"
L["OPT_WHISPER_GROUP_TYPE_DESC"] = [=[Preguntar por loot sólo si estás en uno de estos tipos de grupo..

|cffffff78Grupo de hermandad:|r Los miembros de una hermandad son el %d%% o más del grupo.
|cffffff78Grupo de comunidad:|r Los miembros de una de tus comunidades de WoW son el %d%% o más del grupo.]=]
L["OPT_WHISPER_SUPPRESS"] = "Suprimir peticiones"
L["OPT_WHISPER_SUPPRESS_DESC"] = "Eliminar susurros entrantes de jugadores elegibles cuando repartas tu loot."
L["OPT_WHISPER_TARGET"] = "Pedir según objetivo"
L["OPT_WHISPER_TARGET_DESC"] = "Pedir loot dependiendo de si el objetivo está en tu hermandad, en una de tus comunidades de WoW o en tu lista de amigos."

-- Plugins-EPGP
L["EPGP"] = "EPGP"
L["EPGP_CREDIT_GP"] = "Acreditando %d GPs a <%s> por %s"
L["EPGP_EP"] = "EP"
L["EPGP_ERROR_CREDIT_GP_FAILED"] = "Fallo al acreditar %d GPs a <%s> por %s!"
L["EPGP_GP"] = "GP"
L["EPGP_OPT_AWARD_BEFORE"] = "Conceder precedencia"
L["EPGP_OPT_AWARD_BEFORE_DESC"] = "Escoger previamente qué método de concesión tiene que considerar el valor de PR del EPGP a la hora de determinar un ganador."
L["EPGP_OPT_BID_WEIGHTS"] = "Pesos de las pujas mediante GPs"
L["EPGP_OPT_BID_WEIGHTS_DESC"] = "Se asignan diferentes pesos para el reparto por pujas. Los GPs que obtiene el ganador de un ítem se multiplican por este valor, que también puede ser 0 o negativo."
L["EPGP_OPT_DESC"] = "Usar EPGP para el reparto de loot cuando el maestro despojador esté activo. Esto incluye mostrar y ordenar por valor de PR del jugador, así como acreditar GPs cuando el loot es concedido."
L["EPGP_OPT_ONLY_GUILD_RAID"] = "Sólo en raids de hermandad"
L["EPGP_OPT_ONLY_GUILD_RAID_DESC"] = "Activar sólo si se trata de una raid en la que al menos %d%% del grupo pertenece a tu hermandad."
--[[Translation missing --]]
L["EPGP_OPT_WARNING_NO_ADDON"] = "|cffff0000WARNING:|r You need the \"EPGP Next\" addon installed and activated for this module to work."
L["EPGP_OPT_WARNING_NO_OFFICER"] = "|cffff0000CUIDADO:|r No tienes permisos para editar las notas de oficial en tu hermandad, por lo que EPGP no podrá asignar GPs por loot cuando seas el maestro despojador."
L["EPGP_PR"] = "PR"

-- Roll
L["BID_CHAT"] = "Solicitando a %s el objeto %s -> %s."
L["BID_MAX_WHISPERS"] = "No voy a solicitar a %s el objeto %s, porque %d de los jugadores en tu grupo ya lo han solicitado -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT"] = "Can't ask or announce roll for %s."
--[[Translation missing --]]
L["BID_NO_CHAT_ADDONS"] = "Won't announce roll for %s because everyone uses loot addons."
--[[Translation missing --]]
L["BID_NO_CHAT_ANNOUNCE"] = "Won't announce roll for %s because it's disabled."
--[[Translation missing --]]
L["BID_NO_CHAT_ASK"] = "Won't ask %s for %s because it's disabled -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT_CLUB"] = "Won't ask %s for %s because he/she is in one of your communitys -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT_DND"] = "Won't ask %s for %s because he/she has DND enabled -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT_FRIEND"] = "Won't ask %s for %s because he/she is your friend -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT_GRP"] = "Won't announce roll for %s because it's a '%s' group."
--[[Translation missing --]]
L["BID_NO_CHAT_GRP_ASK"] = "Won't ask %s for %s because it's a '%s' group. -> %s"
--[[Translation missing --]]
L["BID_NO_CHAT_GUILD"] = "Won't ask %s for %s because he/she is in your guild -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT_OTHER"] = "Won't ask %s for %s because he/she is a random -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT_SELF"] = "Won't ask %s for %s because it's yourself -> %s."
--[[Translation missing --]]
L["BID_NO_CHAT_TRACKING"] = "Won't ask %s for %s because he/she also uses a loot addon -> %s."
L["BID_PASS"] = "Pasando de %s de %s."
L["BID_START"] = "Pujando con %q por %s de %s."
L["MASTERLOOTER_OTHER"] = "Ahora %s es tu maestro despojador."
--[[Translation missing --]]
L["MASTERLOOTER_REJECT"] = "%s wants to become your masterlooter, but needs to be allowed in the \"Masterloot\" options."
L["MASTERLOOTER_SELF"] = "Ahora eres el maestro despojador."
L["ROLL_AWARD_BIDS"] = "Pujas"
L["ROLL_AWARD_RANDOM"] = "Aleatorio"
L["ROLL_AWARD_ROLLS"] = "Resultados de las tiradas de dados"
L["ROLL_AWARD_VOTES"] = "Votos"
L["ROLL_AWARDED"] = "Adjudicado"
L["ROLL_AWARDING"] = "Adjudicando"
L["ROLL_CANCEL"] = "Cancelando reparto del objeto %s de %s."
L["ROLL_END"] = "Finalizando reparto del objeto %s de %s."
L["ROLL_IGNORING_BID"] = "Ignorando la puja de %s para %s, porje has chateado antes -> Puja: %s o %s."
L["ROLL_LIST_EMPTY"] = "Las pujas activas se mostrarán aquí"
L["ROLL_START"] = "Comenzando puja para %s de %s."
L["ROLL_STATUS_0"] = "Pendiente"
L["ROLL_STATUS_1"] = "En marcha"
L["ROLL_STATUS_-1"] = "Cancelado"
L["ROLL_STATUS_2"] = "Hecho"
L["ROLL_TRADED"] = "Comerciado"
L["ROLL_WHISPER_SUPPRESSED"] = "Puja de %s para %s -> %s / %s."
L["ROLL_WINNER_MASTERLOOT"] = "%s ha ganado %s de %s."
L["ROLL_WINNER_OTHER"] = "%s ha ganado tu objeto %s -> %s"
L["ROLL_WINNER_OWN"] = "Has ganado tu propio objeto %s."
L["ROLL_WINNER_SELF"] = "Has ganado %s de %s -> %s."
L["TRADE_CANCEL"] = "Cancelando comercio con %s."
L["TRADE_START"] = "Empezando comercio con %s."

-- Globals
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NO_ADDON"] = "El dueño de este objeto no usa el addon PersoLootRoll."
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NO_DISENCHANT"] = "El dueño de este objeto no permite \"Desencantar\""
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NOT_ENCHANTER"] = "Tu personaje no tiene la profesión \"Encantamiento\"."


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
