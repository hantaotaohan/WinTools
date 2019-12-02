function serviceHeader(){return new ServiceHeader(25,"ABBYY Lingvo Live","With ABBYY Lingvo Live Dictionary you will be able to translate words and expressions from English into Russian, from Russian into English, Spanish, Italian, French, German and many other languages and in reverse direction and get the professional translation."+Const.NL2+serviceHost()+Const.NL2+"\u00a9 2018 ABBYY. All rights reserved.",Capability.DICTIONARY)}function serviceHost(a,b,d){return"https://www.lingvolive.com"}
function serviceLink(a,b,d){return serviceHost()+"/"+langToUiLang(Options.LanguageCode)}SupportedLanguages=[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,"zh","zh",-1,-1,"da","nl","en",-1,"fi",-1,"fr",-1,"de","el",-1,-1,-1,"hu",-1,-1,"it",-1,-1,-1,-1,-1,-1,-1,-1,-1,"no",-1,"pl","pt",-1,"ru",-1,-1,-1,"es",-1,-1,-1,"tr","uk",-1,-1,-1,-1,-1,-1,"la",-1,"kk",-1,-1,-1,-1,-1,-1,-1,-1,-1];function serviceDictionaryRequest(a,b,d){a=buildUri(a,b,d);return new RequestData(HttpMethod.GET,a)}
function serviceDictionaryResponse(a,b,d,e){var f=serviceHost(Capability.DICTIONARY,d,e),c="",g=/<div name="#(dictionary|user|quote|phrase|wordform)"/.exec(b);g&&(c=b.slice(g.index),b=c.indexOf('<div class="HLjpm"'),0>=b&&(b=c.indexOf("<footer")),0<b&&(c=c.slice(0,b),c=removeAttributes(c,["id","name","class","data-reactid"]),c=removeElements(c,["button","svg"]),c=updateHtmlLinks('<div class="_QT6_ALLs"><style>._QT6_ALLs *{font-size:100%}._QT6_ALLs table{border:1px solid #f0f0f2;border-collapse:collapse;margin-top:8px}._QT6_ALLs table td,._QT6_ALLs table th{border:1px solid #f0f0f2;text-align:center;padding:8px}._QT6_ALLs h3{margin-top:8px;text-transform:uppercase}</style><div><div>'+
c,f)));a=buildUri(a,d,e);return new ResponseData(c,d,e,f+a)}function langToUiLang(a){switch(a){case "ru":return"ru-ru";case "es":return"es-mx";case "pt-BR":return"pt-br";default:return"en-us"}}function buildUri(a,b,d){return format("/{0}/translate/{1}-{2}/{3}",langToUiLang(Options.LanguageCode),codeFromLanguage(b),codeFromLanguage(d),encodeGetParam(a))};
