// Copyright (c) 2009-2014 Apple Inc. All Rights Reserved.
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
	"_Calendar.Progress.GettingEvents": "Activiteiten ophalen van server…",
	"_Calendar.Calendar": "Agenda",
	"_Calendar.Header.Today": "Vandaag",
	"_Calendar.Header.Day": "dag",
	"_Calendar.Header.Day.Tooltip": "Bekijk één dag tegelijk",
	"_Calendar.Header.Week": "week",
	"_Calendar.Header.Week.Tooltip": "Bekijk één week tegelijk",
	"_Calendar.Header.Month": "maand",
	"_Calendar.Header.Month.Tooltip": "Bekijk een gehele maand",
	"_Calendar.Header.Settings": "Instellingen",
	"_Calendar.Sidebar.Info": "Agenda-instellingen",
	"_Calendar.Sidebar.Notifications": "Meldingen",
	"_Calendar.Sidebar.NewCalendarCollection": "Voeg een nieuwe agenda toe",
	"_Calendar.Sidebar.ShowHideMiniMonth": "Minimaand",
	"_Calendar.Sidebar.MiniMonth": "Datum",
	"_Calendar.Sidebar.ShowHideInbox": "Meldingen",
	"_Calendar.Sidebar.Inbox": "Inkomend",
	"_Calendar.Sidebar.Inbox.Cancelled": "Activiteit is geannuleerd",
	"_Calendar.Sidebar.Inbox.Organizer": "Van %(organizer)s",
	"_Calendar.Sidebar.Inbox.Status.TENTATIVE": "Misschien",
	"_Calendar.Sidebar.Inbox.Status.ACCEPTED": "Accepteer",
	"_Calendar.Sidebar.Inbox.Status.DECLINED": "Sla af",
	"_Calendar.Title": "Agenda voor %(principalDisplayName)s",
	"_Calendar.Title.MyCalendar": "Mijn agenda",
	"_Calendar.Errors.NoServer": "U hebt geen toegang tot de agenda omdat de agendaserver niet actief is.",
	"_Calendar.Errors.NoAccess": "U hebt geen bevoegdheden om deze bewerking op deze agenda uit te voeren. Mogelijk hebt u geprobeerd een agenda te bekijken waartoe u geen toegang hebt.",
	"_Calendar.Errors.PrincipalNotFound": "U hebt geen toegang tot de agenda omdat deze gebruiker geen toestemming heeft voor een agenda.",
	"_Calendar.Errors.FileNotFound": "Agendaserver heeft een fout geretourneerd: bestand niet gevonden.",
	"_Calendar.Errors.ProbableHTTPSRedirect": "U hebt geen toegang tot de agenda omdat de webvoorziening onjuist is geconfigureerd.",
	"_Calendar.Errors.ModificationsInProgress": "Uw wijzigingen kunnen niet worden bewaard omdat eerdere wijzigingen nog niet waren toegepast. Probeer het over enkele seconden opnieuw.",
	"_Calendar.Errors.UnsupportedBrowser": "Webagenda's zijn niet beschikbaar op Mobile Safari. U kunt toegang configureren vanuit het programma Agenda op de iPad, iPhone, iPod Touch of een Mac. U kunt webagenda's ook bekijken in een webbrowser op een Mac of een Windows-pc.",
	"_Calendar.Errors.Unknown": "U hebt geen toegang tot de agenda omdat er zich een fout heeft voorgedaan.",
	"_Calendar.AMPM.AM": "a.m.",
	"_Calendar.AMPM.PM": "p.m.",
	"_Calendar.Color.Blue": "Blauw",
	"_Calendar.Color.Green": "Groen",
	"_Calendar.Color.Red": "Rood",
	"_Calendar.Color.Orange": "Oranje",
	"_Calendar.Color.Pink": "Roze",
	"_Calendar.Color.Purple": "Paars",
	"_Calendar.Color.Custom": "Aangepast",
	"_Calendar.Appointments.DefaultSummary": "Nieuwe activiteit",
	"_Calendar.Appointments.AllDay": "hele dag",
	"_Calendar.Appointments.More": "Zie alle %(count)s…",
	"_Calendar.Tooltips.Location": "Locatie:",
	"_Calendar.Tooltips.Description": "Notities:",
	"_Calendar.Dialogs.Appointment.Title": "Activiteit",
	"_Calendar.Dialogs.Appointment.Tabs.General": "Algemeen",
	"_Calendar.Dialogs.Appointment.Tabs.Attendees": "Genodigden",
	"_Calendar.Dialogs.Appointment.Tabs.Notes": "Notities",
	"_Calendar.Dialogs.Appointment.Summary": "Titel",
	"_Calendar.Dialogs.Appointment.Location": "Locatie",
	"_Calendar.Dialogs.Appointment.StartTime": "Begintijd",
	"_Calendar.Dialogs.Appointment.EndTime": "Eindtijd",
	"_Calendar.Dialogs.Appointment.AllDayEvent": "Activiteit die hele dag duurt",
	"_Calendar.Dialogs.Appointment.Calendar": "Agenda",
	"_Calendar.Dialogs.Appointment.Repeat.Label": "Herhaal",
	"_Calendar.Dialogs.Appointment.Repeat.none": "Geen",
	"_Calendar.Dialogs.Appointment.Repeat.DAILY": "Elke dag",
	"_Calendar.Dialogs.Appointment.Repeat.WEEKLY": "Elke week",
	"_Calendar.Dialogs.Appointment.Repeat.MONTHLY": "Elke maand",
	"_Calendar.Dialogs.Appointment.Repeat.YEARLY": "Elk jaar",
	"_Calendar.Dialogs.Appointment.Repeat.custom": "Aangepast",
	"_Calendar.Dialogs.Appointment.Repeat.End.Label": "Einde",
	"_Calendar.Dialogs.Appointment.Repeat.End.Never": "Nooit",
	"_Calendar.Dialogs.Appointment.Repeat.End.After": "Na",
	"_Calendar.Dialogs.Appointment.Repeat.End.times": "keer",
	"_Calendar.Dialogs.Appointment.Repeat.End.On_date": "Op datum",
	"_Calendar.Dialogs.Appointment.Attendees.Hint": "Voeg deelnemer toe",
	"_Calendar.Dialogs.Appointment.Attendees.Organizer": "Organisator",
	"_Calendar.Dialogs.Appointment.Attendees.Name": "Naam",
	"_Calendar.Dialogs.Appointment.Delete": "Verwijder",
	"_Calendar.Dialogs.Appointment.Save.Progress": "Activiteit bewaren…",
	"_Calendar.Dialogs.Invitation.Title": "Uitnodiging van %(organizer)s",
	"_Calendar.Dialogs.Invitation.Summary": "Titel",
	"_Calendar.Dialogs.Invitation.Location": "Locatie",
	"_Calendar.Dialogs.Invitation.Date": "Datum",
	"_Calendar.Dialogs.Invitation.Calendar": "Agenda",
	"_Calendar.Dialogs.Invitation.Attendees": "Genodigden",
	"_Calendar.Dialogs.Invitation.Attendees.Remove": "Verwijder",
	"_Calendar.Dialogs.Invitation.Notes": "Notities",
	"_Calendar.Dialogs.Invitation.MyStatus": "Mijn status",
	"_Calendar.Dialogs.Invitation.MyStatus.TENTATIVE": "Misschien",
	"_Calendar.Dialogs.Invitation.MyStatus.ACCEPTED": "Accepteer",
	"_Calendar.Dialogs.Invitation.MyStatus.DECLINED": "Sla af",
	"_Calendar.Dialogs.Invitation.Organizer": "(organizer) van %(displayname)s",
	"_Calendar.Dialogs.Invitation.SeeAllAttendees": "Zie alle %(count)s…",
	"_Calendar.Dialogs.Settings.Title": "Instellingen",
	"_Calendar.Dialogs.Settings.Timezone": "Tijdzone",
	"_Calendar.Dialogs.Settings.Availability": "Beschikbaarheid",
	"_Calendar.Dialogs.Settings.Availability.Weekdays": "Weekdagen",
	"_Calendar.Dialogs.Settings.Availability.Custom": "Aangepast",
	"_Calendar.Dialogs.Settings.Availability.To": "tot",
	"_Calendar.Dialogs.Settings.StartWeekOn": "Begin week op",
	"_Calendar.Dialogs.Settings.Delegates": "Gedelegeerden",
	"_Calendar.Dialogs.Settings.Delegates.Hint": "Voeg gedelegeerde toe",
	"_Calendar.Dialogs.Settings.Delegates.ReadOnly": "Alleen lezen",
	"_Calendar.Dialogs.Settings.Delegates.ReadWrite": "Lezen/schrijven",
	"_Calendar.Dialogs.CalendarInfo.Title": "Agenda-instellingen",
	"_Calendar.Dialogs.CalendarInfo.Name": "Agendanaam",
	"_Calendar.Dialogs.CalendarInfo.Color": "Agendakleur",
	"_Calendar.Dialogs.CalendarInfo.ShareWithMe": "Zet in mijn agenda",
	"_Calendar.Dialogs.CalendarInfo.ShareWithMe.Confirmation": "De agenda '%(calendarName)s' is nu zichtbaar in uw agendaprogramma.\nZorg ervoor dat u een agenda-account hebt ingesteld voor '%(serverName)s'.",
	"_Calendar.Dialogs.CalendarInfo.Subscribe": "Abonneer",
	"_Calendar.Dialogs.CalendarInfo.Delete": "Verwijder",
	"_Calendar.Dialogs.CalendarInfo.Delete.Progress": "Agenda verwijderen…",
	"_Calendar.Dialogs.CalendarInfo.Save.Progress": "Agenda bewaren…",
	"_Calendar.Dialogs.CalendarInfo.Delete.Confirmation": "Wilt u de agenda '%(calendarName)s' echt verwijderen? Alle activiteiten in deze agenda worden verwijderd. Deze handeling kan niet ongedaan worden gemaakt.",
	"_Calendar.Dialogs.NewCalendar.Title": "Maak agenda aan",
	"_Calendar.Dialogs.NewCalendar.Name": "Agendanaam",
	"_Calendar.Dialogs.NewCalendar.Color": "Agendakleur",
	"_Calendar.Dialogs.NewCalendar.Untitled": "naamloos",
	"_Calendar.Dialogs.NewCalendar.Create": "Maak aan",
	"_Calendar.Dialogs.Delete.Title": "Activiteit echt verwijderen?",
	"_Calendar.Dialogs.Delete.Progress": "Activiteit verwijderen…",
	"_Calendar.Dialogs.Updating.Progress": "Activiteit bijwerken…",
	"_Calendar.Dialogs.DeleteFirst.Title": "Verwijder activiteit",
	"_Calendar.Dialogs.DeleteFirst.Description": "Wilt u deze activiteit overal verwijderen of alleen op de geselecteerde plaats?",
	"_Calendar.Dialogs.DeleteFirst.DeleteOnlyThis": "Verwijder alleen op deze plaats",
	"_Calendar.Dialogs.DeleteFirst.DeleteAll": "Verwijder alle activiteiten",
	"_Calendar.Dialogs.DeleteNth.Title": "Verwijder activiteit",
	"_Calendar.Dialogs.DeleteNth.Description": "Wilt u deze activiteit en alle toekomstige herhalingen van de activiteit verwijderen of wilt u alleen de geselecteerde activiteit verwijderen?",
	"_Calendar.Dialogs.DeleteNth.DescriptionAll": "Wilt u deze activiteit overal verwijderen of alleen op de geselecteerde plaats?",
	"_Calendar.Dialogs.DeleteNth.DeleteOnlyThis": "Verwijder alleen op deze plaats",
	"_Calendar.Dialogs.DeleteNth.DeleteAllFuture": "Verwijder alle toekomstige activiteiten",
	"_Calendar.Dialogs.DeleteNth.DeleteAll": "Verwijder alle activiteiten",
	"_Calendar.Dialogs.UpdateRecurrence.Title": "Herhalingsregel wijzigen",
	"_Calendar.Dialogs.UpdateRecurrence.Description": "Weet u zeker dat u de herhalingsregel voor alle toekomstige activiteiten wilt wijzigen?",
	"_Calendar.Dialogs.UpdateRecurrence.Change": "Wijzig",
	"_Calendar.Dialogs.ChangeFirst.Title": "Een herhaalde activiteit wijzigen",
	"_Calendar.Dialogs.ChangeFirst.Description": "U wijzigt een herhaalde activiteit. Wilt u de activiteit alleen op deze plaats bijwerken of overal?",
	"_Calendar.Dialogs.ChangeFirst.OnlyThis": "Alleen op deze plaats",
	"_Calendar.Dialogs.ChangeFirst.All": "Overal",
	"_Calendar.Dialogs.ChangeNth.Title": "Een herhaalde activiteit wijzigen",
	"_Calendar.Dialogs.ChangeNth.Description": "U wijzigt een herhaalde activiteit. Wilt u de activiteit alleen op deze plaats bijwerken of wilt u deze activiteit en alle toekomstige activiteiten wijzigen?",
	"_Calendar.Dialogs.ChangeNth.OnlyThis": "Alleen op deze plaats",
	"_Calendar.Dialogs.ChangeNth.All": "Alle",
	"_Calendar.Notifications.AppointmentSaved": "Activiteit bewaard.",
	"_Calendar.DateFormats.DayHeader": "l, M j",
	"_Calendar.Wiki": "Wiki",	
	"_Calendar.Logout": "Log uit"
});
