// Copyright (c) 2009-2015 Apple Inc. All Rights Reserved.
// 
// IMPORTANT NOTE: This file is licensed only for use on Apple-branded
// computers and is subject to the terms and conditions of the Apple Software
// License Agreement accompanying the package this file is a part of.
// You may not port this file to another platform without Apple's written consent.
//
// IMPORTANT NOTE: This file is licensed only for use with the Wiki Server feature
// of the Apple Software and is subject to the terms and conditions of the Apple
// Software License Agreement accompanying the package this file is part of.

if (typeof apple_loc_strings == "undefined") {
	apple_loc_strings = {version:'1.0'};
}

var populateStrings = function(obj) {
	for (aProperty in obj) {
		apple_loc_strings[aProperty] = obj[aProperty];
	}
};

populateStrings({
	"_NavigationSidebar.My.Activity": "Le mie attività",
	"_NavigationSidebar.My.Documents": "I miei documenti",
	"_NavigationSidebar.My.Favorites": "I miei preferiti",
	"_NavigationSidebar.Home": "Inizio",
	"_NavigationSidebar.All.Activity": "Tutte le attività",
	"_NavigationSidebar.All.Wikis": "Tutti i wiki",
	"_NavigationSidebar.All.People": "Tutte le persone",
	"_NavigationSidebar.RecentlyViewed.Title": "Documenti recenti",
	"_Login.LogIn": "Accedi",
	"_Login.LogOut": "Esci",
	"_Login.LogIn_Sidebar": "Barra laterale login",	
	"_Login.LogOut_Sidebar": "Barra laterale logout",		
	"_Login.Unauthenticated": "Utente non autenticato",
	"_Login.DialogTitle": "Accedi",
	"_Login.UserName": "Nome utente",
	"_Login.Password": "Password",
	"_Login.RememberMe": "Ricordami",
	"_WikiSetupAssistant.Next": "Avanti",
	"_WikiSetupAssistant.Create": "Crea",
	"_WikiSetupAssistant.GeneralPane.ShortTitle": "Generale",
	"_WikiSetupAssistant.GeneralPane.LongTitle": "Crea un nuovo wiki",
	"_WikiSetupAssistant.GeneralPane.Name.Label": "Nome wiki",
	"_WikiSetupAssistant.GeneralPane.Name.Placeholder": "Wiki Apple",
	"_WikiSetupAssistant.GeneralPane.Description.Label": "Descrizione",
	"_WikiSetupAssistant.GeneralPane.Description.Placeholder": "Dì qualcosa su questo wiki",
	"_WikiSetupAssistant.GeneralUserPane.Name.Label": "Nome utente",
	"_WikiSetupAssistant.GeneralUserPane.Email.Label": "E-mail",
	"_WikiSetupAssistant.GeneralUserPane.Email.Placeholder": "utente@example.com",
	"_WikiSetupAssistant.ACLPane.ShortTitle": "Permessi",
	"_WikiSetupAssistant.ACLPane.LongTitle": "Imposta permessi",
	"_WikiSetupAssistant.AppearancePane.ShortTitle": "Aspetto",
	"_WikiSetupAssistant.AppearancePane.LongTitle": "Imposta aspetto",
	"_WikiSetupAssistant.AppearancePane.ColorScheme.Label": "Schema colore",	
	"_WikiSetupAssistant.DonePane.LongTitle": "Configurazione completata",
	"_WikiSetupAssistant.DonePane.GoToWiki%@": "Vai al wiki “%@”",
	"_WikiSetupAssistant.DonePane.InformationLine1%@" : "Il wiki “%@” è stato creato ed è pronto per essere utilizzato.",
	"_WikiSetupAssistant.DonePane.InformationLine2" : "Sul wiki sono disponibili opzioni di configurazione aggiuntive.",
	"_Document.Sidebar.Info": "Informazioni",
	"_Document.Sidebar.Download": "Scarica",	
	"_Document.Sidebar.ViewAll": "Visualizza tutti",
	"_Document.Sidebar.Comments": "Commenti",
	"_Document.Sidebar.Comments.None": "Nessun commento",
	"_Document.Sidebar.Comments.New": "Commento",
	"_Document.Sidebar.Comments.You": "Tu",
	"_Document.Sidebar.Comments.Now": "Adesso",
	"_Document.Sidebar.Related": "Correlati",
	"_Document.Sidebar.Related.None": "Nessun documento correlato",
	"_Document.Sidebar.Related.Add": "Aggiungi doc. correlato…",
	"_Document.Sidebar.Related.SuggestedDocuments": "Documenti suggeriti",
	"_Document.Sidebar.Tags": "Tag",
	"_Document.Sidebar.Tags.None": "Nessun tag",
	"_Document.Sidebar.Tags.Add": "Aggiungi tag…",
	"_Document.Sidebar.Tags.Add.Name": "Aggiungi tag",
	"_Document.Sidebar.Tags.SuggestedTags": "Tag suggeriti",
	"_Document.Sidebar.Tags.NoSuggestions": "Nessun suggerimento",	
	"_Document.Sidebar.History": "Cronologia",
	"_Document.Sidebar.History.None": "Nessuna cronologia",
	"_Document.Sidebar.History.VersionAvailableSingular": "1 versione disponibile",
	"_Document.Sidebar.History.VersionAvailablePlural": "%@ versioni disponibili",
	"_Document.Sidebar.Notifications": "Invia notifiche per e-mail",
	"_Document.Sidebar.Notifications.Updated": "Tutti gli aggiornam.",
	"_Document.Sidebar.Notifications.CommentAdded": "Commento aggiunto",
	"_Document.Sidebar.Notifications.DocumentUpdated": "Doc. aggiornato",
	"_Document.Sidebar.Notifications.EmailInputTitle": "Inserisci e-mail",
	
	"_Document.Sidebar.Sharing": "Condivisione",
	"_Document.Sidebar.Sharing.None": "Non condiviso",
	"_Document.Sidebar.Sharing.Add": "Condividi con qualcuno…",
	"_Document.Sidebar.Sharing.PopoverTitle": "Modifica impostazioni di condivisione",
	
	"_Sharing.Notification.Updating.Subscription": "Aggiorno iscrizione…",
	"_Sharing.Notification.Updating.Subscription.Succeeded": "Iscrizione aggiornata correttamente.",
	"_Sharing.Notification.Updating.Subscription.Failed": "Impossibile aggiornare l'iscrizione. Riprova.",
	"_Sharing.Notification.Updating.Subscription.Failed.Email": "Per utilizzare le iscrizioni, devi avere impostato un indirizzo e-mail preferito.",
	
	"_FilterBar.Filter.Label": "Mostra:",
	"_FilterBar.Filter.All.Title": "Tutto",
	"_FilterBar.Filter.Unread.Title": "Non letti",
	"_FilterBar.Filter.Favorites.Title": "Preferiti",
	"_FilterBar.SortBy.Label": "Ordina per:",
	"_FilterBar.SortBy.Rank.Title": "Più rilevanti",
	"_FilterBar.SortBy.Title.Title": "Titolo",
	"_FilterBar.SortBy.MostRecent.Title": "Il più recente",
	"_FilterBar.SortBy.LeastRecent.Title": "Meno recente",
	"_FilterBar.Grid.Title": "Icone",
	"_FilterBar.List.Title": "Elenco",
	"_GearMenu.General.Help": "Aiuto",
	"_GearMenu.General.MySettings": "Le mie impostazioni utente…",
	"_GearMenu.General.MySettings.Title": "Le mie impostazioni utente",
	"_GearMenu.General.Move" : "Sposta…",
	"_GearMenu.General.Replace": "Sostituisci file…",
	"_GearMenu.Wiki.Settings": "Impostazioni wiki…",
	"_GearMenu.Wiki.Settings.Title": "Impostazioni wiki",
	"_GearMenu.User.Hide": "Nascondi utente…",
	"_GearMenu.User.Unhide": "Mostra utente…",
	"_GearMenu.Search.SaveSearch" : "Salva questa ricerca",
	"_PlusMenu.NewWiki": "Nuovo wiki…",
	"_PlusMenu.NewPage.NewPageInWiki%@": "Nuova pagina in “%@”…",
	"_PlusMenu.NewPage.NewInMyDocs": "Nuova pag. nei documenti…",
	"_PlusMenu.NewPage.Dialog.Title" : "Nuova pagina",
	"_PlusMenu.NewPage.Dialog.Label" : "Titolo pagina",
	"_Settings.Permissions.CommentAccess.Label":"Commenti",
	"_Settings.Permissions.CommentAccess.all":"Tutti",
	"_Settings.Permissions.CommentAccess.authenticated":"Utenti autenticati",
	"_Settings.Permissions.CommentAccess.disabled":"Nessuno",
	"_Settings.Permissions.CommentModeration.Label":"Moderazione commento",
	"_Settings.Permissions.CommentModeration.all":"Tutti i commenti",
	"_Settings.Permissions.CommentModeration.anonymous":"Solo commenti anonimi",
	"_Settings.Permissions.CommentModeration.disabled":"Nessuno",
	"_Settings.General.PreferedEmail":"Indirizzo e-mail preferito",
	
	// User Error Messages
	"_Error.Delete.Document.Permissions":"Solo il proprietario o un amministratore può eliminare questo documento.",
	"_Error.Delete.Wiki.Permissions":"Solo il proprietario o un amministratore può eliminare questo wiki.",
	"_Error.Hide.Person.Permissions":"Solo un amministratore può nascondere una persona.",	
	"_Error.People.Disabled": "La visualizzazione di tutte le persone è disabilitata su questo server.",
	"_Error.Projects.Disabled": "La visualizzazione di tutti progetti è disabilitata su questo server.",
	"_Error.AllActivity.Disabled": "La visualizzazione di tutte le attività è disabilitata su questo server.",
	"_Error.General.Database.Unabailable": "Il database non è disponibile.",
	"_Error.General.Database.Contact": "Contatta l’amministratore o riprova più tardi.",
	"_Error.People.Unauthenticated": "Effettua il login per visualizzare “Tutte le persone”.",
	"_Error.AllActivity.Unauthenticated": "Effettua il login per visualizzare “Tutte le attività”.",
	
	// Documents
	"_General.Documents.My": "I miei documenti",
	"_General.Documents.None": "Nessun documento",
	"_General.Documents.Untitled": "Senza titolo",
	"_General.Documents.Recents": "Documenti recenti",
	// Favorites
	"_General.Favorites": "Preferiti",
	// Search
	"_Search": "Cerca",
	"_Search.Results": "Risultati ricerca",
	"_Search.Recents": "Ricerche recenti",
	"_Search.Saved": "Ricerche salvate",
	
	// Controls and Accessibilituy
	"_Control.Back": "Indietro",
	"_Control.Add": "Aggiungi",
	"_Control.Cancel": "Annulla",
	"_Control.Delete": "Elimina",
	"_Control.TrashIcon": "Icona Cestino",	
	"_Control.Done": "Fine",
	"_Control.Edit": "Modifica",
	"_Control.Save": "Salva",
	"_Control.Send": "Invia",
	"_Control.OK": "OK",
	"_Control.Close": "Chiudi",
	"_Control.Plus": "Più",
	"_Control.ShowDiff": "ShowDiff",		
	"_Control.Pagination.ShowAll": "Mostra tutte",
	"_Control.Gear": "Menu azione",
	"_Control.MenuNavigation": "Navigazione",
	"_Control.AccessRole.Popup": " popup",
	"_Control.Switch.On": "SÌ",
	"_Control.Switch.Off": "NO",	
	"_Settings.Notification": "Invia notifiche e-mail ai nuovi membri",
	"_Accessibility.group.history": "Gruppo cronologia",
	"_Accessibility.group.comment": "Gruppo commenti",
	"_Accessibility.group.related": "Gruppo correlato",
	"_Accessibility.group.sidebar": "Gruppo barra laterale",
	"_Accessibility.group.sharing": "Gruppo condivisione",
	"_Accessibility.group.suggested": "Gruppo suggerito",
	"_Accessibility.group.editToolBar": "Barra strumenti di modifica",
	"_Accessibility.color.selected": " selezionato",
	"_Accessibility.Acls.All": "Tutte le ACL degli utenti",
	"_Accessibility.Added.All": "ACL degli utenti aggiunte",
	"_Accessibility.Navigation.Bar": "Barra di navigazione"
});
