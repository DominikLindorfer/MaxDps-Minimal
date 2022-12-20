local Name, Addon = ...
local Locale = Addon.Locale
local lang = "ptBR"

-- Chat messages
local L = {lang = lang}
setmetatable(L, Locale.MT)
Locale[lang] = L

-- Messages
L["MSG_BID_1"] = "Você precisa disso% s?"
L["MSG_BID_2"] = "Posso ter %s, se você não precisar?"
L["MSG_BID_3"] = "Eu poderia usar %s se você não quiser."
L["MSG_BID_4"] = "Eu aceitaria %s se você quiser se livrar dele."
L["MSG_BID_5"] = "Você precisa de %s, ou posso tê-lo?"
L["MSG_HER"] = "ela"
L["MSG_HIM"] = "ele"
L["MSG_ITEM"] = "item"
L["MSG_NEED"] = "preciso, sim"
L["MSG_PASS"] = "passar, não, não"
L["MSG_ROLL"] = "rolar, compartilhar, doar"
L["MSG_ROLL_ANSWER_AMBIGUOUS"] = "Estou dando vários itens agora, por favor me envie o link do item que você deseja."
L["MSG_ROLL_ANSWER_BID"] = "Ok, eu registrei sua oferta por %s."
L["MSG_ROLL_ANSWER_NO"] = "Desculpe, você não pode mais dar lances para esse item."
L["MSG_ROLL_ANSWER_NO_OTHER"] = "Desculpe, já dei para outra pessoa."
L["MSG_ROLL_ANSWER_NO_SELF"] = "Desculpe, eu mesmo preciso disso."
L["MSG_ROLL_ANSWER_NOT_ELIGIBLE"] = "Desculpe, você não é elegível para esse item."
L["MSG_ROLL_ANSWER_NOT_TRADABLE"] = "Desculpe, não posso trocar."
L["MSG_ROLL_ANSWER_STARTED"] = "Ok, vou começar um rolo para ele."
L["MSG_ROLL_ANSWER_YES"] = "Pode ficar com ele, apenas me troque."
L["MSG_ROLL_ANSWER_YES_MASTERLOOT"] = "Você pode tê-lo, apenas negocie <%s>."
L["MSG_ROLL_DISENCHANT"] = "<%s> irá desencantar %s -> Troque-me!"
L["MSG_ROLL_DISENCHANT_MASTERLOOT"] = "<%s> desencantará %s de <%s> -> Troque-o!"
L["MSG_ROLL_DISENCHANT_MASTERLOOT_OWN"] = "<%s> desencantará seu próprio %s!"
L["MSG_ROLL_DISENCHANT_WHISPER"] = "Você foi escolhido para desencantar %s, por favor me troque."
L["MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT"] = "Você foi escolhido para desencantar %s de <%s>, por favor, troque-o."
L["MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN"] = "Você foi escolhido para desencantar seu próprio %s!"
L["MSG_ROLL_START"] = "Doando %s -> /w me ou /roll %d!"
L["MSG_ROLL_START_CONCISE"] = "%s alguém precisa?"
L["MSG_ROLL_START_MASTERLOOT"] = "Doando %s de <%s> -> /w me ou /roll %d!"
L["MSG_ROLL_WINNER"] = "<%s> ganhou %s -> Troque-me!"
--[[Translation missing --]]
L["MSG_ROLL_WINNER_CONCISE"] = "%s trade me!"
L["MSG_ROLL_WINNER_MASTERLOOT"] = "<%s> ganhou %s de <%s> -> Troque ele/ela!"
L["MSG_ROLL_WINNER_MASTERLOOT_OWN"] = "<%s> ganhou seu próprio %s!"
L["MSG_ROLL_WINNER_WHISPER"] = "Você ganhou %s! Por favor, troque-me."
L["MSG_ROLL_WINNER_WHISPER_CONCISE"] = "Por favor, troque-me."
L["MSG_ROLL_WINNER_WHISPER_MASTERLOOT"] = "Você ganhou %s de <%s>! Por favor, troque-o."
L["MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN"] = "Você ganhou seu próprio %s!"


-- Addon
local L = LibStub("AceLocale-3.0"):NewLocale(Name, lang, lang == Locale.FALLBACK)
if not L then return end

L["ACTION"] = "Ação"
L["ACTIONS"] = "Ações"
L["ADVERTISE"] = "Anunciar no chat"
L["ANSWER"] = "Responder"
L["ASK"] = "Perguntar"
L["AWARD"] = "Prêmio"
L["AWARD_LOOT"] = "Prêmio saque"
L["AWARD_RANDOMLY"] = "Prêmio aleatório"
L["BID"] = "Lance"
L["COMMUNITY_GROUP"] = "Grupo da Comunidade"
L["COMMUNITY_MEMBER"] = "Membro da Comunidade"
L["CONFIRM"] = "Confirmar"
L["DISABLED"] = "Desativado"
L["DOWN"] = "abaixo"
L["ENABLED"] = "Habilitado"
L["EQUIPPED"] = "Equipado"
L["GET_FROM"] = "Obter de"
L["GIVE_AWAY"] = "Doar"
L["GIVE_TO"] = "Dar para"
L["GUILD_MASTER"] = "Oficial da Guilda"
L["GUILD_OFFICER"] = "Oficial da Guilda"
L["HIDE"] = "Esconder"
L["HIDE_ALL"] = "Esconda tudo"
L["ITEM"] = "item"
L["ITEM_LEVEL"] = "Nível de item"
L["KEEP"] = "Guardar"
L["LEFT"] = "Esquerda"
L["MASTERLOOTER"] = "Mestre Saqueador"
L["MESSAGE"] = "Mensagem"
L["ML"] = "ML"
L["OPEN_ROLLS"] = "Abrir janela de rolos"
L["OWNER"] = "Proprietário"
L["PLAYER"] = "Jogador"
L["PRIVATE"] = "Privado"
L["PUBLIC"] = "Público"
L["RAID_ASSISTANT"] = "Assistente de ataque"
L["RAID_LEADER"] = "Líder de ataque"
L["RESTART"] = "Reiniciar"
L["RIGHT"] = "Direita"
L["RINGS"] = "Anéis"
L["ROLL"] = "Rolar"
L["ROLLS"] = "Rolagens de dados"
L["SECONDS"] = "%ds"
L["SET_ANCHOR"] = "Definir âncora: Crescer %s e %s"
L["SHOW"] = "Mostrar"
L["SHOW_ALL"] = "Mostre tudo"
L["SHOW_HIDE"] = "Mostrar/Ocultar"
L["TRADE"] = "troca"
L["TRINKETS"] = "berloque"
L["UP"] = "Acima"
L["VERSION_NOTICE"] = "Há uma nova versão deste addon disponível. Por favor, atualize para ficar compatível com todos e não perca nenhum saque!"
L["VOTE"] = "Votar"
L["VOTE_WITHDRAW"] = "Retirar"
L["VOTES"] = "Votos"
L["WAIT"] = "Esperar"
L["WINNER"] = "Ganhador"
L["WON"] = "Ganhou"
L["YOUR_BID"] = "Seu lance"

-- Commands
L["HELP"] = "Inicie as jogadas e dê lances para itens (/PersoLootRoll ou /plr). Uso: /plr: Abra a janela do rolo /plr help: Imprima esta mensagem de ajuda /plr roll [item]* (<proprietário> <timeout>): Inicia um rolo para um ou mais itens /plr bid [item] ( <proprietário> <bid>): Lance por um item de outro jogador /plr trade (<player>): Troque com o jogador dado ou seu alvo atual /plr test: Inicie um teste (só você o verá) /plr opções: Abra a janela de opções /plr config: Altere as configurações através da linha de comando /plr debug: Alterna o modo de depuração Legenda: [..] = link do item, * = uma ou mais vezes, (..) = opcional"
L["USAGE_BID"] = "Uso: /plr lance [item] (<proprietário> <lance>)"
L["USAGE_ROLL"] = "Uso: /plr roll [item]* (<proprietário> <intervalo>)"

-- Errors
L["ERROR_CMD_UNKNOWN"] = "Comando desconhecido '%s'"
L["ERROR_COLLECTION_FILTERS_DISABLED"] = "Todos os filtros de coleta estão desativados. Se você quiser rolar em itens de coleta faltando certifique-se de habilitá-los nas opções de filtro de itens."
L["ERROR_ITEM_NOT_TRADABLE"] = "Você não pode trocar esse item."
L["ERROR_NOT_IN_GROUP"] = "Você não está em um grupo ou ataque."
L["ERROR_NOT_MASTERLOOTER_OTHER_OWNER"] = "Você precisa se tornar masterlooter para criar rolos para itens de outros jogadores."
L["ERROR_NOT_MASTERLOOTER_TIMEOUT"] = "Você não pode mudar o tempo limite enquanto tem um masterlooter além de si mesmo."
L["ERROR_OPT_MASTERLOOT_EXPORT_FAILED"] = "A exportação das configurações de saque mestre para <%s> falhou!"
L["ERROR_PLAYER_NOT_FOUND"] = "Não é possível encontrar o jogador %q."
L["ERROR_ROLL_BID_IMPOSSIBLE_OTHER"] = "%s enviou uma oferta por %s, mas não está autorizado a fazê-lo agora."
L["ERROR_ROLL_BID_IMPOSSIBLE_SELF"] = "Você não pode dar lances nesse item agora."
L["ERROR_ROLL_BID_UNKNOWN_OTHER"] = "%s enviou uma oferta inválida para %s."
L["ERROR_ROLL_BID_UNKNOWN_SELF"] = "Não é um lance válido."
L["ERROR_ROLL_STATUS_NOT_0"] = "O rolo já foi iniciado ou terminado."
L["ERROR_ROLL_STATUS_NOT_1"] = "O rolo não está funcionando."
L["ERROR_ROLL_UNKNOWN"] = "Esse rolo não existe."
L["ERROR_ROLL_VOTE_IMPOSSIBLE_OTHER"] = "%s enviou um voto para %s, mas não tem permissão para fazê-lo agora."
L["ERROR_ROLL_VOTE_IMPOSSIBLE_SELF"] = "Você não pode votar nesse item agora."

-- GUI
L["DIALOG_MASTERLOOT_ASK"] = "<%s> quer se tornar seu mestre saqueador."
L["DIALOG_OPT_MASTERLOOT_LOAD"] = "Isso substituirá suas configurações de masterloot atuais por aquelas armazenadas nas informações da guilda/comunidade, você tem certeza de que deseja prosseguir?"
L["DIALOG_OPT_MASTERLOOT_SAVE"] = "Isso substituirá quaisquer configurações de masterloot nas informações da guilda/comunidade com suas configurações atuais, você tem certeza de que deseja prosseguir?"
L["DIALOG_ROLL_CANCEL"] = "Você quer cancelar este rolo?"
L["DIALOG_ROLL_RESTART"] = "Deseja reiniciar este rolo?"
L["DIALOG_ROLL_WHISPER_ASK"] = "Você quer sussurrar automaticamente outros jogadores para pedir saque? Você pode alterar isso a qualquer momento nas opções \"Mensagens\"."
L["FILTER"] = "Filtro"
L["FILTER_ALL"] = "Para todos os jogadores"
L["FILTER_ALL_DESC"] = " Inclua rolos para todos os jogadores, não apenas para os seus ou aqueles com itens que possam lhe interessar."
L["FILTER_AWARDED"] = "Concedido"
L["FILTER_AWARDED_DESC"] = "Inclua rolos que foram ganhos por alguém."
L["FILTER_DONE"] = "Feito"
L["FILTER_DONE_DESC"] = "Inclua rolos que terminaram."
L["FILTER_HIDDEN"] = "Escondido"
L["FILTER_HIDDEN_DESC"] = "Inclua rolos cancelados, pendentes, passados e escondidos."
L["FILTER_TRADED"] = "Negociado"
L["FILTER_TRADED_DESC"] = "Inclua rolos cujos itens foram negociados."
L["MENU_MASTERLOOT_SEARCH"] = "Grupo de busca por um saqueador mestre"
L["MENU_MASTERLOOT_SETTINGS"] = "Configurações de saque mestre"
L["MENU_MASTERLOOT_START"] = "Torne-se mestre saqueador"
L["TIP_ADDON_MISSING"] = "Addon faltando:"
L["TIP_ADDON_VERSIONS"] = "Versões addon:"
L["TIP_CHAT_TO_TRADE"] = "Por favor, pergunte ao proprietário antes de negociar"
L["TIP_COMP_ADDON_USERS"] = "Usuários de addon compatíveis:"
L["TIP_ENABLE_WHISPER_ASK"] = "Dica: Clique com o botão direito do mouse para ativar o saque automaticamente"
L["TIP_MASTERLOOT"] = "O saque mestre está ativo"
L["TIP_MASTERLOOT_INFO"] = "|cffffff78Saqueador Mestre:|r %s |cffffff78Tempo de Negociação:|r %ds (+ %ds por item) |cffffff78Dica de Saque:|r %s |cffffff78Lances:|r %s |cffffff78Votos:|r %s"
L["TIP_MASTERLOOT_START"] = "Torne-se Master Looter ou encontre um"
L["TIP_MASTERLOOT_STOP"] = "Remova mestre saqueador"
L["TIP_MASTERLOOTING"] = "Grupo com mestre saqueador (%d):"
L["TIP_MINIMAP_ICON"] = "|cffffff78Clique com o botão esquerdo:|r Defina a janela de negócios |cffffff78Clique com o botão direito do mouse:|r Mostrar opções"
L["TIP_SUPPRESS_CHAT"] = "|cffffff78Tip:|r Você pode suprimir uma única mensagem de bate-papo clicando no botão oferta/passar."
L["TIP_TEST"] = "Mostrar um teste de rolagem de dados"
L["TIP_VOTES"] = "Votos de:"

-- Options-Home
L["OPT_ACTIONS_WINDOW"] = "Mostrar janela de ações"
L["OPT_ACTIONS_WINDOW_DESC"] = "Mostrar a janela de ações quando houver ações pendentes, por exemplo. quando você ganhou um item e precisa trocar alguém para obtê-lo."
L["OPT_ACTIONS_WINDOW_MOVE"] = "Mover"
L["OPT_ACTIONS_WINDOW_MOVE_DESC"] = "Mova a janela de ações."
L["OPT_ACTIVE_GROUPS"] = "Ativar por tipo de grupo"
L["OPT_ACTIVE_GROUPS_DESC"] = "Ative somente quando estiver em um desses tipos de grupo. |cffffff78Grupo de Guilda:|r Os membros de uma guilda constituem %d%% ou mais do grupo. |cffffff78Grupo da Comunidade:|r Os membros de uma de suas Comunidades do WoW compõem %d%% ou mais do grupo."
L["OPT_ALLOW_DISENCHANT"] = "Permitir lances \"Desencantar\""
L["OPT_ALLOW_DISENCHANT_DESC"] = "Permita que outros dêem lances \"Desencanto\" em seus próprios itens."
L["OPT_AUTHOR"] = "|cffffd100Autor:|r Shrugal (EU-Mal'Ganis)"
L["OPT_AWARD_SELF"] = "Escolha você mesmo o vencedor de seus itens"
L["OPT_AWARD_SELF_DESC"] = "Escolha por si mesmo quem deve receber seu saque, em vez de deixar o addon escolher alguém aleatoriamente. Isso está sempre ativado quando você é um saqueador mestre."
L["OPT_BID_PUBLIC"] = "Lances públicos"
L["OPT_BID_PUBLIC_DESC"] = "Os lances em seus rolos são públicos, então todos com o addon podem vê-los."
L["OPT_CHILL_MODE"] = "Modo frio"
L["OPT_CHILL_MODE_DESC"] = "A intenção do modo chill é aliviar a pressão de compartilhar o saque, mesmo que isso signifique que as coisas demorem um pouco mais. Se você habilitá-lo, as seguintes coisas mudarão: |cffffff781.|r Os rolos de você não começarão até que você realmente decida compartilhá-los, então você tem o tempo que quiser escolher, e outros usuários de addon não verão seus itens até que você fez. |cffffff782.|r As jogadas de você têm o dobro do tempo de execução normal, ou nenhum tempo de execução se você mesmo escolher os vencedores de seus próprios itens (veja a próxima opção). |cffffff783.|r Rolls de usuários não addon em seu grupo também ficam abertos até que você decida se quer ou não. |cffff0000IMPORTANTE:|r Rolls de outros usuários addon sem modo chill ativo ainda terão um tempo limite normal. Certifique-se de que todos em seu grupo habilitem essa opção se você quiser uma corrida de relaxamento."
L["OPT_COLLECTIONS"] = "Sempre mostre itens colecionáveis ausentes dessas coleções, independentemente das outras regras."
L["OPT_DISENCHANT"] = "Desencantar"
L["OPT_DISENCHANT_DESC"] = "Dê um lance de \"Desencantamento\" em itens que você não pode usar se você tiver a profissão e o proprietário do item permitir."
L["OPT_DONT_SHARE"] = "Não compartilhe o saque."
L["OPT_DONT_SHARE_DESC"] = "Não role no saque dos outros e não compartilhe seu próprio saque. O addon negará as solicitações recebidas para o seu saque (se ativado), e você ainda pode ser masterlooter e membro do conselho de saque."
L["OPT_ENABLE"] = "Habilitar"
L["OPT_ENABLE_DESC"] = "Habilite ou desabilitar o addon"
L["OPT_ENABLE_MODULE_DESC"] = "Habilite ou desabilita este módulo"
L["OPT_ILVL_THRESHOLD"] = "Limite de nível de item"
L["OPT_ILVL_THRESHOLD_DESC"] = "Ignore itens com base em seu nível de item em comparação com o que você equipou atualmente ou em suas malas para o slot. |cffffff78Negative:|r O nível de um item pode ser, no máximo, muito menor que o seu. |cffffff78Positive:|r O nível de um item deve ser pelo menos muito maior que o seu."
L["OPT_ILVL_THRESHOLD_DOUBLE"] = "Limite duplo para..."
L["OPT_ILVL_THRESHOLD_DOUBLE_DESC"] = "Alguns itens devem ter o dobro do valor normal do limite de nível de item, porque os procs etc. podem fazer com que seu valor varie em uma grande quantidade."
L["OPT_ILVL_THRESHOLD_RINGS"] = "Limite duplo para anéis"
L["OPT_ILVL_THRESHOLD_RINGS_DESC"] = "Os anéis devem ter o dobro do limite normal porque seu valor pode variar em grande quantidade devido à falta de estatísticas primárias."
L["OPT_ILVL_THRESHOLD_TRINKETS"] = "Limite duplo para bugigangas"
L["OPT_ILVL_THRESHOLD_TRINKETS_DESC"] = "Bugigangas devem ter o dobro do limite normal porque os efeitos proc podem fazer seu valor variar em grande quantidade."
L["OPT_INFO"] = "Informação"
L["OPT_INFO_DESC"] = "Algumas informações sobre este addon."
L["OPT_ITEM_FILTER"] = "Filtro de itens"
L["OPT_ITEM_FILTER_DESC"] = "Altere em quais itens você deve rolar."
L["OPT_ITEM_FILTER_ENABLE"] = "Ativar regras adicionais"
L["OPT_ITEM_FILTER_ENABLE_DESC"] = "Itens que você não pode usar ou enviar para um alt sempre serão filtrados. Abaixo, você pode definir condições adicionais que os itens devem cumprir para serem mostrados a você."
L["OPT_LVL_THRESHOLD"] = "Limite no nível do caractere"
L["OPT_LVL_THRESHOLD_DESC"] = "Ignore os itens que exigem que o nível do seu personagem seja mais do que isso, muito mais alto do que é atualmente. Defina como -1 para desabilitar este filtro."
L["OPT_MINIMAP_ICON"] = "Mostrar ícone do minimapa"
L["OPT_MINIMAP_ICON_DESC"] = "Mostre ou oculte o ícone do minimapa."
L["OPT_MISSING_PETS"] = "Animais de estimação desaparecidos"
L["OPT_MISSING_TRANSMOG"] = "Aparições de transmog ausentes"
L["OPT_MISSING_TRANSMOG_ITEM"] = "Verifique o item transmog"
L["OPT_MISSING_TRANSMOG_ITEM_DESC"] = "Verifique se você coletou um item específico, e não apenas sua aparência"
L["OPT_ONLY_MASTERLOOT"] = "Mestre saqueador apenas"
L["OPT_ONLY_MASTERLOOT_DESC"] = "Só ative o addon ao usar masterloot (por exemplo, com sua guilda)"
L["OPT_PAWN"] = "Verifique o \"Pawn\""
L["OPT_PAWN_DESC"] = "Opte apenas por itens que são uma atualização de acordo com o addon \"Pawn\"."
L["OPT_ROLL_FRAMES"] = "Mostrar caixas de saque"
L["OPT_ROLL_FRAMES_DESC"] = "Mostre caixas de saque quando alguém receber algo em que você possa se interessar, para que você possa participar."
L["OPT_ROLLS_WINDOW"] = "Mostrar janela do negócio"
L["OPT_ROLLS_WINDOW_DESC"] = "Sempre mostre a janela de negociação (com todos os dados rolados nela) quando alguém receber algo em que você possa estar interessado. Esta opção está sempre ativa se você for um saqueador mestre."
L["OPT_SPECS"] = "Especializações"
L["OPT_SPECS_DESC"] = "Apenas sugere saque para essas especializações de classe."
L["OPT_TRANSLATION"] = "|cffffd100Tradução:|r Shrugal (EU-Mal'Ganis)"
L["OPT_TRANSMOG"] = "Verifique a aparência do transmog"
L["OPT_TRANSMOG_DESC"] = "Opte por itens para os quais você ainda não possui a aparência correspondente."
L["OPT_UI"] = "Interface do usuário"
L["OPT_UI_DESC"] = "Personalize o visual e a sensação de %s ao seu gosto."
L["OPT_VERSION"] = "|cffffd100Versão:|r %s"

-- Options-Masterloot
L["OPT_MASTERLOOT"] = "Saque mestre"
L["OPT_MASTERLOOT_APPROVAL"] = "Aprovação"
L["OPT_MASTERLOOT_APPROVAL_ACCEPT"] = "Aceite automaticamente o saqueador mestre"
L["OPT_MASTERLOOT_APPROVAL_ACCEPT_DESC"] = "Aceite automaticamente pedidos de masterlooter desses jogadores."
L["OPT_MASTERLOOT_APPROVAL_ALLOW"] = "Permitir se tornar mestre saqueador"
L["OPT_MASTERLOOT_APPROVAL_ALLOW_ALL"] = "Permitir a todos"
L["OPT_MASTERLOOT_APPROVAL_ALLOW_ALL_DESC"] = "|cffff0000WARNING:|r Isso permitirá que todos peçam para se tornar seu masterlooter e potencialmente enganá-lo para doar seu saque! Ative-o apenas se souber o que está fazendo."
L["OPT_MASTERLOOT_APPROVAL_ALLOW_DESC"] = "Escolha quem pode solicitar para se tornar seu masterlooter. Você ainda receberá uma mensagem pop-up pedindo para confirmá-la, para que possa recusar uma solicitação de masterlooter quando ela acontecer. |cffffff78Grupo da Guilda:|r Alguém de uma guilda cujos membros compõem %d%% ou mais do grupo."
L["OPT_MASTERLOOT_APPROVAL_DESC"] = "Aqui você pode definir quem pode se tornar seu mestre saqueador."
L["OPT_MASTERLOOT_APPROVAL_WHITELIST"] = "Lista de permissões de saqueadores mestres"
L["OPT_MASTERLOOT_APPROVAL_WHITELIST_DESC"] = "Você também pode nomear jogadores específicos que devem ser capazes de se tornar seu masterlooter. Separe vários nomes com espaços ou vírgulas."
L["OPT_MASTERLOOT_AWARD"] = "Premiação"
L["OPT_MASTERLOOT_BIDS_AND_VOTES"] = "Lances e votos "
L["OPT_MASTERLOOT_CLUB"] = "Guilda/Comunidade"
L["OPT_MASTERLOOT_CLUB_DESC"] = "Selecione as configurações guilda/comunidade para importar/exportar."
L["OPT_MASTERLOOT_COUNCIL"] = "Conselho"
L["OPT_MASTERLOOT_COUNCIL_CLUB_RANK"] = "Classificação da guilda/comunidade do Conselho"
L["OPT_MASTERLOOT_COUNCIL_CLUB_RANK_DESC"] = "Adicione membros desta guilda/comunidade ao seu conselho, além das opções acima."
L["OPT_MASTERLOOT_COUNCIL_DESC"] = "Os jogadores do seu conselho de saques podem votar em quem deve receber o saque."
L["OPT_MASTERLOOT_COUNCIL_ROLES"] = "Funções do conselho"
L["OPT_MASTERLOOT_COUNCIL_ROLES_DESC"] = "Quais jogadores devem automaticamente se tornar parte do seu conselho."
L["OPT_MASTERLOOT_COUNCIL_WHITELIST"] = "Lista de permissões do Conselho"
L["OPT_MASTERLOOT_COUNCIL_WHITELIST_DESC"] = "Você também pode nomear jogadores específicos para estar em seu conselho. Separe vários nomes com espaços ou vírgulas."
L["OPT_MASTERLOOT_DESC"] = "Quando você (ou outra pessoa) se tornar um masterlooter, todos os saques serão distribuídos por essa pessoa. Você receberá um aviso sobre os itens que você ganhou ou quem ganhou seus itens, para que você possa trocá-los com a pessoa certa."
L["OPT_MASTERLOOT_EXPORT_DONE"] = "As configurações do Masterloot foram exportadas com sucesso para <%s>."
L["OPT_MASTERLOOT_EXPORT_GUILD_ONLY"] = "Por favor, substitua as informações atuais da comunidade por este texto, pois substituí-la automaticamente só é possível para guildas."
L["OPT_MASTERLOOT_EXPORT_NO_PRIV"] = "Por favor, peça a um líder para substituir as informações da guilda por este texto, porque você não tem o direito de fazê-lo você mesmo."
L["OPT_MASTERLOOT_EXPORT_WINDOW"] = "Exportar configurações de masterloot"
L["OPT_MASTERLOOT_LOAD"] = "Carregar"
L["OPT_MASTERLOOT_LOAD_DESC"] = "Carregue as configurações de saque mestre da descrição da sua guilda/comunidade."
L["OPT_MASTERLOOT_RULES"] = "Regras"
L["OPT_MASTERLOOT_RULES_ALLOW_DISENCHANT_DESC"] = "Permita que os membros do grupo rolem \"Desencantar\" em itens."
L["OPT_MASTERLOOT_RULES_ALLOW_KEEP"] = "Permitir manter o saque"
L["OPT_MASTERLOOT_RULES_ALLOW_KEEP_DESC"] = "Permita que os donos de itens mantenham seus saques e só os distribuam se optarem por não mantê-los."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD"] = "Saque de prêmios automaticamente"
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_DESC"] = "Que o addon decida quem deve receber o saque, com base em fatores como votos do conselho, licitações e ilvl equipado."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT"] = "Tempo de premiação automática (base)"
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_DESC"] = "O tempo base para esperar antes de conceder o saque automático, para que você tenha tempo para coletar votos e talvez decidir por si mesmo."
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_PER_ITEM"] = "Tempo de prêmio automático (por item)"
L["OPT_MASTERLOOT_RULES_AUTO_AWARD_TIMEOUT_PER_ITEM_DESC"] = "Será adicionado ao tempo base de premiação automática para cada item que caiu."
L["OPT_MASTERLOOT_RULES_BID_PUBLIC"] = "Lances públicos"
L["OPT_MASTERLOOT_RULES_BID_PUBLIC_DESC"] = "Você pode tornar os lances públicos, para que todos possam ver quem lance o quê."
L["OPT_MASTERLOOT_RULES_DESC"] = "Essas regras se aplicam a todos quando você é o saqueador mestre"
L["OPT_MASTERLOOT_RULES_DISENCHANTER"] = "Desencantador"
L["OPT_MASTERLOOT_RULES_DISENCHANTER_DESC"] = "Dê loot que ninguém quer a esses jogadores para desencantá-los. Separe vários nomes com espaços ou vírgulas."
L["OPT_MASTERLOOT_RULES_GREED_ANSWERS"] = "Respostas personalizadas de 'ganância'"
L["OPT_MASTERLOOT_RULES_GREED_ANSWERS_DESC"] = "Especifique até 9 respostas personalizadas ao rodar 'Ganância', com prioridade decrescente. Você também pode inserir '%s' em si para diminuir sua prioridade abaixo das respostas anteriores. Separe várias entradas com com as vírgulas. Eles podem ser acessados clicando com o botão 'Ganância' ao rolar no saque."
L["OPT_MASTERLOOT_RULES_NEED_ANSWERS"] = "Respostas personalizadas 'Precisar'"
L["OPT_MASTERLOOT_RULES_NEED_ANSWERS_DESC"] = "Especifique até 9 respostas personalizadas ao rodar 'Necessidade', com prioridade decrescente. Você também pode inserir '%s' em si para diminuir sua prioridade abaixo das respostas anteriores. Separe várias entradas com com as vírgulas. Eles podem ser acessados clicando com o botão 'Necessidade' ao rolar no saque."
L["OPT_MASTERLOOT_RULES_START_ALL"] = "Começar rolos para todos"
L["OPT_MASTERLOOT_RULES_START_ALL_DESC"] = "Inicie rolos para todos os itens adequados que os membros do grupo sem o saque de addon."
L["OPT_MASTERLOOT_RULES_START_LIMIT"] = "Limite de rolos simultâneos"
L["OPT_MASTERLOOT_RULES_START_LIMIT_DESC"] = "Número máximo de rolos para rodar simultaneamente. Os rolos subsequentes começarão automaticamente após o término dos anteriores, mesmo que você opte por iniciar os rolos manualmente. Desabilite definindo-o para 0."
L["OPT_MASTERLOOT_RULES_START_MANUALLY"] = "Iniciar rolos manualmente"
L["OPT_MASTERLOOT_RULES_START_MANUALLY_DESC"] = "Não inicie novos rolos automaticamente, mas manualmente através da janela dos rolos principais."
L["OPT_MASTERLOOT_RULES_START_WHISPER"] = "Comece a rolar por sussurro"
L["OPT_MASTERLOOT_RULES_START_WHISPER_DESC"] = "Permita que os membros do grupo sem o complemento sussurrem um link de item e a palavra \"%s\" para fazer você iniciar um rolo para seus itens."
L["OPT_MASTERLOOT_RULES_TIMEOUT_BASE"] = "Tempo de rolagem (base)"
L["OPT_MASTERLOOT_RULES_TIMEOUT_BASE_DESC"] = "O tempo base de execução para rolos, independentemente de quantos itens caíram."
L["OPT_MASTERLOOT_RULES_TIMEOUT_PER_ITEM"] = "Tempo de rolagem (por item)"
L["OPT_MASTERLOOT_RULES_TIMEOUT_PER_ITEM_DESC"] = "Será adicionado ao tempo de execução do rolo base para cada item que caiu."
L["OPT_MASTERLOOT_RULES_VOTE_PUBLIC"] = "Voto público"
L["OPT_MASTERLOOT_RULES_VOTE_PUBLIC_DESC"] = "Você pode tornar públicos os votos do conselho, para que todos possam ver quem tem quantos votos"
L["OPT_MASTERLOOT_SAVE"] = "Salvar"
L["OPT_MASTERLOOT_SAVE_DESC"] = "Salve suas configurações de masterloot atuais na descrição da sua guilda/comunidade."

-- Options-Messages
L["OPT_CUSTOM_MESSAGES"] = "Mensagens personalizadas"
L["OPT_CUSTOM_MESSAGES_DEFAULT"] = "Idioma padrão (%s)"
L["OPT_CUSTOM_MESSAGES_DEFAULT_DESC"] = "Essas mensagens serão usadas quando o destinatário falar %s ou algo diferente do idioma padrão do seu reino (%s)."
L["OPT_CUSTOM_MESSAGES_DESC"] = "Você pode reordenar espaços reservados (|cffffff78%s|r, |cffffff78%d|r) adicionando sua posição e um sinal $ no meio, então, por exemplo, |cffffff78%2$s|r em vez de |cffffff78%s|r para o 2º espaço reservado. Consulte as dicas de ferramentas para obter detalhes."
L["OPT_CUSTOM_MESSAGES_LOCALIZED"] = "Idioma do reino (%s)"
L["OPT_CUSTOM_MESSAGES_LOCALIZED_DESC"] = "Essas mensagens serão usadas quando o destinatário falar a linguagem padrão do seu reino (%s)."
L["OPT_ECHO"] = "Informações de bate-papo"
L["OPT_ECHO_DEBUG"] = "Debug"
L["OPT_ECHO_DESC"] = "Quanta informação você quer ver do addon no chat? |cffffff78None:|r Nenhuma informação no chat. |cffffff78Error:|r Apenas mensagens de erro. |cffffff78Info:|r Erros e informações úteis sobre as quais você provavelmente deseja agir. |cffffff78Detalhado:|r Receba avisos sobre praticamente qualquer coisa que o addon faça. |cffffff78Debug:|r Igual ao Detalhado, mais informações de depuração adicionais."
L["OPT_ECHO_ERROR"] = "Erro"
L["OPT_ECHO_INFO"] = "Informação"
L["OPT_ECHO_NONE"] = "Nenhum"
L["OPT_ECHO_VERBOSE"] = "Detalhado"
L["OPT_GROUPCHAT"] = "Bate-papo em grupo"
L["OPT_GROUPCHAT_ANNOUNCE"] = "Anuncie rolos e vencedores"
L["OPT_GROUPCHAT_ANNOUNCE_DESC"] = "Anuncie seus rolos e vencedores de seus rolos no bate-papo em grupo."
L["OPT_GROUPCHAT_CONCISE"] = "Anúncios concisos, se possível"
L["OPT_GROUPCHAT_CONCISE_DESC"] = "Use anúncios mais concisos quando os chefes soltarem apenas um item de cada vez (por exemplo, em masmorras de 5 homens). O addon postará links de itens no chat, e os membros do grupo podem apenas responder algo como \"%s\", \"%s\" ou \"+\" para rolar sobre eles."
L["OPT_GROUPCHAT_DESC"] = "Altere se o addon postará ou não as coisas no bate-papo em grupo."
L["OPT_GROUPCHAT_GROUP_TYPE"] = "Anunciar por tipo de grupo"
L["OPT_GROUPCHAT_GROUP_TYPE_DESC"] = "Poste no bate-papo em grupo somente se você estiver em um desses tipos de grupo. |cffffff78Grupo de Guilda:|r Os membros de uma guilda constituem %d%% ou mais do grupo. |cffffff78Grupo da Comunidade:|r Os membros de uma de suas Comunidades do WoW compõem %d%% ou mais do grupo."
L["OPT_GROUPCHAT_ROLL"] = "Role no saque no bate-papo"
L["OPT_GROUPCHAT_ROLL_DESC"] = "Role no saque desejado (/roll) se outros postarem links no bate-papo em grupo."
L["OPT_MESSAGES"] = "Mensagens"
L["OPT_MSG_BID"] = "Pedir saque: Variante %d"
L["OPT_MSG_BID_DESC"] = "1: Link do item"
L["OPT_MSG_ROLL_ANSWER_AMBIGUOUS"] = "Resposta: Envie-me o link do item"
L["OPT_MSG_ROLL_ANSWER_AMBIGUOUS_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_BID"] = "Resposta: Lance registrado"
L["OPT_MSG_ROLL_ANSWER_BID_DESC"] = "1: Link do item "
L["OPT_MSG_ROLL_ANSWER_NO_OTHER"] = "Resposta: Eu dei para outra pessoa"
L["OPT_MSG_ROLL_ANSWER_NO_OTHER_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_NO_SELF"] = "Resposta: Eu preciso dele eu mesmo"
L["OPT_MSG_ROLL_ANSWER_NO_SELF_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_NOT_TRADABLE"] = "Resposta: Não é negociável"
L["OPT_MSG_ROLL_ANSWER_NOT_TRADABLE_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_STARTED"] = "Resposta: Eu comecei um rolo para você"
L["OPT_MSG_ROLL_ANSWER_STARTED_DESC"] = "Depois que alguém sem o addon sussurrou-nos para começar um rolo para eles enquanto era masterlooter."
L["OPT_MSG_ROLL_ANSWER_YES"] = "Resposta: Você pode tê-lo"
L["OPT_MSG_ROLL_ANSWER_YES_DESC"] = ""
L["OPT_MSG_ROLL_ANSWER_YES_MASTERLOOT"] = "Resposta: Você pode tê-lo (como saqueador mestre)"
L["OPT_MSG_ROLL_ANSWER_YES_MASTERLOOT_DESC"] = "1: Proprietário de itens"
L["OPT_MSG_ROLL_DISENCHANT"] = "Anunciando um desencanto"
L["OPT_MSG_ROLL_DISENCHANT_DESC"] = "1: Desencantador 2: Link de item"
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT"] = "Anunciando um desencantador (como saqueador mestre)"
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_DESC"] = "1: Desencantador 2: Link do item 3: Proprietário do item 4: ele/ela"
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_OWN"] = "Announcing an item owner disenchants his/her item (as masterlooter)"
L["OPT_MSG_ROLL_DISENCHANT_MASTERLOOT_OWN_DESC"] = "1: Proprietário do item 2: Link do item"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER"] = "Sussurrando o desencantador"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_DESC"] = "1: Link do item"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT"] = "Sussurrando o desencantador (como saqueador mestre)"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_DESC"] = "1: Link do item 2: Proprietário do item 3: ele/ela"
--[[Translation missing --]]
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN"] = "Whispering an item owner to disenchant his/her item (as masterlooter)"
L["OPT_MSG_ROLL_DISENCHANT_WHISPER_MASTERLOOT_OWN_DESC"] = "1: Link do item"
L["OPT_MSG_ROLL_START"] = "Anunciando um novo rolo"
L["OPT_MSG_ROLL_START_CONCISE"] = "Anunciando um novo rolo (conciso)"
L["OPT_MSG_ROLL_START_CONCISE_DESC"] = "1: Link do item"
L["OPT_MSG_ROLL_START_DESC"] = "1: Link do item 2: Número do rolo"
L["OPT_MSG_ROLL_START_MASTERLOOT"] = "Anunciando um novo rolo (como masterlooter)"
L["OPT_MSG_ROLL_START_MASTERLOOT_DESC"] = "1: Link do item 2: Proprietário do item 3: Número do rolo"
L["OPT_MSG_ROLL_WINNER"] = "Anunciando um vencedor de rolo"
L["OPT_MSG_ROLL_WINNER_CONCISE"] = "Anunciando um vencedor de rolo (conciso)"
L["OPT_MSG_ROLL_WINNER_CONCISE_DESC"] = "1: Vencedor"
L["OPT_MSG_ROLL_WINNER_DESC"] = "1: Vencedor 2: Link do item"
L["OPT_MSG_ROLL_WINNER_MASTERLOOT"] = "Anunciando um vencedor de rolo (como saqueador mestre)"
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_DESC"] = "1: Vencedor 2: Link do item 3: Proprietário do item 4: ele/ela"
--[[Translation missing --]]
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_OWN"] = "Announcing an item owner keeps his/her item (as masterlooter)"
L["OPT_MSG_ROLL_WINNER_MASTERLOOT_OWN_DESC"] = "1: Proprietário do item 2: Link do item"
L["OPT_MSG_ROLL_WINNER_WHISPER"] = "Sussurrando o vencedor do rolo"
L["OPT_MSG_ROLL_WINNER_WHISPER_CONCISE"] = "Sussurrando o vencedor do rolo (conciso)"
L["OPT_MSG_ROLL_WINNER_WHISPER_CONCISE_DESC"] = ""
L["OPT_MSG_ROLL_WINNER_WHISPER_DESC"] = "1: Link de item"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT"] = "Sussurrando o vencedor do rolo (como masterlooter)"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_DESC"] = "1: Link do item 2: Proprietário do item 3: ele/ela"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN"] = "Sussurrando um proprietário de item para manter seu item (como saqueador mestre)"
L["OPT_MSG_ROLL_WINNER_WHISPER_MASTERLOOT_OWN_DESC"] = "1: Link de item"
L["OPT_SHOULD_CHAT"] = "Habilitar/Desativar"
L["OPT_SHOULD_CHAT_DESC"] = "Defina quando o addon será postado no bate-papo de grupo/invasão e sussurrei outros jogadores."
L["OPT_WHISPER"] = "Conversa de sussurros"
L["OPT_WHISPER_ANSWER"] = "Atender solicitações"
L["OPT_WHISPER_ANSWER_DESC"] = "Deixe o addon responder sussurros dos membros do grupo sobre itens que você saqueou."
L["OPT_WHISPER_ASK"] = "Peça para saquear"
L["OPT_WHISPER_ASK_DESC"] = "Sussurre os outros se eles tiverem saques que você quer."
L["OPT_WHISPER_ASK_VARIANTS"] = "Habilitar variantes de perguntas"
L["OPT_WHISPER_ASK_VARIANTS_DESC"] = "Use linhas diferentes (veja abaixo) ao pedir o saque, para torná-lo menos repetitivo."
L["OPT_WHISPER_DESC"] = "Altere se o addon sussurrará ou não outros jogadores e/ou responderá mensagens recebidas."
L["OPT_WHISPER_GROUP"] = "Sussurro por tipo de grupo"
L["OPT_WHISPER_GROUP_DESC"] = "Sussurre os outros se eles tiverem saques que você quer, dependendo do tipo de grupo em que você está atualmente."
L["OPT_WHISPER_GROUP_TYPE"] = "Pergunte por tipo de grupo"
L["OPT_WHISPER_GROUP_TYPE_DESC"] = "Peça loot apenas se você estiver em um desses tipos de grupo. |cffffff78Grupo da Guilda:|r Os membros da guilda são %d%% ou mais do grupo. |cffffff78Grupo da comunidade:|r Os membros de uma de suas comunidades do WoW são %d%% ou mais do grupo."
L["OPT_WHISPER_SUPPRESS"] = "Suprimir pedidos"
L["OPT_WHISPER_SUPPRESS_DESC"] = "Suprima as mensagens de sussurro recebidas dos jogadores elegíveis ao dar seu saque."
L["OPT_WHISPER_TARGET"] = "Pergunte pelo alvo"
L["OPT_WHISPER_TARGET_DESC"] = "Peça loot dependendo se o alvo está em sua guilda, em uma de suas Comunidades WoW ou em sua lista de amigos."

-- Plugins-EPGP
L["EPGP"] = "EPGP"
L["EPGP_CREDIT_GP"] = "Crédito %d GP para <%s> para %s."
L["EPGP_EP"] = "EP"
L["EPGP_ERROR_CREDIT_GP_FAILED"] = "Crédito %d GP para <%s> por %s falhou!"
L["EPGP_GP"] = "GP"
L["EPGP_OPT_AWARD_BEFORE"] = "Precedência premiada"
L["EPGP_OPT_AWARD_BEFORE_DESC"] = "Escolha antes de qual método de premiação padrão o valor EPGP PR deve ser considerado ao determinar um vencedor."
L["EPGP_OPT_BID_WEIGHTS"] = "Pesos do GP de Lance"
L["EPGP_OPT_BID_WEIGHTS_DESC"] = "Atribua diferentes pesos para rodar lances. Os GPs que o ganhador recebe são multiplicados por esse valor, e também podem ser 0 ou negativos."
L["EPGP_OPT_DESC"] = "Use o EPGP para sua distribuição de saques quando o modo masterloot estiver ativo. Isso inclui a exibição e classificação pelo valor de RP do jogador, bem como creditar GP quando o saque é concedido."
L["EPGP_OPT_ONLY_GUILD_RAID"] = "Só em ataques de guildas"
L["EPGP_OPT_ONLY_GUILD_RAID_DESC"] = "Só ativar quando em um ataque e pelo menos %d% do grupo são de sua guilda."
L["EPGP_OPT_WARNING_NO_ADDON"] = "|cffff0000WARNING:|r Você precisa do addon \"EPGP Next\" instalado e ativado para que este módulo funcione."
L["EPGP_OPT_WARNING_NO_OFFICER"] = "|cffff0000AVISO:|r Você não tem permissão para editar notas de oficial em sua guilda, então EPGP não poderá creditar GP por saque quando você for o masterlooter. "
L["EPGP_PR"] = "PR"

-- Roll
L["BID_CHAT"] = "Pedindo %s para %s -> %s."
L["BID_MAX_WHISPERS"] = "Não pedir %s para %s, porque os jogadores %d do seu grupo já pediram ->%s."
L["BID_NO_CHAT"] = "Não posso pedir ou anunciar rolo para %s."
L["BID_NO_CHAT_ADDONS"] = "Não anunciará rolo para %s porque todo mundo usa addons de loot."
L["BID_NO_CHAT_ANNOUNCE"] = "Não anunciará a rolagem de %s porque está desabilitada."
L["BID_NO_CHAT_ASK"] = "O sussurro está desabilitado, você precisa perguntar para o %s por %s por si mesmo -> %s."
L["BID_NO_CHAT_CLUB"] = "O sussurro está desabilitado, você precisa perguntar para o %s por %s por si mesmo -> %s."
L["BID_NO_CHAT_DND"] = "Não pedir %s para %s porque tem DND habilitado -> %s."
L["BID_NO_CHAT_FRIEND"] = "O sussurro está desabilitado, você precisa perguntar para o %s por %s por si mesmo -> %s."
L["BID_NO_CHAT_GRP"] = "Não anunciará rolo para %s porque é um grupo \"%s\"."
L["BID_NO_CHAT_GRP_ASK"] = "Não pedirá %s por %s porque é um grupo \"%s\". ->%s"
L["BID_NO_CHAT_GUILD"] = "O sussurro está desabilitado, você precisa perguntar para o %s por %s por si mesmo -> %s."
L["BID_NO_CHAT_OTHER"] = "O sussurro está desabilitado, você precisa perguntar para o %s por %s por si mesmo -> %s."
L["BID_NO_CHAT_SELF"] = "Não pedir %s para %s porque é você mesmo -> %s."
L["BID_NO_CHAT_TRACKING"] = "Não pedir %s para %s porque também usa um addon de saque -> %s."
L["BID_PASS"] = "Passando %s de %s."
L["BID_START"] = "Licitação com %q para %s de %s."
L["MASTERLOOTER_OTHER"] = "%s agora é seu saqueador mestre."
L["MASTERLOOTER_REJECT"] = "%s quer se tornar seu saqueador mestre, mas precisa ser permitido nas opções de \"Inicialização Mestre\"."
L["MASTERLOOTER_SELF"] = "Você agora é o saqueador mestre."
L["ROLL_AWARD_BIDS"] = "Lances"
L["ROLL_AWARD_RANDOM"] = "Aleatório"
L["ROLL_AWARD_ROLLS"] = "Resultados de rolagem de dados"
L["ROLL_AWARD_VOTES"] = "Votos"
L["ROLL_AWARDED"] = "Concedido"
L["ROLL_AWARDING"] = "Premiando"
L["ROLL_CANCEL"] = "Cancelando lance para %s de %s."
L["ROLL_END"] = "Lance final para %s de %s."
L["ROLL_IGNORING_BID"] = "Ignorando lance de %s por %s, porque você conversou antes -> Lance: %s ou %s."
L["ROLL_LIST_EMPTY"] = "Os lances ativos serão exibidos aqui"
L["ROLL_START"] = "Iniciando lances para %s de %s."
L["ROLL_STATUS_0"] = "Pendente"
L["ROLL_STATUS_1"] = "Executando"
L["ROLL_STATUS_-1"] = "Cancelado"
L["ROLL_STATUS_2"] = "Terminado"
L["ROLL_TRADED"] = "Negociado"
L["ROLL_WHISPER_SUPPRESSED"] = "Lance de %s para %s -> %s / %s."
L["ROLL_WINNER_MASTERLOOT"] = "%s ganhou %s de %s"
L["ROLL_WINNER_OTHER"] = "%s ganhou %s de você -> %s."
L["ROLL_WINNER_OWN"] = "Você ganhou seus próprios %s."
L["ROLL_WINNER_SELF"] = "Você ganhou %s de %s -> %s."
L["TRADE_CANCEL"] = "Cancelando o comércio com %s."
L["TRADE_START"] = "Começando a negociar com %s."

-- Globals
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NO_ADDON"] = "O proprietário deste item não usa o addon PersoLootRoll."
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NO_DISENCHANT"] = "O proprietário deste item não permitiu lances \"Desencantar\"."
_G["LOOT_ROLL_INELIGIBLE_REASONPLR_NOT_ENCHANTER"] = "Seu personagem não tem a profissão \"Encantamento\""


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