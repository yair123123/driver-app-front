// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get back => 'de volta';

  @override
  String get saveChangesTitle => 'Salvar alterações';

  @override
  String get channels_section_title => 'Novidade no aplicativo';

  @override
  String get go_to_groups_page => 'Vá para a página dos grupos';

  @override
  String sharedViaApp(Object appName) {
    return '*Shared via $appName*';
  }

  @override
  String downloadAndroid(Object url) {
    return 'Download on Android 👈 $url';
  }

  @override
  String downloadIOS(Object url) {
    return 'Download on iOS 👈 $url';
  }

  @override
  String get shareMessageTitle => 'Share message';

  @override
  String get shareMessageSubtitle => 'Choose how to share this message';

  @override
  String get shareMessageOptionLinkTitle => 'Share link';

  @override
  String get shareMessageOptionLinkSubtitle => 'Send a direct link to the message';

  @override
  String get shareMessageOptionContentTitle => 'Share text and media';

  @override
  String get shareMessageOptionContentSubtitle => 'Send the message text and media';

  @override
  String get channels_section_description => 'Uma nova área para canais de WhatsApp e Telegram com vídeos, imagens e atualizações – todo o conteúdo mais interessante em um só lugar.';

  @override
  String get newMessages => 'Novas mensagens';

  @override
  String get addArea => 'Adicionar área';

  @override
  String get removeArea => 'Remover área';

  @override
  String removeAreaConfirmContent(String area) {
    return 'Tem certeza de que deseja remover $area das áreas selecionadas?';
  }

  @override
  String get channels => 'Canais';

  @override
  String get contactUsSuccessTitle => 'Enviado com sucesso ✅';

  @override
  String get contactUsSuccessMessage => 'Obrigado! Recebemos sua mensagem e retornaremos o mais breve possível.';

  @override
  String get selectCountry => 'Selecione o país';

  @override
  String get areaManagmentTitle => 'Área de consumo de notícias';

  @override
  String get areaManagmentSubtitle => 'Meus países';

  @override
  String get sharedFromApp => 'Compartilhado de';

  @override
  String get textCopied => 'Texto copiado';

  @override
  String get queryIsEmpty => 'A consulta está vazia';

  @override
  String get queryIsEmptyTitle => 'A pesquisa está vazia.';

  @override
  String get areaWereRemoved => 'A área foi removida com sucesso';

  @override
  String get areaWereAdded => 'A área foi adicionada com sucesso';

  @override
  String get saveChangesMessage => 'Deseja salvar as alterações feitas?';

  @override
  String get busyLandingTitle => 'Estamos quase pousando…';

  @override
  String get busyLandingSubtitle => 'Estamos preparando suas novidades';

  @override
  String get changeCountryTitle => 'Para qual país devemos mudar?';

  @override
  String get changeCountrySubtitle => 'Ao escolher um país, todo o conteúdo do aplicativo será atualizado de acordo com sua seleção.';

  @override
  String get dailySummary => 'Resumo diário';

  @override
  String get lastUpdated => 'Última atualização';

  @override
  String get saveChangesSubtitle => 'Deseja salvar as alterações feitas?';

  @override
  String get readMore => 'Leia mais';

  @override
  String get searchPageNoResultsPrefix => 'Nenhum resultado encontrado para ';

  @override
  String get searchPageNoResultsSuffix => '';

  @override
  String get searchPageNoResultsForThisCategoryPrefix => 'Nenhum resultado encontrado para \n';

  @override
  String get searchPageNoResultsForThisCategorySuffix => ' nesta categoria';

  @override
  String get toPowerOn => 'para ligar';

  @override
  String get notificationsOffTitle => 'Notificações desativadas';

  @override
  String get notificationsOffSubtitle => 'Parece que o acesso às notificações ainda não foi ativado.';

  @override
  String get newArticles => 'Novos artigos';

  @override
  String get home => 'casa';

  @override
  String get changesApplyOnNextLaunch => 'As alterações serão aplicadas na próxima inicialização do aplicativo.';

  @override
  String get enable => 'Habilitar';

  @override
  String get stayUpdatedWithLatestNews => 'Fique atualizado com as últimas notícias';

  @override
  String get enableNotifications => 'Habilitar notificações';

  @override
  String get error_details => 'Detalhes do erro';

  @override
  String get error_title => 'Ops, algo errado';

  @override
  String get freeSearch => 'Pesquisa Gratuita';

  @override
  String get aiPageSubtitle => 'Este recurso ainda está em desenvolvimento \n vale a pena conferir em breve.';

  @override
  String get topicsSelectionTitle => 'Seleção de tópicos de notícias';

  @override
  String get groups => 'Grupos';

  @override
  String get aiPageTitle => 'Em breve: você poderá conversar com nossa IA sobre as novidades!';

  @override
  String get topicsSelectionSubtitle => 'Escolha tópicos ou subtópicos que você gostaria de ver em seu feed. Você sempre pode alterá-los aqui.';

  @override
  String get failedToLoadTopics => 'Falha ao carregar tópicos';

  @override
  String get settingsNote => 'Você pode editar as configurações a qualquer momento';

  @override
  String get lang => 'Idioma';

  @override
  String get failed_to_load_data => 'Não foi possível carregar os dados. Verifique sua conexão com a Internet e tente novamente.';

  @override
  String get changeLang => 'Alterar idioma';

  @override
  String get notNow => 'Agora não';

  @override
  String get notificationsPermissionRationale => 'A ativação de notificações permite que você se mantenha atualizado com notícias importantes, atualizações urgentes e conteúdo personalizado – para que você nunca perca nada que seja importante para você.';

  @override
  String get skipToSuggestedContent => 'Pule para o conteúdo que escolhemos para você';

  @override
  String get lets_go => 'Vamos';

  @override
  String get keepGoing => 'Continue!';

  @override
  String get skip => 'Pular';

  @override
  String get save => 'Salvar';

  @override
  String get next => 'Próximo';

  @override
  String get pleaseSelectLanguage => 'selecione um idioma';

  @override
  String get pleaseSelectAtLeastOneTopic => 'Selecione pelo menos um tópico';

  @override
  String get notificationTitle => 'Quer ficar atualizado?';

  @override
  String get search => 'Pesquisar';

  @override
  String get searchPageEmptySubtitle => 'O que você gostaria de pesquisar?';

  @override
  String get searchPageEmptyTitle => 'Digite uma palavra-chave ou tópico para pesquisar';

  @override
  String get notificationSubTitle => 'Você pode ativar notificações pop-up para qualquer tópico de seu interesse.';

  @override
  String get whatIsInteresting => 'O que lhe interessa';

  @override
  String get subTextWhatIsInteresting => 'Para enviar apenas o que é realmente relevante, vamos primeiro marcar o que lhe interessa.';

  @override
  String get getStarted => 'Comece';

  @override
  String get try_again => 'Tente novamente';

  @override
  String get allow => 'Permitir';

  @override
  String get noPermissions => 'Sem permissões';

  @override
  String get solution_suggestions => 'Sugestões de solução';

  @override
  String get allowNotifications => 'Permitir notificações';

  @override
  String get notifications => 'Notificações';

  @override
  String get notificationsEnabled => 'Notificações ativadas';

  @override
  String get notificationsDenied => 'Notificações negadas';

  @override
  String get pleaseWait => 'Por favor, espere';

  @override
  String get all => 'tudo';

  @override
  String get cancel => 'Cancelar';

  @override
  String get openSettings => 'Abra Configurações';

  @override
  String get subTextNotifications => 'Você pode ativar notificações pop-up para cada tópico de seu interesse.';

  @override
  String get troubleshooting_tips => 'Dicas para solução de problemas';

  @override
  String get welcome => 'Bem vindo ao app de notícias, personalizado só para você!';

  @override
  String get continueReading => 'Continuar lendo';

  @override
  String get share => 'Compartilhar';

  @override
  String get area => 'Área';

  @override
  String get chooseYourAreaHint => 'Escolha sua área para receber atualizações de notícias localizadas';

  @override
  String get chooseYourAreaHintUnused => 'Escolha a região de notícias desejada.\nDentro do aplicativo, você também pode selecionar países adicionais.';

  @override
  String get chooseYourLangHint => 'Escolha o seu idioma, você sempre pode alterá-lo mais tarde.';

  @override
  String get topics => 'Tópicos';

  @override
  String get chooseTopicsHint => 'Escolha os temas que lhe interessam, você sempre pode alterá-los nas configurações.';

  @override
  String get categories => 'Categorias';

  @override
  String get manageNotifications => 'Gerenciar notificações';

  @override
  String get languageAndRegion => 'Idioma e região';

  @override
  String get about => 'Sobre';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get contactUs => 'Contate-nos';

  @override
  String get networkStatusPartialTitle => 'Problema no servidor';

  @override
  String get networkStatusOfflineTitle => 'Sem conexão com a internet';

  @override
  String get networkStatusPartialMessage => 'Conseguimos acessar a Internet, mas não o servidor.\\nTente novamente em alguns instantes.';

  @override
  String get networkStatusOfflineMessage => 'Sem conexão com a internet. Estamos mostrando artigos mais antigos; conecte-se à internet para ver as últimas histórias.';

  @override
  String get networkStatusInternetLabel => 'Conexão com a Internet';

  @override
  String get networkStatusServerLabel => 'Conexão do servidor';

  @override
  String get networkStatusDismiss => 'Entendi';

  @override
  String get networkStatusConnected => 'Conectado';

  @override
  String get networkStatusDisconnected => 'Não conectado';

  @override
  String get offlineMode => 'Modo off-line';

  @override
  String get changesSavedSuccessfully => 'Alterações salvas com sucesso';

  @override
  String get unableToSaveChanges => 'Não foi possível salvar as alterações';

  @override
  String get dismissibleNoticeNotificationsTitle => 'Notificações pop-up';

  @override
  String get dismissibleNoticeNotificationsSubtitle => 'Personalize seus alertas facilmente. Ative ou desative notificações push para qualquer tópico de seu interesse.';

  @override
  String get dismissibleNoticeLangAndAreaTitle => 'Atualização a caminho!';

  @override
  String get dismissibleNoticeLangAndAreaSubtitle => 'Em breve você poderá escolher de quais regiões do mundo deseja receber notícias e atualizações.';

  @override
  String get info => 'Informações';

  @override
  String get success => 'Sucesso';

  @override
  String get saveChanges => 'Salvar alterações';

  @override
  String get saveChangesConfirmation => 'Quer salvar suas alterações?';

  @override
  String get confirm => 'Confirmar';

  @override
  String get unableToOpenReference => 'Não foi possível abrir esta referência';

  @override
  String searchPageNoResults(String query) {
    return 'Nenhum resultado encontrado para \"$query\"';
  }

  @override
  String searchPageNoResultsForThisCategory(String query) {
    return 'Não foram encontrados resultados para \"$query\" nesta categoria';
  }

  @override
  String get newsTopics => 'Tópicos de notícias';

  @override
  String get errorNoInternet => 'Verifique sua conexão e tente novamente.';

  @override
  String get errorNoInternetTitle => 'Sem conexão com a internet.';

  @override
  String get errorTimeout => 'A solicitação expirou. Por favor, tente novamente mais tarde.';

  @override
  String get errorTimeoutTitle => 'A solicitação expirou.';

  @override
  String get errorServer => 'Ocorreu um erro no servidor. Por favor, tente novamente.';

  @override
  String get errorServerTitle => 'Erro no servidor.';

  @override
  String get errorUnauthorized => 'Você não está autorizado. Faça login e tente novamente.';

  @override
  String get errorUnauthorizedTitle => 'Não autorizado.';

  @override
  String get errorForbidden => 'Você não tem permissão para executar esta ação.';

  @override
  String get errorForbiddenTitle => 'Acesso negado.';

  @override
  String get errorNotFound => 'Não conseguimos encontrar o que você procurava.';

  @override
  String get errorNotFoundTitle => 'Não encontrado.';

  @override
  String get updateArticle => 'Mais detalhes foram atualizados';

  @override
  String get errorValidation => 'Algumas informações parecem inválidas. Revise e tente novamente.';

  @override
  String get agreeMail => 'Concordo em receber atualizações e newsletters por e-mail.';

  @override
  String get sendUsEmail => 'Envie-nos um e-mail';

  @override
  String get discardChangesTitle => 'Descartar alterações?';

  @override
  String get discardChangesMessage => 'Você tem alterações não salvas. Se você continuar, eles serão perdidos.';

  @override
  String get discardButton => 'Descartar';

  @override
  String get stayButton => 'Fique';

  @override
  String get changeCountryConfirm => 'Mudar destino de notícias';

  @override
  String get otherWaysToContact => 'Outras formas de contato';

  @override
  String get agreePrivacy => 'Eu li e concordo com o ';

  @override
  String get contactUsSubtitle => 'Sinta-se à vontade para nos contatar através do formulário abaixo.';

  @override
  String get fullName => 'Nome completo';

  @override
  String get mail => 'Endereço de e-mail';

  @override
  String get message => 'Mensagem';

  @override
  String get errorValidationTitle => 'Entrada inválida.';

  @override
  String get similarSources => 'Fontes semelhantes';

  @override
  String get send => 'Enviar';

  @override
  String get errorGeneric => 'Algo deu errado. Por favor, tente novamente.';

  @override
  String get errorGenericTitle => 'Algo deu errado.';

  @override
  String get emptyResults_title => 'Nenhum resultado correspondente';

  @override
  String get emptyResults_noResults => 'Nenhum resultado encontrado.';

  @override
  String get emptyResults_bottomWithTopic => 'Tente alterar suas palavras-chave ou escolha outro tópico.';

  @override
  String get emptyResults_bottomWithoutTopic => 'Tente mudar suas palavras-chave.';

  @override
  String get emptyResults_inThisTopic => 'neste tópico';

  @override
  String get errorBadRequestTitle => 'Pedido ruim.';

  @override
  String get errorBadRequest => 'A solicitação era inválida. Por favor, tente novamente.';

  @override
  String get errorNotModifiedTitle => 'Não modificado.';

  @override
  String get errorNotModified => 'Nada mudou desde sua última solicitação.';

  @override
  String get errorNetworkTitle => 'Erro de rede.';

  @override
  String get errorNetwork => 'Não conseguimos acessar a rede. Verifique sua conexão e tente novamente.';

  @override
  String get errorDataIsEmptyTitle => 'Não há dados disponíveis.';

  @override
  String get errorDataIsEmpty => 'Não foi possível encontrar nenhum dado para exibir.';

  @override
  String get errorConflictTitle => 'Conflito.';

  @override
  String get errorConflict => 'A solicitação entrou em conflito com os dados existentes. Por favor, tente novamente.';

  @override
  String get errorServerValidationTitle => 'Erro de validação.';

  @override
  String get errorServerValidation => 'O servidor rejeitou alguns dados. Revise e tente novamente.';

  @override
  String get errorWriteFileTitle => 'Falha na gravação.';

  @override
  String get errorWriteFile => 'Não foi possível salvar o arquivo. Por favor, tente novamente.';

  @override
  String get errorReadFileTitle => 'Falha na leitura.';

  @override
  String get errorReadFile => 'Não foi possível ler o arquivo. Por favor, tente novamente.';

  @override
  String get errorFileNotFoundTitle => 'Arquivo não encontrado.';

  @override
  String get errorFileNotFound => 'Não foi possível encontrar o arquivo que você procura.';

  @override
  String get errorInsufficientStorageTitle => 'Armazenamento insuficiente.';

  @override
  String get errorInsufficientStorage => 'Libere espaço e tente novamente.';

  @override
  String get errorDatabaseReadTitle => 'Erro de leitura do banco de dados.';

  @override
  String get errorDatabaseRead => 'Não foi possível ler o banco de dados.';

  @override
  String get errorDatabaseWriteTitle => 'Erro de gravação do banco de dados.';

  @override
  String get errorDatabaseWrite => 'Não foi possível salvar no banco de dados.';

  @override
  String get errorDatabaseConnectionTitle => 'Erro de conexão com o banco de dados.';

  @override
  String get errorDatabaseConnection => 'Não foi possível conectar ao banco de dados.';

  @override
  String get errorAuthTitle => 'Erro de autenticação.';

  @override
  String get errorAuth => 'Faça login e tente novamente.';

  @override
  String get errorInvalidCredentialsTitle => 'Credenciais inválidas.';

  @override
  String get errorInvalidCredentials => 'O nome de usuário ou senha está incorreto.';

  @override
  String get errorSecureStorageReadTitle => 'Erro de leitura de armazenamento seguro.';

  @override
  String get errorSecureStorageRead => 'Não foi possível ler no armazenamento seguro.';

  @override
  String get errorSecureStorageWriteTitle => 'Erro de gravação de armazenamento seguro.';

  @override
  String get errorSecureStorageWrite => 'Não foi possível gravar no armazenamento seguro.';

  @override
  String get errorSecureStorageClearTitle => 'Erro de limpeza do armazenamento seguro.';

  @override
  String get errorSecureStorageClear => 'Não foi possível limpar o armazenamento seguro.';

  @override
  String get errorTokenExpiredTitle => 'A sessão expirou.';

  @override
  String get errorTokenExpired => 'Faça login novamente.';

  @override
  String get errorUserNotFoundTitle => 'Usuário não encontrado.';

  @override
  String get errorUserNotFound => 'Não foi possível encontrar esse usuário.';

  @override
  String get errorPermissionDeniedTitle => 'Permissão negada.';

  @override
  String get errorPermissionDenied => 'Você não tem permissão para realizar esta ação.';

  @override
  String get errorEmptyResultTitle => 'Sem resultados.';

  @override
  String get errorEmptyResult => 'Não encontramos nenhum resultado.';

  @override
  String get errorInvalidInputTitle => 'Entrada inválida.';

  @override
  String get errorInvalidInput => 'Verifique sua entrada e tente novamente.';

  @override
  String get errorEmptyTopicsTitle => 'Nenhum tópico selecionado.';

  @override
  String get errorEmptyTopics => 'Selecione pelo menos um tópico.';

  @override
  String get errorParsingTitle => 'Erro de análise.';

  @override
  String get errorParsing => 'Não foi possível processar os dados.';

  @override
  String get errorUnknownTitle => 'Erro desconhecido.';

  @override
  String get errorUnknown => 'Ocorreu um erro inesperado.';
}
