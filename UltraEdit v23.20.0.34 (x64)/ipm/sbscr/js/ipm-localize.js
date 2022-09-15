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


  renewalTitle: {
    en: 'Your subscription is due for renewal soon.',
    ptb: '<span style="font-size: 90%;">Sua assinatura precisará ser renovada em breve.</span>',
    de: '<span style="font-size: 75%;">Die Erneuerung Ihres Abonnements steht demnächst an.</span>',
    fr: '<span style="font-size: 90%;">Votre abonnement doit être renouvelé bientôt.</span>',
    es: 'Su suscripción debe renovarse.',
    it: 'L\'abbonamento è prossimo alla scadenza.',
    ko: '곧 귀하의 구독 갱신 기한이 다가옵니다.',
    jp: '<span style="font-size: 60%;">お客様のサブスクリプションは、間もなく更新の期限になります。</span>',
    ch: '您的订阅即将到期，请更新。',
    cht: '您的訂閱已到期，請儘快續約。'
  },

  renewalDateText: {
    en: 'Your <span id="subscriptionName"></span> subscription expires on <strong id="renewalDate"></strong>.',
    ptb: 'Sua assinatura do <span id="subscriptionName"></span> vence em <strong id="renewalDate"></strong>.',
    de: 'Ihr <span id="subscriptionName"></span> Abonnement endet am <strong id="renewalDate"></strong>.',
    fr: 'Votre abonnement <span id="subscriptionName"></span> expire le <strong id="renewalDate"></strong>.',
    es: 'Su suscripción <span id="subscriptionName"></span> expira el <strong id="renewalDate"></strong>.',
    it: 'L\'abbonamento a <span id="subscriptionName"></span> scade il <strong id="renewalDate"></strong>.',
    ko: '귀하의 <span id="subscriptionName"></span> 서비스 만료 날짜 <strong id="renewalDate"></strong>.',
    jp: '<span id="subscriptionName"></span> サブスクリプションの有効期限日 <strong id="renewalDate"></strong>.',
    ch: '您的 <span id="subscriptionName"></span> 订阅过期于 <strong id="renewalDate"></strong>.',
    cht: '您的 <span id="subscriptionName"></span> 訂閱到期於 <strong id="renewalDate"></strong>.',
  },

  renewalText: {
    en: 'If you purchased your subscription online, you will receive an email with renewal instructions, or you can renew now using the option below. If you elected to auto-renew your subscription, you don’t need to do anything further.<br><br>For any questions or assistance, please email <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>.',
    ptb: 'Caso tenha comprado a assinatura on-line, você receberá um e-mail com as instruções para a renovação. Você também pode renovar sua assinatura agora, usando a opção abaixo. Se você tiver optado por uma assinatura com renovação automática, não precisará adotar nenhuma medida.<br><br>Se precisar de algum esclarecimento ou ajuda, envie um e-mail para <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>.',
    de: '<span style="font-size: 90%;">Wenn Sie Ihr Abonnement online gekauft haben, erhalten Sie eine E-Mail mit den Anweisungen zu einer Erneuerung, oder Sie können jetzt über die nachfolgende Option erneuern. Wenn Sie eine automatische Abonnementserneuerung ausgewählt haben, müssen Sie nichts mehr machen.<br><br>Bei Fragen oder wenn Sie Hilfe benötigen, senden Sie uns bitte eine E-Mail an <a href="mailto:support@idmcomp.com">support@idmcomp.com</a></span>.',
    fr: '<span style="font-size: 90%;">Si vous avez acheté votre abonnement en ligne, vous allez recevoir un courriel qui vous informera sur les modalités du renouvellement. Vous pouvez également renouveler votre abonnement au moyen de l’option ci-dessous. Si vous avez opté pour le renouvellement automatique de votre abonnement, vous n’avez rien à faire.<br><br>Pour toute question ou demande d’assistance, adressez un courriel à l’adresse <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>.</span>',
    es: 'Si ha comprado la suscripción en línea, recibirá un correo electrónico con instrucciones para la renovación, o bien podrá renovarla ahora mediante la opción siguiente. Si ha elegido renovar automáticamente la suscripción, no tiene que hacer nada más.<br><br>Si desea formular alguna pregunta o necesita ayuda, envíe un correo electrónico a <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>.',
    it: 'Se è stato acquistato online, si riceverà un\'e-mail con le istruzioni per il rinnovo; altrimenti, è possibile effettuare il rinnovo ora utilizzando l\'opzione in basso. Se si è scelto il rinnovo automatico dell\'abbonamento, non è necessario fare altro.<br><br>Per qualsiasi domanda o assistenza, inviare un\'e-mail all\'indirizzo <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>.',
    ko: '온라인상에서 구독을 구매한 경우, 갱신 지침이 포함된 이메일을 받게 됩니다. 그렇지 않으면 지금 아래 옵션을 사용해 갱신할 수 있습니다. 구독을 자동 갱신하기로 선택한 경우, 추가로 수행할 작업이 없습니다.<br><br>질문이 있거나 도움이 필요한 경우에는 <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>으로 이메일을 보내주십시오.',
    jp: 'お客様がオンラインでサブスクリプションを購入した場合、お客様は、更新の指示が記載された電子メールを受信するか、または以下のオプションを使用して、今すぐ更新することができます。サブスクリプションの自動更新を選択された場合は、何もする必要はありません。<br><br>ご質問があるか、または支援が必要な場合は、<a href="mailto:support@idmcomp.com">support@idmcomp.comに電子メールにてご連絡ください</a>。',
    ch: '如果您已在线购买了订阅，则将收到一封附有更新说明的电子邮件，您也可以使用以下选项进行更新。如果您已选择自动更新订购，则无需进行进一步操作。<br><br>如有任何问题或需要任何帮助，请发送电子邮件至<a href="mailto:support@idmcomp.com">support@idmcomp.com</a>。',
    cht: '如果您在線上購買訂閱，您將收到有續約指示的電子郵件，或您可以使用以下的選項立即續約。如果您選擇自動續約您的訂閱，您就不需要再執行任何操作。<br><br>如有任何問題或需要協助，請用電子郵件傳送到 <a href="mailto:support@idmcomp.com">support@idmcomp.com</a>。'
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
  }

};