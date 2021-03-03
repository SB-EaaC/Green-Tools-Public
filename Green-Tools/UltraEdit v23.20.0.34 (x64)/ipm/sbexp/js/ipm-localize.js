/*

"loc_langs" - the object holding all items that need localizations

In order for translations to work, the string in HTML source
should be encapsulated in a <span> with a class set to "l_"
PLUS the unique name of the sub-object containing its
translations.

For example, to translate "Install all" in HTML source, find
(or add) that sub-item in the langs object.  It already
exists with a name of "installAll".  Therefore the <span>
surrounding the text in the HTML source should be assigned a
class of "l_installAll". Example:

    <span class="l_installAll">Install all</span>

It's easy enough to add new translated strings.  Simply copy
one of the existing below, give it a unique name, and enter
the translated strings.  Then add the "l_" + unique name
class to a <span> around the original string in the HTML
source.
*/

loc_supportedLangs = [
"en", // English
"ptb", // Portuguese (Brazilian)
"de", // German
"fr", // French
"es", // Spanish
"it", // Italian
"ko", // Korean
"jp", // Japanese
"ch", // Chinese (Simplified)
"cht" // Chinese (Traditional)
];

loc_langs = {


  expiredTitle: {
    en: 'Your subscription has expired.',
    ptb: 'Sua assinatura venceu.',
    de: 'Ihr Abonnement ist abgelaufen.',
    fr: 'Votre abonnement a expiré.',
    es: 'Su suscripción ha caducado.',
    it: 'L\'abbonamento è scaduto.',
    ko: '귀하의 구독이 만료되었습니다.',
    jp: 'サブスクリプションが期限切れになりました。',
    ch: '您的订阅已过期。',
    cht: '您的訂閱已到期。'
  },

  expiredDateText: {
    en: 'Your <span id="subscriptionName"></span> subscription expired on <strong id="renewalDate"></strong>.',
    ptb: 'Sua assinatura do <span id="subscriptionName"></span> venceu em <strong id="renewalDate"></strong>.',
    de: 'Ihr Abonnement von <span id="subscriptionName"></span> ist am <strong id="renewalDate"> abgelaufen.</strong>',
    fr: 'Votre abonnement <span id="subscriptionName"></span> a expiré le <strong id="renewalDate"></strong>.',
    es: 'Su suscripción <span id="subscriptionName"></span> ha caducado el <strong id="renewalDate"></strong>.',
    it: 'L\'abbonamento <span id="subscriptionName"></span> è scaduto il <strong id="renewalDate"></strong>.',
    ko: '귀하의 <span id="subscriptionName"></span> 구독은 <strong id="renewalDate"></strong>에 만료되었습니다.',
    jp: 'お客様の<span id="subscriptionName"></span>サブスクリプションは、<strong id="renewalDate"></strong>に期限切れになりました。',
    ch: '您的 <span id=”subscriptionName”></span> 订阅过期日为<strong id="renewalDate"></strong>。',
    cht: '您的 <span id="subscriptionName"></span> 訂閱將在 <strong id="renewalDate"></strong> 到期。'
  },

  daysLeftText: {
    en: 'This application is running in trial mode and will stop functioning in <strong><span id="daysLeft"></span> days</strong>.',
    ptb: 'O aplicativo está sendo executado em modo de avaliação e parará de funcionar em <strong><span id="daysLeft"></span> dias</strong>.',
    de: 'Diese Anwendung wird im Testmodus ausgeführt und wird in <strong><span id="daysLeft"></span> Tagen nicht mehr funktionieren</strong>.',
    fr: 'Cette application fonctionne en mode d’essai et cessera de fonctionner dans <strong><span id="daysLeft"></span> jours</strong>.',
    es: 'Esta aplicación se está ejecutando en modo de prueba y dejará de funcionar dentro de <strong><span id="daysLeft"></span> días</strong>.',
    it: 'L\'applicazione è in esecuzione in modalità di valutazione e non sarà più disponibile tra <strong><span id="daysLeft"></span> giorni</strong>.',
    ko: '이 어플리케이션은 평가판 모드로 실행 중이며, <strong><span id="daysLeft"></span>일 후에 기능이 중지됩니다</strong>.',
    jp: 'このアプリケーションは、トライアルモードで実行中で、<strong><span id="daysLeft"></span>日</strong>以内に機能停止します。',
    ch: '本应用将继续以试用版模式运行，试用版将于<strong><span id=”daysLeft”>ri’</span>天后</strong>失效。',
    cht: '此應用程式正在執行試用模式，並將在 <strong><span id="daysLeft"></span> 天</strong>後停止運作。'
  },

  lastDayText: {
    en: 'This application is running in trial mode and will stop functioning in <strong><span id="daysLeft"></span> day!</strong>',
    ptb: 'O aplicativo está sendo executado em modo de avaliação e parará de funcionar em <strong><span id="daysLeft"></span> dia.</strong>',
    de: 'Diese Anwendung wird im Testmodus ausgeführt und wird in <strong><span id="daysLeft"></span> Tag nicht mehr funktionieren.</strong>',
    fr: 'Cette application fonctionne en mode d’essai et cessera de fonctionner dans <strong><span id="daysLeft"></span> jour !</strong>',
    es: 'Esta aplicación se está ejecutando en modo de prueba y dejará de funcionar dentro de <strong><span id="daysLeft"></span> día.</strong>',
    it: 'L\'applicazione è in esecuzione in modalità di valutazione e smetterà di funzionare tra <strong><span id="daysLeft"></span> giorno!</strong>',
    ko: '이 어플리케이션은 평가판 모드로 실행 중이며, <strong><span id="daysLeft"></span>일 후에 기능이 중지됩니다!</strong>',
    jp: 'このアプリケーションは、トライアルモードで実行中で、<strong><span id="daysLeft"></span>日以内に機能停止します。</strong>',
    ch: '本应用将继续以试用版模式运行，试用版将于<strong><span id=”daysLeft”>ri’</span>天后失效！</strong>',
    cht: '此應用程式正在執行試用模式，並將在 <strong><span id="daysLeft"></span> 天後停止運作！</strong>'
  },

  noDaysText: {
    en: '<strong>Your subscription renewal\'s 30-day grace period has expired.</strong>',
    ptb: '<strong>A renovação da sua assinatura/a sua assinatura de cortesia por 30 dias venceu.</strong>',
    de: '<strong>Die 30-tägige Frist für die Erneuerung Ihres Abonnements ist abgelaufen.</strong>',
    fr: '<strong>La période de 30 jours accordée gracieusement pour le renouvellement de votre abonnement a expiré.</strong>',
    es: '<strong>El período de gracia de 30 días de renovación de su suscripción ha caducado.</strong>',
    it: '<strong>Il periodo di tolleranza valido 30 giorni per il rinnovo dell\'abbonamento è scaduto.</strong>',
    ko: '<strong>귀하의 구독 갱신에 대한 30일 유예 기간이 만료되었습니다.</strong>',
    jp: '<strong>サブスクリプション更新の30日間の猶予期間は期限切れになりました。</strong>',
    ch: '<Strong>您的 30 天订阅更新宽限期已到期。</strong>',
    cht: '<strong>您的訂閱的 30 天續約寬限期已到期。</strong>'
  },

  renewNow: {
    en: 'Renew now',
    ptb: 'Renovar agora',
    de: 'Jetzt erneuern',
    fr: 'Renouveler maintenant',
    es: 'Renovar ahora',
    it: 'Rinnova ora',
    ko: '지금 갱신',
    jp: '今すぐ更新する',
    ch: '立即更新',
    cht: '立即續約'
  },

  renewalDescriptionText: {
    en: 'To renew your subscription, please use the link below.  For any questions or assistance, please email <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>.',
    ptb: 'Para renovar sua assinatura, use o link abaixo.  Se precisar de algum esclarecimento ou ajuda, envie um e-mail para <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>.',
    de: 'Klicken Sie auf den nachfolgenden Link, um Ihr Abonnement zu erneuern.  Wenden Sie sich bei Fragen oder wenn Sie Hilfe benötigen per E-Mail an <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>.',
    fr: 'Pour renouveler votre abonnement, utilisez le lien ci-dessous.  Pour toute question ou demande d’assistance, adressez un courriel à l’adresse <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>.',
    es: 'Para renovar su suscripción, haga clic en el enlace siguiente.  Si desea formular alguna pregunta o necesita ayuda, envíe un correo electrónico a <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>.',
    it: 'Per rinnovare l\'abbonamento, utilizzare il link in basso.  Per qualsiasi domanda o assistenza, inviare un\'e-mail all\'indirizzo <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>.',
    ko: '구독을 갱신하려면 아래 링크를 사용하십시오.  질문이 있거나 도움이 필요한 경우에는 <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>으로 이메일을 보내주십시오.',
    jp: 'サブスクリプションを更新するには、以下のリンクを使用してください。ご質問があるか、または支援が必要な場合は、<a href="mailto:support@idmcomp.com">support@idmcomp.comに電子メールにてご連絡ください</a>。',
    ch: '如需更新您的订阅，请使用如下链接。如有任何问题或需要任何帮助，请发送电子邮件至<a href="mailto:support@idmcomp.com">support@idmcomp.com</a>。',
    cht: '請使用以下連結將您的訂閱續約。如有任何問題或需要協助，請用電子郵件傳送到 <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>。'
  }

};