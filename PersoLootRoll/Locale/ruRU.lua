local Name, Addon = ...
local Locale = Addon.Locale
local lang = "ruRU"

-- Chat messages
local L = {lang = lang}
setmetatable(L, Locale.MT)
Locale[lang] = L

-- Messages
L["MSG_BID_1"] = "Тебе это нужно %s?"
L["MSG_BID_2"] = "Можно мне %s, если тебе не нужно?"
L["MSG_BID_3"] = "Я могу забрать %s, если ты не хочешь."
L["MSG_BID_4"] = "Я бы взял %s, если ты хочешь избавиться от него."
L["MSG_BID_5"] = "Тебе нужно %s, или я могу получить?"
L["MSG_HER"] = "её"
L["MSG_HIM"] = "его"
L["MSG_ITEM"] = "предмет"
L["MSG_NEED"] = "нужно,да"
L["MSG_PASS"] = "откажусь,нет,не-а"
L["MSG_ROLL"] = "ролл,поделиться,отдать,раздать"
L["MSG_ROLL_ANSWER_AMBIGUOUS"] = "Я сейчас раздаю несколько предметов, пожалуйста, пришлите мне ссылку на предмет, который вы хотите."
L["MSG_ROLL_ANSWER_BID"] = "Хорошо, я зарегистрировал твою ставку на %s."
L["MSG_ROLL_ANSWER_NO"] = "Извините, вы больше не можете делать ставки за этот предмет."
L["MSG_ROLL_ANSWER_NO_OTHER"] = "Извини, я уже отдал кому-то другому."
L["MSG_ROLL_ANSWER_NO_SELF"] = "Извини, я оставлю себе."
L["MSG_ROLL_ANSWER_NOT_ELIGIBLE"] = "К сожалению, вы не можете претендовать на данный предмет."
L["MSG_ROLL_ANSWER_NOT_TRADABLE"] = "Извини, я не могу передать этот предмет."
L["MSG_ROLL_ANSWER_STARTED"] = "Хорошо, я начну розыгрыш этого предмета."
L["MSG_ROLL_ANSWER_YES"] = "Ты можешь забрать этот предмет, предложи мне обмен."
L["MSG_ROLL_ANSWER_YES_MASTERLOOT"] = "Ты можешь забрать этот предмет, предложи <%s> обмен."
L["MSG_ROLL_DISENCHANT"] = "<%s> распылит %s -> Предложи мне обмен!"
L["MSG_ROLL_DISENCHANT_MASTERLOOT"] = "<%s> распылит %s от <%s> -> Предложи обмен!"
L["MSG_ROLL_DISENCHANT_MASTERLOOT_OWN"] = "<%s> распылит собственный предмет %s!"
L["MSG_ROLL_DISENCHANT_WHISPER"] = "Ты был выбран для распыления %s, предложи мне обмен."
L["MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT"] = "Вы были выбраны для распыления %s у <% s>, пожалуйста, обменяйтсь с ним/ней."
L["MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN"] = "Вы были выбраны для распыления вашего %s!"
L["MSG_ROLL_START"] = "Отдаю %s -> /w мне или /roll %d!"
L["MSG_ROLL_START_CONCISE"] = "%s надо кому-нибудь?"
L["MSG_ROLL_START_MASTERLOOT"] = "Отдаю %s от <%s> -> /w мне или /roll %d!"
L["MSG_ROLL_WINNER"] = "<%s> выиграл %s -> Предложи мне обмен!"
L["MSG_ROLL_WINNER_CONCISE"] = "%s предложи мне обмен!"
L["MSG_ROLL_WINNER_MASTERLOOT"] = "<%s> выиграл %s от <%s> -> Предложи %s обмен!"
L["MSG_ROLL_WINNER_MASTERLOOT_OWN"] = "<%s> выиграл собственный предмет %s!"
L["MSG_ROLL_WINNER_WHISPER"] = "Ты выиграл %s! Предложи мне обмен."
L["MSG_ROLL_WINNER_WHISPER_CONCISE"] = "Предложи мне обмен, пожалуйста."
L["MSG_ROLL_WINNER_WHISPER_MASTERLOOT"] = "Ты выиграл %s от <%s>! Предложи %s обмен."
L["MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN"] = "Ты выиграл собственный предмет %s!"


-- Addon
local L = LibStub("AceLocale-3.0"):NewLocale(Name, lang, lang == Locale.FALLBACK)
if not L then return end

L["ACTION"] = "Действие"
L["ACTIONS"] = "Действия"
L["ADVERTISE"] = "Сообщить в чат"
L["ANSWER"] = "Ответ"
L["ASK"] = "Спросить"
L["AWARD"] = "Отдать"
L["AWARD_LOOT"] = "Отдать добычу"
L["AWARD_RANDOMLY"] = "Отдать случайно"
L["BID"] = "Заявка"
L["COMMUNITY_GROUP"] = "Группа сообщества"
L["COMMUNITY_MEMBER"] = "Участник сообщества"
L["CONFIRM"] = "Подтвердить"
L["DISABLED"] = "Отключено"
L["DOWN"] = "вниз"
L["ENABLED"] = "Включено"
L["EQUIPPED"] = "Надетые"
L["GET_FROM"] = "Получено от"
L["GIVE_AWAY"] = "Разыграть"
L["GIVE_TO"] = "Отдать"
L["GUILD_MASTER"] = "Глава гильдии"
L["GUILD_OFFICER"] = "Офицер гильдии"
L["HIDE"] = "Скрыть"
L["HIDE_ALL"] = "Скрыть все"
L["ITEM"] = "предмет"
L["ITEM_LEVEL"] = "Уровень предмета"
L["KEEP"] = "Оставить"
L["LEFT"] = "влево"
L["MASTERLOOTER"] = "Ответственный за добычу"
L["MESSAGE"] = "Сообщение"
L["ML"] = "ОД"
L["OPEN_ROLLS"] = "Открыть окно с бросками"
L["OWNER"] = "Владелец"
L["PLAYER"] = "Игрок"
L["PRIVATE"] = "Приватный"
L["PUBLIC"] = "Публичный"
L["RAID_ASSISTANT"] = "Помощник  рейда"
L["RAID_LEADER"] = "Лидер рейда"
L["RESTART"] = "Перезапуск"
L["RIGHT"] = "вправо"
L["RINGS"] = "Кольца"
L["ROLL"] = "Розыгрыш"
L["ROLLS"] = "Розыгрыши"
L["SECONDS"] = "%d с."
L["SET_ANCHOR"] = "Установить привязку: Увеличиваться %s и %s"
L["SHOW"] = "Показать"
L["SHOW_ALL"] = "Показать все"
L["SHOW_HIDE"] = "Показать/Скрыть"
L["TRADE"] = "Обмен"
L["TRINKETS"] = "Аксессуары"
L["UP"] = "вверх"
L["VERSION_NOTICE"] = "Доступна новая версия этого аддона. Пожалуйста, обновите, чтобы оставаться совместимым со всеми и не пропустить ни одной добычи!"
L["VOTE"] = "Голос"
L["VOTE_WITHDRAW"] = "Отозвать"
L["VOTES"] = "Голоса"
L["WAIT"] = "Подождите"
L["WINNER"] = "Победитель"
L["WON"] = "Выиграл"
L["YOUR_BID"] = "Ваша заявка"

-- Commands
L["HELP"] = [=[Начать розыгрыши предметов (/PersoLootRoll или /plr).
Использование:
/plr: Открыть окно розыгрышей
/plr help: Показать это сообщение
/plr roll [предмет]* (<владелец><таймаут>): Начать розыгрыш одного и более предметов
/plr bid [предмет] (<владелец> <ставка>): Ставка на предмет от другого игрока
/plr trade (<player>): Начать обмен с указанным игроком или игроком, выбранным в цель
/plr test: Начать тестовый розыгрыш (виден только вам)
/plr options: Открыть настройки
/plr config: Изменить настройки через команды чата
/plr debug: Включить/выключить режим отладки
Легенда: [..] = ссылка на предмет, * = один и более раз, (..) = опционально]=]
L["USAGE_BID"] = "Использование: /plr bid <владелец> ([предмет])"
L["USAGE_ROLL"] = "Использование: /plr roll [предмет]* (<таймаут> <владелец>)"

-- Errors
L["ERROR_CMD_UNKNOWN"] = "Неизвестная команда '%s' "
L["ERROR_COLLECTION_FILTERS_DISABLED"] = "Все фильтры коллекции отключены. Если вы хотите разыграть пропущенные элементы коллекции, убедитесь, что они включены в параметрах фильтра предметов."
L["ERROR_ITEM_NOT_TRADABLE"] = "Вы не можете передать этот предмет."
L["ERROR_NOT_IN_GROUP"] = "Вы не в группе или рейде."
L["ERROR_NOT_MASTERLOOTER_OTHER_OWNER"] = "Вы должны стать ответственным за добычу, чтобы создавать броски для предметов других игроков."
L["ERROR_NOT_MASTERLOOTER_TIMEOUT"] = "Вы не можете изменить время ожидания если вы не Ответственный за добычу."
L["ERROR_OPT_MASTERLOOT_EXPORT_FAILED"] = "Экспорт настроек «Ответственного за добычу» на <%s> не удался! "
L["ERROR_PLAYER_NOT_FOUND"] = "Игрок %q не найден."
L["ERROR_ROLL_BID_IMPOSSIBLE_OTHER"] = "%s отправил заявку на %s, но сейчас это не разрешено."
L["ERROR_ROLL_BID_IMPOSSIBLE_SELF"] = "Вы не можете делать заявки на этот предмет прямо сейчас."
L["ERROR_ROLL_BID_UNKNOWN_OTHER"] = "%s отправил недопустимую заявку для %s."
L["ERROR_ROLL_BID_UNKNOWN_SELF"] = "Это неправильная заявка."
L["ERROR_ROLL_STATUS_NOT_0"] = "Этот бросок уже был начат или завершен."
L["ERROR_ROLL_STATUS_NOT_1"] = "Розыгрыш не запущен."
L["ERROR_ROLL_UNKNOWN"] = "Этот бросок не существует."
L["ERROR_ROLL_VOTE_IMPOSSIBLE_OTHER"] = "%s проголосовал за %s, но сейчас это не разрешено."
L["ERROR_ROLL_VOTE_IMPOSSIBLE_SELF"] = "Вы не можете проголосовать прямо сейчас."

-- GUI
L["DIALOG_MASTERLOOT_ASK"] = "<%s> хочет стать вашим ответственным за добычу."
L["DIALOG_OPT_MASTERLOOT_LOAD"] = "Это заменит ваши текущие настройки «Ответственного за добычу» теми, которые хранятся в информации гильдии/сообщества, вы уверены, что хотите продолжить? "
L["DIALOG_OPT_MASTERLOOT_SAVE"] = "Это заменит любые настройки «Ответственного за добычу» в информации гильдии/сообщества вашими текущими настройками, вы уверены, что хотите продолжить?"
L["DIALOG_ROLL_CANCEL"] = "Вы действительно хотите отменить этот бросок?"
L["DIALOG_ROLL_RESTART"] = "Вы действительно хотите перезапустить этот бросок?"
L["DIALOG_ROLL_WHISPER_ASK"] = "Хотите ли вы автоматически шептать другим игрокам, чтобы попросить добычу? Вы можете изменить это в любое время в опциях «Сообщения»."
L["FILTER"] = "Фильтр"
L["FILTER_ALL"] = "Для всех игроков"
L["FILTER_ALL_DESC"] = "Показать не только Ваши розыгрыши, а всех игроков или тех, у кого есть предметы, которые могут вас заинтересовать."
L["FILTER_AWARDED"] = "Выигранные"
L["FILTER_AWARDED_DESC"] = "Показать розыгрыши, выигранные кем-то."
L["FILTER_DONE"] = "Завершенные"
L["FILTER_DONE_DESC"] = "Показать завершенные розыгрыши."
L["FILTER_HIDDEN"] = "Скрытые"
L["FILTER_HIDDEN_DESC"] = "Показать отмененные, ожидающие, пропущенные и скрытые розыгрыши."
L["FILTER_TRADED"] = "Отданы"
L["FILTER_TRADED_DESC"] = "Показать розыгрыши предметов, которые были отданы.  "
L["MENU_MASTERLOOT_SEARCH"] = "Поиск ответственного за добычу"
L["MENU_MASTERLOOT_SETTINGS"] = "Настройки «Ответственного за добычу»"
L["MENU_MASTERLOOT_START"] = "Стать ответственным за добычу"
L["TIP_ADDON_MISSING"] = "Аддон отсутствует:"
L["TIP_ADDON_VERSIONS"] = "Версии аддона:"
L["TIP_CHAT_TO_TRADE"] = "Сначала спросите владельца, перед тем как предложить обмен"
L["TIP_COMP_ADDON_USERS"] = "Совместимые пользователи аддона:"
L["TIP_ENABLE_WHISPER_ASK"] = "Совет: щелкните правой кнопкой мыши, чтобы автоматически запрашивать добычу"
L["TIP_MASTERLOOT"] = "Ответственный за добычу активен"
L["TIP_MASTERLOOT_INFO"] = [=[|cffffff78Ответственный за добычу:|r %s
|cffffff78Период розыгрыша:|r %d с. (+ %d с. на предмет)
|cffffff78Совет:|r %s
|cffffff78Заявки:|r %s
|cffffff78Голоса:|r %s]=]
L["TIP_MASTERLOOT_START"] = "Стать или искать ответственного за добычу"
L["TIP_MASTERLOOT_STOP"] = "Убрать ответственного за добычу"
L["TIP_MASTERLOOTING"] = "Группа ответственного за добычу (%d):"
L["TIP_MINIMAP_ICON"] = [=[|cffffff78Left-Click:|r Показать окно с бросками
|cffffff78Right-Click:|r Открыть настройки]=]
L["TIP_SUPPRESS_CHAT"] = "|cffffff78Совет:|r Вы можете скрыть одно сообщение нажав с shift на Заявка/Пропуск. "
L["TIP_TEST"] = "Показать тестовый розыгрыш "
L["TIP_VOTES"] = "Голоса от:"

-- Options-Home
L["OPT_ACTIONS_WINDOW"] = "Показать окно действий"
L["OPT_ACTIONS_WINDOW_DESC"] = "Показать окно действий, когда есть ожидающие действия, например, когда выиграли предмет и нужно предложить обмен, чтобы получить его."
L["OPT_ACTIONS_WINDOW_MOVE"] = "Переместить"
L["OPT_ACTIONS_WINDOW_MOVE_DESC"] = "Переместить окно действий."
L["OPT_ACTIVE_GROUPS"] = "Активировать по типу группы"
L["OPT_ACTIVE_GROUPS_DESC"] = [=[Активировать только тогда, когда вы находитесь в одном из этих типов групп. |cffffff78Гильдейская группа:|r Кто-то из гильдии, члены которой составляют %d%% или более группы.
|cffffff78Группа Сообщества:|r Кто-то из вашего WoW-Сообщества, члены которого составляют %d%% или более группы.]=]
L["OPT_ALLOW_DISENCHANT"] = "Разрешить ставки на \"Распыление\""
L["OPT_ALLOW_DISENCHANT_DESC"] = "Разрешить остальным делать ставки на \"Распыление\" ваших предметов."
L["OPT_AUTHOR"] = "|cffffd100Автор:|r Shrugal (EU-Mal'Ganis)"
L["OPT_AWARD_SELF"] = "Выберите победителя ваших предметов самостоятельно"
L["OPT_AWARD_SELF_DESC"] = "Выбирать самому кто получит вашу добычу, вместо того чтобы аддон случайно выбирал. Эта опция всегда включена, когда вы ответственный за добычу."
L["OPT_BID_PUBLIC"] = "Публичные заявки"
L["OPT_BID_PUBLIC_DESC"] = "Заявки в ваших розыгрышах являются публичными, поэтому все с аддоном могут их видеть."
L["OPT_CHILL_MODE"] = "Спокойный режим"
L["OPT_CHILL_MODE_DESC"] = [=[Цель Спокойного режима - уменьшить напряжение, возникающее в процессе распределения добычи, даже если это займет немного больше времени. Если вы включите его, произойдут следующие изменения:
 |cffffff781.|r Розыгрыши ваших предметов не начнутся, пока вы не решите ими поделиться; таким образом у вас будет столько времени на принятие решение, сколько нужно, и другие пользователи аддона не увидят ваших предметов, пока вы этого не сделаете. 
|cffffff782.|r Ваши розыгрыши будут длиться вдвое дольше, либо вообще не будут иметь длительности, если вы включили выбор победителя розыгрыша вручную (см. следующую опцию). 
|cffffff783.|r Розыгрыши других участников группы, не использующих этот аддон, также будут оставаться открытыми, пока вы не решите, нужен вам этот предмет или нет.
|cffff0000IMPORTANT:|r Розыгрыши от других пользователей аддона без включенного Спокойного режима будут иметь нормальную длительность. Убедитесь, что все в вашей группе включили данную функцию, если хотите спокойный поход.]=]
L["OPT_COLLECTIONS"] = "Всегда показывайте пропущенные коллекционные предметы из этих коллекций, независимо от других правил."
L["OPT_DISENCHANT"] = "Распылить"
L["OPT_DISENCHANT_DESC"] = "Делать ставки на \"Распыление\" предметов, которые вы не можете использовать, если профессия изучена и владелец предмета разрешил это."
L["OPT_DONT_SHARE"] = "Не делиться добычей"
L["OPT_DONT_SHARE_DESC"] = "Не участвовать в розыгрышах добычи от других и не делиться своей добычей. Аддон будет отклонять входящие запросы на вашу добычу (если включено), и вы все еще можете быть ответственным за добычу и членом совета."
L["OPT_ENABLE"] = "Включить"
L["OPT_ENABLE_DESC"] = "Включить или отключить аддон"
L["OPT_ENABLE_MODULE_DESC"] = "Включить или выключить этот модуль"
L["OPT_ILVL_THRESHOLD"] = "Диапазон уровней предметов"
L["OPT_ILVL_THRESHOLD_DESC"] = "Предметы, уровень которых ниже ваших, игнорируются."
L["OPT_ILVL_THRESHOLD_DOUBLE"] = "Двойной порог для ..."
L["OPT_ILVL_THRESHOLD_DOUBLE_DESC"] = "Некоторые предметы должны иметь двойное значение порогового уровня предметов, так как проки и всё такое могут заставить их ценность сильно варьироваться."
L["OPT_ILVL_THRESHOLD_RINGS"] = "Двойной порог для колец"
L["OPT_ILVL_THRESHOLD_RINGS_DESC"] = "Кольца должны иметь двойное значение порогового уровня предметов, так как отсутствие первичных характеристик может заставить их ценность сильно варьироваться."
L["OPT_ILVL_THRESHOLD_TRINKETS"] = "Удвоить диапазон для аксессуаров"
L["OPT_ILVL_THRESHOLD_TRINKETS_DESC"] = "Аксессуары должны иметь двойной диапазон, потому что эффекты на них могут сделать их ценность больше."
L["OPT_INFO"] = "Информация"
L["OPT_INFO_DESC"] = "Немного информации об этом аддоне."
L["OPT_ITEM_FILTER"] = "Фильтр предметов"
L["OPT_ITEM_FILTER_DESC"] = "Изменить предметы о розыгрыше которых вас спросят."
L["OPT_ITEM_FILTER_ENABLE"] = "Включить дополнительные правила"
L["OPT_ITEM_FILTER_ENABLE_DESC"] = "Предметы, которые вы не можете использовать или отправлять другим вашим персонажам, всегда будут отфильтровываться. Ниже вы можете установить дополнительные условия, которым предметы должны соответствовать для того, чтобы быть показаными вам."
L["OPT_LVL_THRESHOLD"] = "Порог уровня персонажа"
L["OPT_LVL_THRESHOLD_DESC"] = "Игнорировать предметы, которые требуют, чтобы уровень вашего персонажа был выше. Установите -1, чтобы отключить этот фильтр."
L["OPT_MINIMAP_ICON"] = "Показать значок у мини-карты"
L["OPT_MINIMAP_ICON_DESC"] = "Показать или скрыть значок у мини-карты."
L["OPT_MISSING_PETS"] = "Отсутствующие боевые питомцы"
L["OPT_MISSING_TRANSMOG"] = "Отсутствующие облики трансмогрификации"
L["OPT_MISSING_TRANSMOG_ITEM"] = "Проверять предметы трансмогрификации"
L["OPT_MISSING_TRANSMOG_ITEM_DESC"] = "Проверять, собрали ли вы конкретный предмет, а не только его внешний вид"
L["OPT_ONLY_MASTERLOOT"] = "Только ответственный за добычу"
L["OPT_ONLY_MASTERLOOT_DESC"] = "Включать аддон только когда используется 'ответственный за добычу' (например, в гильдии)"
L["OPT_PAWN"] = "\"Pawn\" проверка"
L["OPT_PAWN_DESC"] = "Делать бросок только на предметы, которые являются лучше по мнению аддона «Pawn»."
L["OPT_ROLL_FRAMES"] = "Показать панели розыгрышей"
L["OPT_ROLL_FRAMES_DESC"] = "Показать панели розыгрышей, когда кто-либо получает добычу, в которой вы можете быть заинтересованы."
L["OPT_ROLLS_WINDOW"] = "Показать окно розыгрышей"
L["OPT_ROLLS_WINDOW_DESC"] = "Всегда показывать окно бросков (со всеми бросками на нем), когда кто-то получает что-то, что может быть вам интересно. Это всегда включено, когда вы являетесь ответственным за добычу."
L["OPT_SPECS"] = "Специализации"
L["OPT_SPECS_DESC"] = "Предлагать добычу только для этих специализаций."
L["OPT_TRANSLATION"] = "|cffffd100Перевод:|r Боонер (EU-Галакронд)"
L["OPT_TRANSMOG"] = "Проверять на трансмогрификацию."
L["OPT_TRANSMOG_DESC"] = "Участвовать в розыгрышах предметов, которых нет в коллекции моделей."
L["OPT_UI"] = "Пользовательский интерфейс"
L["OPT_UI_DESC"] = "Настройте внешний вид %s по своему вкусу."
L["OPT_VERSION"] = "|cffffd100Версия:|r %s"

-- Options-Masterloot
L["OPT_MASTERLOOT"] = "«Ответственный за добычу»"
L["OPT_MASTERLOOT_APPROVAL"] = "Утверждение"
L["OPT_MASTERLOOT_APPROVAL_ACCEPT"] = "Автоматически принимать ответственного за добычу"
L["OPT_MASTERLOOT_APPROVAL_ACCEPT_DESC"] = "Автоматически принимать запросы на 'ответственного за добычу' от этих игроков"
L["OPT_MASTERLOOT_APPROVAL_ALLOW"] = "Разрешить стать ответственным за добычу"
L["OPT_MASTERLOOT_APPROVAL_ALLOW_ALL"] = "Разрешить всем"
L["OPT_MASTERLOOT_APPROVAL_ALLOW_ALL_DESC"] = "|cffff0000ПРЕДУПРЕЖДЕНИЕ:|r Это разрешит всем запрашивать стать вашим ответственным за добычу и возможно вас могут обмануть, чтобы вы отдали свою добычу! Включайте это только, если вы знаете, что делаете."
L["OPT_MASTERLOOT_APPROVAL_ALLOW_DESC"] = "Выбрать кто может делать запрос на то, чтобы стать вашим ответственным за добычу. Вы всё равно будете получать выскакивающие сообщения, спрашивающие вашего разрешения, где вы сможете отклонить подобный запрос. |cffffff78Гильдейская группа:|r Кто-то из гильдии, члены которой составляют %d%% или более группы."
L["OPT_MASTERLOOT_APPROVAL_DESC"] = "Здесь вы можете задать кто может стать вашим ответственным за добычу."
L["OPT_MASTERLOOT_APPROVAL_WHITELIST"] = "Белый список ответственных за добычу"
L["OPT_MASTERLOOT_APPROVAL_WHITELIST_DESC"] = "Вы также можете указать имена персонажей, которые могут стать вашим ответственным за добычу. Разделяйте имена пробелами или запятыми."
L["OPT_MASTERLOOT_AWARD"] = "Передача победителю"
L["OPT_MASTERLOOT_BIDS_AND_VOTES"] = "Ставки и голоса"
L["OPT_MASTERLOOT_CLUB"] = "Гильдия/Сообщество"
L["OPT_MASTERLOOT_CLUB_DESC"] = "Выберите Гильдию/Сообщество для импорта/экспорта настроек."
L["OPT_MASTERLOOT_COUNCIL"] = "Совет"
L["OPT_MASTERLOOT_COUNCIL_CLUB_RANK"] = "Гильдейское звание для совета"
--[[Translation missing --]]
L["OPT_MASTERLOOT_COUNCIL_CLUB_RANK_DESC"] = "Add members of this guild/community rank to you council, in addition to the options above."
--[[Translation missing --]]
L["OPT_MASTERLOOT_COUNCIL_DESC"] = "Players on your loot council can vote on who should get the loot."
--[[Translation missing --]]
L["OPT_MASTERLOOT_COUNCIL_ROLES"] = "Council roles"
--[[Translation missing --]]
L["OPT_MASTERLOOT_COUNCIL_ROLES_DESC"] = "Which players should automatically become part of your council."
--[[Translation missing --]]
L["OPT_MASTERLOOT_COUNCIL_WHITELIST"] = "Council whitelist"
--[[Translation missing --]]
L["OPT_MASTERLOOT_COUNCIL_WHITELIST_DESC"] = "You can also name specific players to be on your council. Separate multiple names with spaces or commas."
L["OPT_MASTERLOOT_DESC"] = "Когда вы или кто-то другой становитесь ответственным за добычу, вся добыча будет распределяться этим человеком. Вы получите уведомление о том, чьи предметы вы выиграли или кто выиграл ваши, так что вы сможете произвести обмен с нужным человеком."
L["OPT_MASTERLOOT_EXPORT_DONE"] = "Настройки «Ответственного за добычу» успешно экспортированы в <%s>."
--[[Translation missing --]]
L["OPT_MASTERLOOT_EXPORT_GUILD_ONLY"] = "Please replace the community's current info with this text, because automatically replacing it is only possible for guilds."
--[[Translation missing --]]
L["OPT_MASTERLOOT_EXPORT_NO_PRIV"] = "Please ask a leader to replace the guild's info with this text, because you don't have the right to do so yourself."
L["OPT_MASTERLOOT_EXPORT_WINDOW"] = "Экспорт настроек «Ответственного за добычу»"
L["OPT_MASTERLOOT_LOAD"] = "Загрузить"
L["OPT_MASTERLOOT_LOAD_DESC"] = "Загрузить настройки из описания гильдии/сообщества"
L["OPT_MASTERLOOT_RULES"] = "Правила"
L["OPT_MASTERLOOT_RULES_ALLOW_DISENCHANT_DESC"] = "Разрешить участникам группы делать ставки на \"Распыление\"."
L["OPT_MASTERLOOT_RULES_ALLOW_KEEP"] = "Разрешить оставлять себе добычу"
L["OPT_MASTERLOOT_RULES_ALLOW_KEEP_DESC"] = "Разрешить владельцам предмета оставлять их себе и раздавать только, если он не хотят оставить их себе."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD"] = "Раздавать добычу автоматически"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_DESC"] = "Let the addon decide who should get the loot, based on factors like council votes, bids and equipped ilvl."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT"] = "Время ожидания автораспределения (базовое) "
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_DESC"] = "The base time to wait before auto-awarding loot, so you have time to collect votes and maybe decide for yourself."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_PER_ITEM"] = "Время ожидания автораспределения (на предмет)"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_PER_ITEM_DESC"] = "Will be added to the base auto award time for each item that dropped."
L["OPT_MASTERLOOT_RULES_BID_PUBLIC"] = "Публичные заявки"
L["OPT_MASTERLOOT_RULES_BID_PUBLIC_DESC"] = "Вы можете сделать заявки публичными, чтобы все могли видеть, кто на что делает заявки."
L["OPT_MASTERLOOT_RULES_DESC"] = "Эти настройки применяются ко всем, когда вы ответственный за добычу."
L["OPT_MASTERLOOT_RULES_DISENCHANTER"] = "Распылитель"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_DISENCHANTER_DESC"] = "Give loot nobody wants to these players for disenchanting. Separate multiple names with spaces or commas."
L["OPT_MASTERLOOT_RULES_GREED_ANSWERS"] = "Пользовательские «не откажусь» ответы"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_GREED_ANSWERS_DESC"] = [=[Specify up to 9 custom answers when rolling 'Greed', with decreasing priority. You can also insert '%s' itself to lower its priority below the prior answers. Separate multiple entries with Commas.

They can be accessed by right-clicking on the 'Greed' button when rolling on loot.]=]
L["OPT_MASTERLOOT_RULES_NEED_ANSWERS"] = "Настраиваемые ответы 'Нужно'"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_NEED_ANSWERS_DESC"] = [=[Specify up to 9 custom answers when rolling 'Need', with decreasing priority. You can also insert '%s' itself to lower its priority below the prior answers. Separate multiple entries with Commas.

They can be accessed by right-clicking on the 'Need' button when rolling on loot.]=]
L["OPT_MASTERLOOT_RULES_START_ALL"] = "Начать розыгрыш для всех"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_ALL_DESC"] = "Start rolls for all suitable items that group members without the addon loot."
L["OPT_MASTERLOOT_RULES_START_LIMIT"] = "Ограничение совпадающих бросков"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_LIMIT_DESC"] = [=[Maximum number of rolls to run simultaneously. Subsequent rolls will automatically start after the previous ones have ended, even if you chose to start rolls manually.

Disable by setting it to 0.]=]
L["OPT_MASTERLOOT_RULES_START_MANUALLY"] = "Начать разделение вручную"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_MANUALLY_DESC"] = "Don't start new rolls automatically, but manually through the main rolls window."
L["OPT_MASTERLOOT_RULES_START_WHISPER"] = "Начать разделение по шёпоту"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_START_WHISPER_DESC"] = "Allow group members without the addon to whisper you an item-link and the word \"%s\" to make you start a roll for their items."
L["OPT_MASTERLOOT_RULES_TIMEOUT_BASE"] = "Таймер розыгрыша (основной)"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_TIMEOUT_BASE_DESC"] = "The base running time for rolls, regardless of how many items have dropped."
L["OPT_MASTERLOOT_RULES_TIMEOUT_PER_ITEM"] = "Таймер розыгрыша (за предмет)"
--[[Translation missing --]]
L["OPT_MASTERLOOT_RULES_TIMEOUT_PER_ITEM_DESC"] = "Will be added to the base roll running time for each item that dropped."
L["OPT_MASTERLOOT_RULES_VOTE_PUBLIC"] = "Совет голосует открыто"
L["OPT_MASTERLOOT_RULES_VOTE_PUBLIC_DESC"] = "Вы можете сделать, чтобы совет голосовал открыто, чтобы каждый мог увидеть, у кого сколько голосов."
L["OPT_MASTERLOOT_SAVE"] = "Сохранить"
--[[Translation missing --]]
L["OPT_MASTERLOOT_SAVE_DESC"] = "Save your current masterloot settings to your guild/community's description."

-- Options-Messages
L["OPT_CUSTOM_MESSAGES"] = "Пользовательские сообщения"
L["OPT_CUSTOM_MESSAGES_DEFAULT"] = "Язык по умолчанию (%s)"
L["OPT_CUSTOM_MESSAGES_DEFAULT_DESC"] = "Эти сообщения будут использованы, когда получатель говорит на %s или каком-либо другом, отличающимся от стандартного языка вашего игрового мира (%s)."
L["OPT_CUSTOM_MESSAGES_DESC"] = "Вы можете поменять порядок меток (|cffffff78%s|r, |cffffff78%d|r) добавив их позицию и знак $ в середине, например |cffffff78%2$s|r вместо |cffffff78%s|r для второй метки. Смотри подсказки для подробностей."
L["OPT_CUSTOM_MESSAGES_LOCALIZED"] = "Язык игрового мира (%s)"
L["OPT_CUSTOM_MESSAGES_LOCALIZED_DESC"] = "Эти сообщения будут использоваться, когда у получателя совпадает язык игрового мира с вашим (%s)."
L["OPT_ECHO"] = "Информация в чат"
L["OPT_ECHO_DEBUG"] = "Отладка"
L["OPT_ECHO_DESC"] = [=[Сколько информации вы хотите видеть от аддона в чате?

|cffffff78Отключено:|r Нисколько.
|cffffff78Ошибка:|r Только ошибки.
|cffffff78Инфо:|r Ошибки и полезная информация, на которую можно обратить внимание.
|cffffff78Подробно:|r Все сообщения о том, что делает аддон.
|cffffff78Отладка:|r Как и "Подробно" плюс дополнительная отладочная информация.]=]
L["OPT_ECHO_ERROR"] = "Ошибка"
L["OPT_ECHO_INFO"] = "Инфо"
L["OPT_ECHO_NONE"] = "Отключено"
L["OPT_ECHO_VERBOSE"] = "Подробно"
L["OPT_GROUPCHAT"] = "Чат группы"
L["OPT_GROUPCHAT_ANNOUNCE"] = "Анонсировать розыгрыши и победителей"
L["OPT_GROUPCHAT_ANNOUNCE_DESC"] = "Объявлять ваши розыгрыши и победителей в чате группы."
L["OPT_GROUPCHAT_CONCISE"] = "Краткие оповещения (если возможно)"
L["OPT_GROUPCHAT_CONCISE_DESC"] = "Использовать более краткие оповещения, когда с босса выпадает один предмет за раз (например, в подземельях на 5 человек). Аддон будет отправлять в чат ссылки на предметы, и участники группы смогут просто ответить \"\"%s\", \"%s\" или \"+\" , чтобы начать участие в розыгрыше."
L["OPT_GROUPCHAT_DESC"] = "Будет ли аддон публиковать сообщения в чате группы."
L["OPT_GROUPCHAT_GROUP_TYPE"] = "Объявлять по типу группы"
L["OPT_GROUPCHAT_GROUP_TYPE_DESC"] = [=[Отправлять сообщения в чат группы, только если вы находитесь в группе одного из этих типов. |cffffff78Гильдейская группа:|r Кто-то из гильдии, члены которой составляют %d%% или более группы.
|cffffff78Группа Сообщества:|r Кто-то из вашего WoW-Сообщества, члены которого составляют %d%% или более группы.]=]
L["OPT_GROUPCHAT_ROLL"] = "Участвовать в розыгрышах предметов из чата"
L["OPT_GROUPCHAT_ROLL_DESC"] = "Участвовать в розыгрышах предметов, которые вам нужны (/roll), если кто-то отправил ссылку на предмет в чат группы."
L["OPT_MESSAGES"] = "Сообщения"
L["OPT_MSG_BID"] = "Запросить добычу: Вариант %d"
L["OPT_MSG_BID_DESC"] = "1: Ссылка на предмет"
L["OPT_MSG_ROLL_ANSWER_AMBIGUOUS"] = "Ответ: отправьте мне ссылку на предмет"
L["OPT_MSG_ROLL_ANSWER_AMBIGUOUS_DESC"] = "⁠"
L["OPT_MSG_ROLL_ANSWER_BID"] = "Ответ: Заявка зарегистрирована"
L["OPT_MSG_ROLL_ANSWER_BID_DESC"] = "1: Ссылка на предмет"
L["OPT_MSG_ROLL_ANSWER_NO_OTHER"] = "Ответ: Я уже отдал кому-то другому"
L["OPT_MSG_ROLL_ANSWER_NO_OTHER_DESC"] = "⁠"
L["OPT_MSG_ROLL_ANSWER_NO_SELF"] = "Ответ: Мне нужно самому"
L["OPT_MSG_ROLL_ANSWER_NO_SELF_DESC"] = "⁠"
L["OPT_MSG_ROLL_ANSWER_NOT_TRADABLE"] = "Ответ: Предмет непередаваемый"
L["OPT_MSG_ROLL_ANSWER_NOT_TRADABLE_DESC"] = "⁠"
L["OPT_MSG_ROLL_ANSWER_STARTED"] = "Ответ: Я начал розыгрыш для тебя"
L["OPT_MSG_ROLL_ANSWER_STARTED_DESC"] = "После того как кто-то без аддона просит вас начать розыгрыш предмета будучи ответственным за добычу."
L["OPT_MSG_ROLL_ANSWER_YES"] = "Ответ: Ты можешь получить"
L["OPT_MSG_ROLL_ANSWER_YES_DESC"] = "⁠"
L["OPT_MSG_ROLL_ANSWER_YES_MASTERLOOT"] = "Ответ: Ты можешь получить предмет (в качестве ответственного за добычу)"
L["OPT_MSG_ROLL_ANSWER_YES_MASTERLOOT_DESC"] = "1: Владелец предмета"
L["OPT_MSG_ROLL_DISENCHANT"] = "Объявление победителя розыгрыша на распыление"
L["OPT_MSG_ROLL_DISENCHANT_DESC"] = [=[1: Распылитель
2: Ссылка на предмет]=]
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT"] = "Объявление победителя розыгрыша на распыление (в качестве ответственного за добычу)"
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_DESC"] = [=[1: Победитель розыгрыша на распыление
2: Ссылка на предмет
3: Владелец предмета
4: ему/ей]=]
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_OWN"] = "Объявление о том, что владелец предмета может его распылить (в качестве ответственного за добычу)"
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_OWN_DESC"] = [=[1: Владелец предмета
2: Ссылка на предмет]=]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER"] = "Сообщение выигравшему розыгрыш на распыление"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_DESC"] = "1: Ссылка на предмет"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT"] = "Сообщение выигравшему розыгрыш на распыление (в качестве ответственного за добычу)"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_DESC"] = [=[1: Ссылка на предмет 
2: Владелец предмета
3: ему/ей]=]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN"] = "Сообщению владельцу предмета о том, что он/она может распылить свой предмет (в качестве ответственного за добычу)"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN_DESC"] = "1: Ссылка на предмет"
L["OPT_MSG_ROLL_START"] = "Объявление нового розыгрыша"
L["OPT_MSG_ROLL_START_CONCISE"] = "Объявление нового розыгрыша (краткий)"
L["OPT_MSG_ROLL_START_CONCISE_DESC"] = "1: Ссылка на предмет"
L["OPT_MSG_ROLL_START_DESC"] = [=[1: Ссылка на предмет
2: Номер розыгрыша]=]
L["OPT_MSG_ROLL_START_MASTERLOOT"] = "Объявление о новом розыгрыше (в качестве ответственного за добычу)"
L["OPT_MSG_ROLL_START_MASTERLOOT_DESC"] = [=[1: Ссылка на предмет
2: Владелец предмета
3: Номер розыгрыша]=]
L["OPT_MSG_ROLL_WINNER"] = "Объявление победителя розыгрыша"
L["OPT_MSG_ROLL_WINNER_CONCISE"] = "Объявление победителя розыгрыша (кратко)"
L["OPT_MSG_ROLL_WINNER_CONCISE_DESC"] = "1: Победитель"
L["OPT_MSG_ROLL_WINNER_DESC"] = [=[1: Победитель
2: Ссылка на предмет]=]
L["OPT_MSG_ROLL_WINNER_MASTERLOOT"] = "Объявление победителя розыгрыша (в качестве ответственного за добычу)"
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_DESC"] = [=[1: Победитель
2: Ссылка на предмет
3: Владелец предмета
4: его/её]=]
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_OWN"] = "Объявление о том, что владелец предмета оставляет его себе (в качестве ответственного за добычу)"
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_OWN_DESC"] = [=[1: Владелец предмета
2: Ссылка на предмет]=]
L["OPT_MSG_ROLL_WINNER_WHISPER"] = "Сообщение победителю розыгрыша"
L["OPT_MSG_ROLL_WINNER_WHISPER_CONCISE"] = "Сообщение победителю розыгрыша (краткое)"
L["OPT_MSG_ROLL_WINNER_WHISPER_CONCISE_DESC"] = ""
L["OPT_MSG_ROLL_WINNER_WHISPER_DESC"] = "1: Ссылка на предмет"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT"] = "Сообщение победителю розыгрыша (в качестве ответственного за добычу)"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_DESC"] = [=[1: Ссылка на предмет
2: Владелец предмета
3: его/её]=]
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN"] = "Сообщение владельцу предмета о том, что он/она может оставить предмет себе (в качестве ответственного за добычу)"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN_DESC"] = "1: Ссылка на предмет"
L["OPT_SHOULD_CHAT"] = "Включить/Отключить"
L["OPT_SHOULD_CHAT_DESC"] = "Задайте когда аддон будет отправлять сообщения в чат группы/рейда и шептать другим игрокам."
L["OPT_WHISPER"] = "Шёпот"
L["OPT_WHISPER_ANSWER"] = "Ответить на запросы"
L["OPT_WHISPER_ANSWER_DESC"] = "Позволить аддону отвечать на личные сообщения от членов группы по поводу вещей, которые вы получили."
L["OPT_WHISPER_ASK"] = "Спросить про добычу"
L["OPT_WHISPER_ASK_DESC"] = "Шептать другим, если они получили добычу, которую вы хотите."
L["OPT_WHISPER_ASK_VARIANTS"] = "Включить варианты запроса"
L["OPT_WHISPER_ASK_VARIANTS_DESC"] = "Используйте разные строки (см. Ниже) при запросе лута, чтобы сделать его разнообразнее."
L["OPT_WHISPER_DESC"] = "Изменить, будет ли аддон шептать другим игрокам и / или отвечать на входящие сообщения."
L["OPT_WHISPER_GROUP"] = "Шептать по типу группы"
L["OPT_WHISPER_GROUP_DESC"] = "Шепнуть другим, если они получили добычу, которую вы хотите, в зависимости от типа группы, в которой вы находитесь."
L["OPT_WHISPER_GROUP_TYPE"] = "Спрашивать по типу группы"
L["OPT_WHISPER_GROUP_TYPE_DESC"] = [=[Спрашивать про добычу, если вы в одной из этих типов групп. |cffffff78Гильдейская группа:|r Кто-то из гильдии, члены которой составляют %d%% или более группы.
|cffffff78Группа Сообщества:|r Кто-то из вашего WoW-Сообщества, члены которого составляют %d%% или более группы.]=]
L["OPT_WHISPER_SUPPRESS"] = "Подавлять запросы"
L["OPT_WHISPER_SUPPRESS_DESC"] = "Подавлять входящие личные сообщения от подходящих игроков при розыгрыше добычи."
L["OPT_WHISPER_TARGET"] = "Спросить у цели"
L["OPT_WHISPER_TARGET_DESC"] = "Спросить про добычу в зависимости от того, находится ли цель в вашей гильдии или в списке друзей."

-- Plugins-EPGP
L["EPGP"] = "EPGP"
--[[Translation missing --]]
L["EPGP_CREDIT_GP"] = "Crediting %d GP to <%s> for %s."
L["EPGP_EP"] = "EP"
--[[Translation missing --]]
L["EPGP_ERROR_CREDIT_GP_FAILED"] = "Crediting %d GP to <%s> for %s failed!"
L["EPGP_GP"] = "GP"
L["EPGP_OPT_AWARD_BEFORE"] = "Приоритет присуждения"
--[[Translation missing --]]
L["EPGP_OPT_AWARD_BEFORE_DESC"] = "Pick before which default awarding method the EPGP PR value should be concidered when determining a winner."
--[[Translation missing --]]
L["EPGP_OPT_BID_WEIGHTS"] = "Bid GP weights"
--[[Translation missing --]]
L["EPGP_OPT_BID_WEIGHTS_DESC"] = "Assign different weights to roll bids. The GPs an item winner gets are multiplied by this value, and it can also be 0 or negative."
--[[Translation missing --]]
L["EPGP_OPT_DESC"] = "Use EPGP for your loot distribution when masterloot mode is active. This includes showing and sorting by the player's PR value, as well as crediting GP when loot is awarded."
L["EPGP_OPT_ONLY_GUILD_RAID"] = "Только в гильдийских рейдах "
--[[Translation missing --]]
L["EPGP_OPT_ONLY_GUILD_RAID_DESC"] = "Only activate when in a raid and at least %d%% of the group are from your guild."
L["EPGP_OPT_WARNING_NO_ADDON"] = "|cffff0000ПРЕДУПРЕЖДЕНИЕ:|r Для работы модуля необходимо установить и активировать аддон \"EPGP Next\"."
L["EPGP_OPT_WARNING_NO_OFFICER"] = "|cffff0000ПРЕДУПРЕЖДЕНИЕ:|r У вас нет разрешения редактировать офицерские заметки в вашей гильдии, поэтому EPGP не сможет давать GP для добычи, когда вы являетесь ответственным за добычу."
L["EPGP_PR"] = "PR"

-- Roll
L["BID_CHAT"] = "Спросить %s про %s -> %s."
L["BID_MAX_WHISPERS"] = "Не буду спрашивать %s про %s, потому что %d игроков в вашей группе уже спросили - > %s."
L["BID_NO_CHAT"] = "Не могу спросить или объявить бросок для %s. "
L["BID_NO_CHAT_ADDONS"] = "Не буду объявлять бросок для %s, потому что все используют аддон. "
L["BID_NO_CHAT_ANNOUNCE"] = "Не буду объявлять бросок для %s, потому что функция отключена."
L["BID_NO_CHAT_ASK"] = "Не буду спрашивать %s про %s, потому что функция отключена. - > %s."
L["BID_NO_CHAT_CLUB"] = "Не буду спрашивать %s про %s, потому что он/она член вашего сообщества  - > %s."
L["BID_NO_CHAT_DND"] = "Не буду спрашивать у %s про %s, потому что он/она в режиме 'не беспокоить' -> %s."
L["BID_NO_CHAT_FRIEND"] = "Не буду спрашивать %s про %s, потому что он/она ваш друг - > %s."
L["BID_NO_CHAT_GRP"] = "Не буду объявлять бросок для %s, потому что это '%s' группа."
L["BID_NO_CHAT_GRP_ASK"] = "Не буду спрашивать у %s про %s, потому что это '%s' группа -> %s"
L["BID_NO_CHAT_GUILD"] = "Не буду спрашивать %s про %s, потому что он/она член вашей гильдии - > %s."
L["BID_NO_CHAT_OTHER"] = "Не буду спрашивать %s про %s, потому что он/она случайный персонаж - > %s."
L["BID_NO_CHAT_SELF"] = "Не буду спрашивать у %s про %s, потому что это вы -> %s"
L["BID_NO_CHAT_TRACKING"] = "Не буду спрашивать у %s про %s, потому что он/она использует аддон -> %s."
L["BID_PASS"] = "Пропуск %s от %s."
L["BID_START"] = "Заявлено %q на %s от %s."
L["MASTERLOOTER_OTHER"] = "Теперь %s ответственный за добычу."
L["MASTERLOOTER_REJECT"] = "%s хочет стать вашим ответственным за добычу, но требуется разрешение на это в настройках режима «Ответственный за добычу»."
L["MASTERLOOTER_SELF"] = "Теперь Вы ответственный за добычу."
L["ROLL_AWARD_BIDS"] = "Ставки"
L["ROLL_AWARD_RANDOM"] = "Случайно"
L["ROLL_AWARD_ROLLS"] = "Результаты"
L["ROLL_AWARD_VOTES"] = "Голоса"
L["ROLL_AWARDED"] = "Отдано"
L["ROLL_AWARDING"] = "Награждение"
L["ROLL_CANCEL"] = "Отмена розыгрыша на %s от %s."
L["ROLL_END"] = "Конец розыгрыша %s от %s."
L["ROLL_IGNORING_BID"] = "Игнорирование заявки от %s для %s, потому что вы общались ранее - > Заявка: %s или %s."
L["ROLL_LIST_EMPTY"] = "Активные розыгрыши будут показаны здесь"
L["ROLL_START"] = "Начало розыгрыша на %s от %s."
L["ROLL_STATUS_0"] = "Ожидает"
L["ROLL_STATUS_1"] = "В процессе"
L["ROLL_STATUS_-1"] = "Отменён"
L["ROLL_STATUS_2"] = "Завершён"
L["ROLL_TRADED"] = "Передан"
L["ROLL_WHISPER_SUPPRESSED"] = "Заявка от %s на %s -> %s / %s."
L["ROLL_WINNER_MASTERLOOT"] = "%s выиграл %s от %s."
L["ROLL_WINNER_OTHER"] = "%s выиграл %s от тебя -> %s."
L["ROLL_WINNER_OWN"] = "Ты выиграл собственный предмет %s."
L["ROLL_WINNER_SELF"] = "Ты выиграл %s от %s -> %s."
L["TRADE_CANCEL"] = "Отмена обмена с %s."
L["TRADE_START"] = "Начало обмена с %s."

-- Globals
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NO_ADDON"] = "Владелец этого предмета не использует PersoLootRoll."
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NO_DISENCHANT"] = "Владелец этого предмета не разрешил делать ставки на \"Распыление\"."
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NOT_ENCHANTER"] = "Ваш персонаж не владеет профессией \"Наложение чар\"."


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
