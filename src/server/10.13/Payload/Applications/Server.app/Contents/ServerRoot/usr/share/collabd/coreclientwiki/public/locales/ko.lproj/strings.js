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
	"_People.Disabled": "이 서버에서 모든 사람 보기가 비활성화되었습니다.",
	"_Projects.Disabled": "이 서버에서 모든 프로젝트 보기가 비활성화되었습니다.",
	"_AllActivity.Disabled": "이 서버에서 모든 작업 보기가 비활성화되었습니다.",
	"_People.Unauthenticated": "모든 사람을 보려면 로그인하십시오.",
	"_AllActivity.Unauthenticated": "모든 작업을 보려면 로그인하십시오.",	
	"_Sharing.Notification.Updating.Subscription": "구독 정보 업데이트 중…",
	"_Sharing.Notification.Updating.Subscription.Succeeded": "구독 정보가 성공적으로 업데이트되었습니다.",
	"_Sharing.Notification.Updating.Subscription.Failed": "구독 정보를 업데이트할 수 없습니다. 다시 시도하십시오.",
	"_Sidebar.Document.Info.Title": "도큐멘트 정보",
	"_Sidebars.Close.Title": "닫기",
	"_Sidebars.Title.Unread.Count": "(%@개의 신규)",
	"_Sidebars.No.Results.Found": "검색 결과 없음",
	"_Sidebars.Show.More": "더 보기",
	"_Sidebars.Tags.Title": "태그",
	"_Sidebars.Tags.Empty.Placeholder": "태그 없음",
	"_Sidebars.Tags.Add.Tag": "태그 추가",
	"_Sidebars.Tags.Delete": "삭제",
	"_Sidebars.Comments.Title": "댓글",
	"_Sidebars.Comments.Empty.Placeholder": "댓글 없음",
	"_Sidebars.Comments.New.Comment": "새로운 댓글",
	"_Sidebars.Comments.Delete": "삭제",
	"_Sidebars.Comments.Approve": "승인",
	"_Sidebars.Comments.Unmoderated.Message": "이 댓글은 관리자가 승인하기 전까지는 다른 사람에게 보이지 않습니다.",
	"_Sidebars.Comments.Unmoderated.Banner": "관리 안 됨",
	"_Sidebars.Comments.Add.Comment": "댓글 추가",
	"_Sidebars.Related.Title": "참조",
	"_Sidebars.Related.Empty.Placeholder": "관련 도큐멘트 없음",
	"_Sidebars.Related.Remove": "제거",
	"_Sidebars.Related.Menu.Search.Title": "검색...",
	"_Sidebars.Related.Menu.Search.Tooltip": "도큐멘트를 검색하여 이 도큐멘트와 연계시킵니다.",
	"_Sidebars.Related.Menu.Recents.Title": "최근 사용 도큐멘트",
	"_Sidebars.Related.Menu.No.Recents.Placeholder": "최근 사용 도큐멘트 없음",
	"_Sidebars.Related.Search.Dialog.Title": "검색",
	"_Sidebars.Related.Search.Dialog.Placeholder": "Wiki 페이지 제목 또는 파일 이름",
	"_Sidebars.Related.Search.Dialog.Description": "기존의 Wiki 페이지 또는 파일 이름을 입력한 후에 승인을 클릭하여 이 도큐멘트와 연계시키십시오.",
	"_Sidebars.Related.Notification.Relate.Failed": "도큐멘트를 연계시킬 수 없습니다. 다시 시도하십시오.",
	"_Sidebars.Related.Notification.Unrelate.Failed": "관련 도큐멘트를 제거할 수 없습니다.",
	"_Sidebars.Related.Notification.Loading.Failed": "관련 도큐멘트를 로드할 수 없습니다.",
	"_Sidebars.Related.Status.RelatingDocument": "도큐멘트 연계 중…",
	"_Sidebars.History.Title": "기록",
	"_Sidebars.History.Empty.Placeholder": "기록 없음",
	"_Sidebars.Notifications.Title": "알림",
	"_Sidebars.Notifications.Container.Include.All.Activity": "모든 작업에 포함",
	"_Sidebars.Notifications.Container.Email.Updated": "업데이트되면 나에게 이메일 보내기",
	"_Sidebars.Notifications.Email.Me.When": "이메일 보내기:",
	"_Sidebars.Notifications.Email.Document.Updated": "도큐멘트가 업데이트되었을 때",
	"_Sidebars.Notifications.Email.Comments.Added": "댓글이 추가되었을 때",
	"_Sidebars.RecentDocuments.Title": "최근 사용 도큐멘트",
	"_Sidebars.RecentDocuments.Empty.Placeholder": "최근 사용 도큐멘트 없음",
	"_Sidebars.Sharing.Title": "공유",
	"_Sidebars.ModeratedComments.Title": "댓글 관리",
	"_Sidebars.UpcomingEvents.Title": "예정된 이벤트",
	"_Sidebars.UpcomingEvents.Empty.Placeholder": "예정된 이벤트 없음",
	"_WikiSetupAssistant.Name.Header": "새로운 Wiki 생성",
	"_WikiSetupAssistant.Name.HeaderSteps": "(1/3 단계)",
	"_WikiSetupAssistant.Name.TitleLabel": "이름",
	"_WikiSetupAssistant.Name.DescriptionLabel": "설명",
	"_WikiSetupAssistant.Button.Next": "계속",
	"_WikiSetupAssistant.Button.Previous": "뒤로 이동",
	"_WikiSetupAssistant.Button.Cancel": "취소",
	"_WikiSetupAssistant.Button.Create": "생성",
	"_WikiSetupAssistant.Button.Go": "Wiki로 이동",
	"_WikiSetupAssistant.Access.Header": "권한 설정",
	"_WikiSetupAssistant.Access.PermissionsLabel": "권한",
	"_WikiSetupAssistant.Access.HeaderSteps": "(2/3 단계)",
	"_WikiSetupAssistant.Appearance.Header": "모양새 설정",
	"_WikiSetupAssistant.Appearance.HeaderSteps": "(3/3 단계)",
	"_WikiSetupAssistant.Appearance.SchemeLabel": "색상 체계",
	"_WikiSetupAssistant.Complete.Header": "설정 완료",
	"_WikiSetupAssistant.Complete.Confirmation": "<span>무제</span> Wiki가 생성되었으며 사용할 준비가 되었습니다. <br />Wiki에서 추가 구성 옵션을 사용할 수 있습니다.",
	"_WikiSetupAssistant.ProvisionWiki.Failure": "새로운 Wiki를 생성할 수 없습니다. 다시 시도하십시오.",
	"_AccessEditor.SaveFailure": "ACL 저장 오류",
	"_AccessEditor.AuthenticatedLabel.NoUsers": "로그인한 모든 사용자",
	"_AccessEditor.AuthenticatedLabel.SomeUsers": "기타 로그인한 다른 사용자",
	"_MenuItem.Gear": "동작 메뉴...",
	"_MenuItem.Edit": "편집",
	"_MenuItem.LogIn": "로그인...",
	"_MenuItem.LogOut": "로그아웃...",
	"_MenuItem.Plus": "메뉴 추가...",
	"_MenuItem.Download": "다운로드",
	"_PlusMenu.Project": "새로운 Wiki 생성...",
	"_PlusMenu.Project.Page": "\'%@\'에 새로운 페이지 생성...",
	"_PlusMenu.Project.Blogpost": "\'%@\'에 새로운 블로그 포스트...",
	"_PlusMenu.Private.Page": "나의 도큐멘트에 새로운 페이지 생성...",
	"_PlusMenu.Private.Blogpost": "나의 블로그에 새로운 블로그 포스트...",
	"_ActionMenu.BulkApproveComments.Title": "모든 댓글 승인…",
	"_ActionMenu.Project.Settings.Title": "Wiki 설정...",
	"_ActionMenu.User.Settings.Title": "나의 사용자 설정...",
	"_ActionMenu.Replace.File.Title": "파일 대치...",
	"_ActionMenu.AssignToProject.Title": "Wiki로 이동...",
	"_ActionMenu.AssignToProject.Dialog.Title": "Wiki로 이동",
	"_ActionMenu.AssignToProject.Dialog.Description": "기존 Wiki의 이름을 입력하고, 목록에서 이를 선택한 후에 승인을 클릭하여 계속 진행합니다.",
	"_ActionMenu.AssignToProject.Dialog.Search.Placeholder": "Wiki 이름",
	"_ActionMenu.AssignToProject.Waiting": "\'%@1\'(으)로 이동 중",
	"_ActionMenu.AssignToProject.Success": "\'%@1\'(으)로 이동함",
	"_ActionMenu.AssignToProject.Failure": "도큐멘트를 이동할 수 없습니다. 다시 시도하십시오.",
	"_ActionMenu.AssignToProject.Project": "Wiki",
	"_ActionMenu.AssignToProject.Projects": "Wiki",
	"_ActionMenu.Delete.Title": "삭제...",
	"_ActionMenu.Delete.Page.Title": "페이지 삭제...",
	"_ActionMenu.Delete.Project.Title": "Wiki 삭제...",	
	"_ActionMenu.Delete.File.Title": "파일 삭제...",
	"_ActionMenu.Delete.Blog.Title": "블로그 포스트 삭제...",
	"_ActionMenu.Delete.Main.Title": "기본 페이지 삭제...",	
	"_ActionMenu.Hide.Person.Title": "사람 가리기...",
	"_ActionMenu.Unhide.Person.Title": "사람 가리기 해제...",
	"_ActionMenu.Help.Title": "도움말",
	"_Banner.About.Title": "정보",
	"_Banner.Home.Title": "홈",
	"_Banner.Activity.Title": "작업",
	"_Banner.Documents.Title": "도큐멘트",
	"_Banner.Tags.Title": "태그",
	"_Banner.Calendar.Title": "캘린더",
	"_Banner.Blog.Title": "블로그",
	"_CommentManager.Placeholder.No.Comments.Found": "댓글 없음",
	"_CommentManager.CommentDelete.Title": "댓글 삭제",
	"_CommentManager.CommentDelete.Description": "이 댓글을 영구적으로 삭제하겠습니까? 이 동작은 취소할 수 없습니다.",
	"_CommentManager.CommentDelete.Failure": "댓글을 제거할 수 없습니다.",
	"_CommentManager.CommentCreate.Failure": "댓글을 저장할 수 없습니다. 다시 시도하십시오.",
	"_CommentManager.CommentApprove.Failure": "댓글을 승인할 수 없습니다. 다시 시도하십시오.",
	"_Comments.Edit": "편집",
	"_Comments.Done": "완료",
	"_Tagger.TagAdded.Success": "'%@'(으)로 태그됨",
	"_Tagger.TagAdded.Failure": "태그를 추가할 수 없습니다. 다시 시도하십시오.",
	"_Tagger.TagRemoved.Failure": "태그를 제거할 수 없습니다.",
	"_SharingDialog.Title": "공유 설정 편집",
	"_CollapsibleList.More": "더 보기(%@)",
	"_CollapsibleList.Less": "덜 보기",
	"_EntityList.Pagination.Failure": "결과를 더 로드할 수 없습니다. 다시 시도하십시오.",
	"_BlogList.Pagination.Failure": "블로그 포스트를 더 로드할 수 없습니다. 다시 시도하십시오.",
	"_MarkAllAsRead.Description": "모든 업데이트를 읽음으로 표시하겠습니까?",
	"_MarkAllAsRead.Title": "모두 읽음으로 표시",
	"_UpcomingEventsSidebar.GettingEvents": "이벤트 가져오는 중…",
	"_People.Welcome.Page.Default.Intro": "프로파일 페이지입니다. Wiki 사용자가 이 페이지를 편집하여 본인에 대한 정보를 공유할 수 있습니다.",
	"_People.Welcome.Page.Default.Outro": "편집에 관한 추가 정보를 보려면 동작(기어 모양) 버튼을 클릭하고 도움말을 선택하십시오.",
	"_Settings.Projects.Title": "Wiki 설정",
	"_Settings.People.Title": "사용자 설정",
	"_Settings.CommentAccess.Label": "댓글",
	"_Settings.CommentAccess.All": "모든 사용자",
	"_Settings.CommentAccess.Authenticated": "인증된 사용자",
	"_Settings.CommentAccess.Disabled": "사용 안 함",
	"_Settings.CommentModeration.Label": "댓글 관리",
	"_Settings.CommentModeration.All": "모든 댓글",
	"_Settings.CommentModeration.Anonymous": "익명의 댓글만",
	"_Settings.CommentModeration.Disabled": "없음",
	"_Settings.Notification": "새로운 구성원에게 이메일 알림 보내기",	
	"_Settings.ColorScheme.Label": "색상 체계",
	"_Settings.Theme.Color.Green": "초록색",
	"_Settings.Theme.Color.Blue": "파란색",
	"_Settings.Theme.Color.Red": "빨간색",
	"_Settings.PreferredEmail.Label": "선호하는 이메일",
	"_Settings.About.Example": "예제 페이지",
	"_Settings.Services": "서비스",
	"_Settings.Services.Blog": "블로그",
	"_Settings.Services.Calendar": "캘린더",
	"_Settings.Breadcrumb.Title": "설정",
	"_Settings.General": "일반",
	"_Settings.Appearance": "모양새",	
	"_Settings.People.Name": "표시 이름",
	"_Settings.People.Permissions": "블로그 권한",
	"_Settings.People.AccessEditor.Label": "사용자의 블로그에 접근할 수 있는 사용자 및 그룹:",
	"_Settings.Projects.Name": "Wiki 이름",
	"_Settings.Projects.Description": "Wiki 설명",
	"_Settings.Projects.Permissions": "권한",
	"_Settings.Projects.AccessEditor.Label": "이 Wiki에 접근할 수 있는 사용자 및 그룹:",
	"_BulkApproveComments.Confirm.Dialog.Title": "댓글 승인",
	"_BulkApproveComments.Confirm.Dialog.Description": "모든 댓글을 승인하겠습니까?",
	"_BulkApproveComments.Confirm.Dialog.Description.Page": "이 페이지에 있는 댓글을 모두 승인하겠습니까? 댓글을 승인하면, 이 페이지를 볼 권한이 있는 모든 사용자가 볼 수 있습니다.",
	"_BulkApproveComments.Confirm.Dialog.Description.Wiki": "이 Wiki에 있는 댓글을 모두 승인하겠습니까? 댓글을 승인하면, 이 Wiki를 볼 권한이 있는 모든 사용자가 볼 수 있습니다.",
	"_BulkApproveComments.OK": "승인",
	"_BulkApproveComments.Progress.Approving": "댓글 승인 중…",
	"_BulkApproveComments.Progress.Failed": "댓글을 승인할 수 없습니다. 다시 시도하십시오.",
	"_Tags.Placeholder.Loading": "태그 로드 중...",
	"_Tags.Placeholder.Empty": "태그를 찾을 수 없음",
	// Grouping section headers for tags page. Wildcard header '*' matches anything remaining.
	"_Tags.Groupings.Headers.Keys": "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z",
	"_Tags.Groupings.Headers.DisplayName.1": "A",
	"_Tags.Groupings.Headers.DisplayName.2": "B",
	"_Tags.Groupings.Headers.DisplayName.3": "C",
	"_Tags.Groupings.Headers.DisplayName.4": "D",
	"_Tags.Groupings.Headers.DisplayName.5": "E",
	"_Tags.Groupings.Headers.DisplayName.6": "F",
	"_Tags.Groupings.Headers.DisplayName.7": "G",
	"_Tags.Groupings.Headers.DisplayName.8": "H",
	"_Tags.Groupings.Headers.DisplayName.9": "I",
	"_Tags.Groupings.Headers.DisplayName.10": "J",
	"_Tags.Groupings.Headers.DisplayName.11": "K",
	"_Tags.Groupings.Headers.DisplayName.12": "L",
	"_Tags.Groupings.Headers.DisplayName.13": "M",
	"_Tags.Groupings.Headers.DisplayName.14": "N",
	"_Tags.Groupings.Headers.DisplayName.15": "O",
	"_Tags.Groupings.Headers.DisplayName.16": "P",
	"_Tags.Groupings.Headers.DisplayName.17": "Q",
	"_Tags.Groupings.Headers.DisplayName.18": "R",
	"_Tags.Groupings.Headers.DisplayName.19": "S",
	"_Tags.Groupings.Headers.DisplayName.20": "T",
	"_Tags.Groupings.Headers.DisplayName.21": "U",
	"_Tags.Groupings.Headers.DisplayName.22": "V",
	"_Tags.Groupings.Headers.DisplayName.23": "W",
	"_Tags.Groupings.Headers.DisplayName.24": "X",
	"_Tags.Groupings.Headers.DisplayName.25": "Y",
	"_Tags.Groupings.Headers.DisplayName.26": "Z",
	"_Tags.Groupings.Headers.DisplayName.27": " ",
	"_Tags.Groupings.Headers.DisplayName.28": " ",
	"_Tags.Groupings.Headers.DisplayName.29": " ",
	"_Tags.Groupings.Headers.DisplayName.30": " ",
	"_Tags.Groupings.Headers.DisplayName.31": " ",
	"_Tags.Groupings.Headers.DisplayName.32": " ",
	"_Tags.Groupings.Headers.DisplayName.33": " ",
	"_Tags.Groupings.Headers.DisplayName.34": " ",
	"_Tags.Groupings.Headers.DisplayName.35": " ",
	"_Tags.Groupings.Headers.DisplayName.36": " ",
	"_Tags.Groupings.Headers.DisplayName.37": " ",
	"_Tags.Groupings.Headers.DisplayName.38": " ",
	"_Tags.Groupings.Headers.DisplayName.39": " ",
	"_Tags.Groupings.Headers.DisplayName.40": " ",
	"_Tags.Groupings.Headers.DisplayName.41": " ",
	"_Tags.Groupings.Headers.DisplayName.42": " ",
	"_Tags.Groupings.Headers.DisplayName.43": " ",
	"_Tags.Groupings.Headers.DisplayName.44": " ",
	"_Tags.Groupings.Headers.DisplayName.45": " ",
	"_Tags.Groupings.Headers.DisplayName.46": " ",
	"_Tags.Groupings.Headers.DisplayName.47": " ",
	"_Tags.Groupings.Headers.DisplayName.48": " ",
	"_Tags.Groupings.Headers.DisplayName.49": " ",
	"_Tags.Groupings.Headers.DisplayName.50": " ",
	// "Starts with" substring matches for each grouping header. For each grouping header defined above,
	// defines all the possible starting patterns for items appearing in that particular tag grouping.
	// e.g. "_Tags.Groupings.Headers.Patterns.A": "App" will include any tags that match "App"
	// exactly or start with the pattern "App" (e.g. "Apple", "Applications" etc).
	"_Tags.Groupings.Headers.Patterns.1": "A,a",
	"_Tags.Groupings.Headers.Patterns.2": "B,b",
	"_Tags.Groupings.Headers.Patterns.3": "C,c",
	"_Tags.Groupings.Headers.Patterns.4": "D,d",
	"_Tags.Groupings.Headers.Patterns.5": "E,e",
	"_Tags.Groupings.Headers.Patterns.6": "F,f",
	"_Tags.Groupings.Headers.Patterns.7": "G,g",
	"_Tags.Groupings.Headers.Patterns.8": "H,h",
	"_Tags.Groupings.Headers.Patterns.9": "I,i",
	"_Tags.Groupings.Headers.Patterns.10": "J,j",
	"_Tags.Groupings.Headers.Patterns.11": "K,k",
	"_Tags.Groupings.Headers.Patterns.12": "L,l",
	"_Tags.Groupings.Headers.Patterns.13": "M,m",
	"_Tags.Groupings.Headers.Patterns.14": "N,n",
	"_Tags.Groupings.Headers.Patterns.15": "O,o",
	"_Tags.Groupings.Headers.Patterns.16": "P,p",
	"_Tags.Groupings.Headers.Patterns.17": "Q,q",
	"_Tags.Groupings.Headers.Patterns.18": "R,r",
	"_Tags.Groupings.Headers.Patterns.19": "S,s",
	"_Tags.Groupings.Headers.Patterns.20": "T,t",
	"_Tags.Groupings.Headers.Patterns.21": "U,u",
	"_Tags.Groupings.Headers.Patterns.22": "V,v",
	"_Tags.Groupings.Headers.Patterns.23": "W,w",
	"_Tags.Groupings.Headers.Patterns.24": "X,x",
	"_Tags.Groupings.Headers.Patterns.25": "Y,y",
	"_Tags.Groupings.Headers.Patterns.26": "Z,z",
	"_Tags.Groupings.Headers.Patterns.27": " ",
	"_Tags.Groupings.Headers.Patterns.28": " ",
	"_Tags.Groupings.Headers.Patterns.29": " ",
	"_Tags.Groupings.Headers.Patterns.30": " ",
	"_Tags.Groupings.Headers.Patterns.31": " ",
	"_Tags.Groupings.Headers.Patterns.32": " ",
	"_Tags.Groupings.Headers.Patterns.33": " ",
	"_Tags.Groupings.Headers.Patterns.34": " ",
	"_Tags.Groupings.Headers.Patterns.35": " ",
	"_Tags.Groupings.Headers.Patterns.36": " ",
	"_Tags.Groupings.Headers.Patterns.37": " ",
	"_Tags.Groupings.Headers.Patterns.38": " ",
	"_Tags.Groupings.Headers.Patterns.39": " ",
	"_Tags.Groupings.Headers.Patterns.40": " ",
	"_Tags.Groupings.Headers.Patterns.41": " ",
	"_Tags.Groupings.Headers.Patterns.42": " ",
	"_Tags.Groupings.Headers.Patterns.43": " ",
	"_Tags.Groupings.Headers.Patterns.44": " ",
	"_Tags.Groupings.Headers.Patterns.45": " ",
	"_Tags.Groupings.Headers.Patterns.46": " ",
	"_Tags.Groupings.Headers.Patterns.47": " ",
	"_Tags.Groupings.Headers.Patterns.48": " ",
	"_Tags.Groupings.Headers.Patterns.49": " ",
	"_Tags.Groupings.Headers.Patterns.50": " ",
	// All tags that don't match above groupings.
	"_Tags.Groupings.Header.Other": "기타",
	"_Tags.Show.More": "더 보기(%@)",
	"_Tags.Show.Less": "덜 보기",
	"_Tags.Edit": "편집",
	"_Tags.Edit.Tooltip": "태그를 편집합니다",
	"_Tags.Edit.Done": "완료",
	"_Tags.Delete": "삭제",
	"_Tags.Dialogs.Delete.Header": "태그 삭제",
	"_Tags.Dialogs.Delete.Description": "이 태그를 삭제하겠습니까? '%@' 태그가 붙은 모든 도큐멘트 또한 업데이트됩니다.",
	"_Tags.Dialogs.Delete.OK": "삭제",
	"_Tags.Dialogs.Delete.Progress": "태그 삭제 중...",
	"_Tags.Dialogs.Delete.Error": "태그를 삭제할 수 없습니다. 다시 시도하십시오.",
	"_Tags.Dialogs.Edit.Header": "태그 편집",
	"_Tags.Dialogs.Edit.Description": "이 태그에 대한 새로운 이름을 입력하십시오. '%@' 태그가 붙은 모든 도큐멘트 또한 업데이트됩니다.",
	"_Tags.Dialogs.Edit.Tag.Label": "태그 이름",
	"_Tags.Dialogs.Edit.OK": "승인",
	"_Tags.Dialogs.Edit.Progress": "태그 이름 변경 중...",
	"_Tags.Dialogs.Edit.Error": "태그 이름을 변경할 수 없습니다. 다시 시도하십시오.",
	// Web Calendar (personal and wiki)
	"_Calendar.Progress.GettingEvents": "서버에서 이벤트 가져오는 중…",
	"_Calendar.Calendar": "캘린더",
	"_Calendar.Header.Today": "오늘",
	"_Calendar.Header.Day": "일",
	"_Calendar.Header.Day.Tooltip": "한 번에 하루 단위로 봅니다",
	"_Calendar.Header.Week": "주",
	"_Calendar.Header.Week.Tooltip": "한 번에 일주일 단위로 봅니다",
	"_Calendar.Header.Month": "월",
	"_Calendar.Header.Month.Tooltip": "달 전체를 봅니다",
	"_Calendar.Header.Settings": "설정",
	"_Calendar.Sidebar.Info": "캘린더 설정",
	"_Calendar.Sidebar.Notifications": "알림",
	"_Calendar.Sidebar.NewCalendarCollection": "새로운 캘린더 추가",
	"_Calendar.Sidebar.ShowHideMiniMonth": "미니 캘린더",
	"_Calendar.Sidebar.MiniMonth": "날짜",
	"_Calendar.Sidebar.ShowHideInbox": "알림",
	"_Calendar.Sidebar.Inbox": "받은 편지함",
	"_Calendar.Sidebar.Inbox.Cancelled": "이벤트 취소됨",
	"_Calendar.Sidebar.Inbox.Organizer": "%(organizer)s",
	"_Calendar.Sidebar.Inbox.Status.TENTATIVE": "보류",
	"_Calendar.Sidebar.Inbox.Status.ACCEPTED": "동의",
	"_Calendar.Sidebar.Inbox.Status.DECLINED": "거절",
	"_Calendar.Title": "%(principalDisplayName)s의 캘린더",
	"_Calendar.Title.MyCalendar": "나의 캘린더",
	"_Calendar.Errors.NoServer": "캘린더 서버가 실행 중이 아니기 때문에 캘린더에 접근할 수 없습니다.",
	"_Calendar.Errors.NoAccess": "이 캘린더에서 이 동작을 수행할 권한이 없습니다. 접근할 수 없는 캘린더를 보려고 시도했을 수 있습니다.",
	"_Calendar.Errors.PrincipalNotFound": "이 사용자에게 캘린더 기능이 허용되지 않기 때문에 캘린더에 접근할 수 없습니다.",
	"_Calendar.Errors.FileNotFound": "캘린더 서버에서 오류를 보고했습니다: 파일을 찾을 수 없습니다.",
	"_Calendar.Errors.ProbableHTTPSRedirect": "웹 서비스가 올바르지 않게 구성되었기 때문에 캘린더에 접근할 수 없습니다.",
	"_Calendar.Errors.ModificationsInProgress": "이전 수정사항이 아직 적용되지 않았기 때문에 변경사항을 저장할 수 없습니다. 몇 초 후에 다시 시도하십시오.",
	"_Calendar.Errors.UnsupportedBrowser": "모바일 Safari에서는 웹 캘린더를 사용할 수 없습니다.  iPad, iPhone, iPod touch, Mac에 있는 캘린더 응용 프로그램에서 접근을 구성하거나 Mac 또는 Windows가 설치된 PC의 웹 브라우저에서 해당 항목을 볼 수 있습니다.",
	"_Calendar.Errors.Unknown": "오류가 발생했기 때문에 캘린더에 접근할 수 없습니다.",
	"_Calendar.AMPM.AM": "오전",
	"_Calendar.AMPM.PM": "오후",
	"_Calendar.Color.Blue": "파란색",
	"_Calendar.Color.Green": "초록색",
	"_Calendar.Color.Red": "빨간색",
	"_Calendar.Color.Orange": "귤색",
	"_Calendar.Color.Pink": "분홍색",
	"_Calendar.Color.Purple": "보라색",
	"_Calendar.Color.Custom": "사용자화",
	"_Calendar.Appointments.DefaultSummary": "새로운 이벤트",
	"_Calendar.Appointments.AllDay": "하루 종일",
	"_Calendar.Appointments.More": "%(count)s개 모두 보기…",
	"_Calendar.Tooltips.Location": "위치:",
	"_Calendar.Tooltips.Description": "메모:",
	"_Calendar.Dialogs.Appointment.Title": "이벤트",
	"_Calendar.Dialogs.Appointment.Tabs.General": "일반",
	"_Calendar.Dialogs.Appointment.Tabs.Attendees": "초대받은 사람",
	"_Calendar.Dialogs.Appointment.Tabs.Notes": "메모",
	"_Calendar.Dialogs.Appointment.Summary": "제목",
	"_Calendar.Dialogs.Appointment.Location": "위치",
	"_Calendar.Dialogs.Appointment.StartTime": "시작 시간",
	"_Calendar.Dialogs.Appointment.EndTime": "종료 시간",
	"_Calendar.Dialogs.Appointment.AllDayEvent": "하루 종일 이벤트",
	"_Calendar.Dialogs.Appointment.Calendar": "캘린더",
	"_Calendar.Dialogs.Appointment.Repeat.Label": "반복",
	"_Calendar.Dialogs.Appointment.Repeat.none": "없음",
	"_Calendar.Dialogs.Appointment.Repeat.DAILY": "매일",
	"_Calendar.Dialogs.Appointment.Repeat.WEEKLY": "매주",
	"_Calendar.Dialogs.Appointment.Repeat.MONTHLY": "매달",
	"_Calendar.Dialogs.Appointment.Repeat.YEARLY": "매년",
	"_Calendar.Dialogs.Appointment.Repeat.custom": "사용자화",
	"_Calendar.Dialogs.Appointment.Repeat.End.Label": "종료",
	"_Calendar.Dialogs.Appointment.Repeat.End.Never": "안 함",
	"_Calendar.Dialogs.Appointment.Repeat.End.After": "다음",
	"_Calendar.Dialogs.Appointment.Repeat.End.times": "번 후",
	"_Calendar.Dialogs.Appointment.Repeat.End.On_date": "날짜",
	"_Calendar.Dialogs.Appointment.Attendees.Hint": "초대받은 사람 추가",
	"_Calendar.Dialogs.Appointment.Attendees.Organizer": "주최자",
	"_Calendar.Dialogs.Appointment.Attendees.Name": "이름",
	"_Calendar.Dialogs.Appointment.Delete": "삭제",
	"_Calendar.Dialogs.Appointment.Save.Progress": "이벤트 저장 중…",
	"_Calendar.Dialogs.Invitation.Title": "%(organizer)s(으)로부터의 초대",
	"_Calendar.Dialogs.Invitation.Summary": "제목",
	"_Calendar.Dialogs.Invitation.Location": "위치",
	"_Calendar.Dialogs.Invitation.Date": "날짜",
	"_Calendar.Dialogs.Invitation.Calendar": "캘린더",
	"_Calendar.Dialogs.Invitation.Attendees": "초대받은 사람",
	"_Calendar.Dialogs.Invitation.Attendees.Remove": "제거",
	"_Calendar.Dialogs.Invitation.Notes": "메모",
	"_Calendar.Dialogs.Invitation.MyStatus": "나의 상태",
	"_Calendar.Dialogs.Invitation.MyStatus.TENTATIVE": "보류",
	"_Calendar.Dialogs.Invitation.MyStatus.ACCEPTED": "승인",
	"_Calendar.Dialogs.Invitation.MyStatus.DECLINED": "거절",
	"_Calendar.Dialogs.Invitation.Organizer": "%(displayname)s(주최자)",
	"_Calendar.Dialogs.Invitation.SeeAllAttendees": "%(count)s명 모두 보기…",
	"_Calendar.Dialogs.Settings.Title": "설정",
	"_Calendar.Dialogs.Settings.Timezone": "시간대",
	"_Calendar.Dialogs.Settings.Availability": "사용 가능한 시간",
	"_Calendar.Dialogs.Settings.Availability.Weekdays": "주중",
	"_Calendar.Dialogs.Settings.Availability.Custom": "사용자화",
	"_Calendar.Dialogs.Settings.Availability.To": "~",
	"_Calendar.Dialogs.Settings.StartWeekOn": "시작 요일",
	"_Calendar.Dialogs.Settings.Delegates": "위임",
	"_Calendar.Dialogs.Settings.Delegates.Hint": "위임 추가",
	"_Calendar.Dialogs.Settings.Delegates.ReadOnly": "읽기 전용",
	"_Calendar.Dialogs.Settings.Delegates.ReadWrite": "읽기/쓰기",
	"_Calendar.Dialogs.CalendarInfo.Title": "캘린더 설정",
	"_Calendar.Dialogs.CalendarInfo.Name": "캘린더 이름",
	"_Calendar.Dialogs.CalendarInfo.Color": "캘린더 색상",
	"_Calendar.Dialogs.CalendarInfo.ShareWithMe": "나의 캘린더에 추가",
	"_Calendar.Dialogs.CalendarInfo.ShareWithMe.Confirmation": "이제 사용자의 캘린더 응용 프로그램에서 \'%(calendarName)s\' 캘린더를 볼 수 있습니다.\n\'%(serverName)s\'에 대해 캘린더 계정이 설정되어 있는지 확인하십시오.",
	"_Calendar.Dialogs.CalendarInfo.Subscribe": "구독",
	"_Calendar.Dialogs.CalendarInfo.Delete": "삭제",
	"_Calendar.Dialogs.CalendarInfo.Delete.Progress": "캘린더 삭제 중…",
	"_Calendar.Dialogs.CalendarInfo.Save.Progress": "캘린더 저장 중…",
	"_Calendar.Dialogs.CalendarInfo.Delete.Confirmation": "정말 \'%(calendarName)s\' 캘린더를 삭제하겠습니까? 이 캘린더에 포함된 모든 이벤트가 삭제될 것입니다. 이 동작은 취소할 수 없습니다.",
	"_Calendar.Dialogs.NewCalendar.Title": "캘린더 생성",
	"_Calendar.Dialogs.NewCalendar.Name": "캘린더 이름",
	"_Calendar.Dialogs.NewCalendar.Color": "캘린더 색상",
	"_Calendar.Dialogs.NewCalendar.Untitled": "무제",
	"_Calendar.Dialogs.NewCalendar.Create": "생성",
	"_Calendar.Dialogs.Delete.Title": "정말로 이벤트를 삭제하겠습니까?",
	"_Calendar.Dialogs.Delete.Progress": "이벤트 삭제 중…",
	"_Calendar.Dialogs.Updating.Progress": "이벤트 업데이트 중…",
	"_Calendar.Dialogs.DeleteFirst.Title": "이벤트 삭제",
	"_Calendar.Dialogs.DeleteFirst.Description": "이 이벤트의 모든 내용을 삭제하겠습니까, 아니면 선택한 내용만 삭제하겠습니까?",
	"_Calendar.Dialogs.DeleteFirst.DeleteOnlyThis": "이 이벤트만 삭제",
	"_Calendar.Dialogs.DeleteFirst.DeleteAllFuture": "이후의 모든 이벤트 삭제",
	"_Calendar.Dialogs.DeleteNth.Title": "이벤트 삭제",
	"_Calendar.Dialogs.DeleteNth.Description": "이 이벤트와 이 이벤트의 모든 내용을 삭제하겠습니까, 아니면 선택한 내용만 삭제하겠습니까?",
	"_Calendar.Dialogs.DeleteNth.DeleteOnlyThis": "이 이벤트만 삭제",
	"_Calendar.Dialogs.DeleteNth.DeleteAllFuture": "이후의 모든 이벤트 삭제",
	"_Calendar.Dialogs.UpdateRecurrence.Title": "반복 규칙 변경 중",
	"_Calendar.Dialogs.UpdateRecurrence.Description": "모든 이후의 이벤트에 대한 반복 규칙을 수정하겠습니까?",
	"_Calendar.Dialogs.UpdateRecurrence.Change": "변경",
	"_Calendar.Dialogs.ChangeFirst.Title": "반복 이벤트 변경 중",
	"_Calendar.Dialogs.ChangeFirst.Description": "반복 이벤트를 변경하려고 합니다. 이벤트의 현재 내용만 변경하겠습니까, 아니면 모든 이벤트를 변경하겠습니까?",
	"_Calendar.Dialogs.ChangeFirst.OnlyThis": "이 이벤트만",
	"_Calendar.Dialogs.ChangeFirst.All": "모두",
	"_Calendar.Dialogs.ChangeNth.Title": "반복 이벤트 변경 중",
	"_Calendar.Dialogs.ChangeNth.Description": "반복 이벤트를 변경하려고 합니다. 이벤트의 현재 내용만 변경하겠습니까, 아니면 현재 내용과 이후의 모든 이벤트를 변경하겠습니까?",
	"_Calendar.Dialogs.ChangeNth.OnlyThis": "이 이벤트만",
	"_Calendar.Dialogs.ChangeNth.All": "모두",
	"_Calendar.Notifications.AppointmentSaved": "이벤트가 저장되었습니다.",
	"_Calendar.DateFormats.DayHeader": "M j일(l)",
	"_Calendar.Logout": "로그아웃",
	
	// WAI ARIA - Accessiblity
	"_Accessibility.Dialog.Settings": "설정 대화상자",
	"_Accessibility.Navigation.Left": "왼쪽 패널",
	"_Accessibility.Navigation.Settings": "설정",
	"_Accessibility.Navigation.Actions": "동작",
	"_Accessibility.Navigation.TagGroup": "태그 그룹",
	"_Accessibility.Navigation.TagWithLetter": "문자로 태그",
	"_Accessibility.Navigation.Search": "검색",
	"_Accessibility.Navigation.RecentDocuments": "최근 사용 도큐멘트",
	"_Accessibility.Label.DocumentInfo": "도큐멘트 정보",
	"_Accessibility.Label.Color": "색상",
	"_Accessibility.Group.Color": "색상",
	"_Accessibility.Acls.All": "모든 사용자 ACL",
	"_Accessibility.Added.All": "추가된 사용자 ACL"
});
