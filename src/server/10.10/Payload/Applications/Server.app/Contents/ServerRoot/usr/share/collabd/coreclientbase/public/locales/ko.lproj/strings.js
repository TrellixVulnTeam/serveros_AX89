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
	"_Loading": "로드 중...",
	"_UnsupportedBrowser.Warning": "사용자의 브라우저가 지원되지 않습니다.\n\nOS X Server에서 Wiki 서버 및 Xcode 서버를 사용하려면 최신 버전의 Safari, Chrome, Firefox 또는 Internet Explorer를 사용해야 합니다. iPod touch, iPhone 또는 iPad에서 이 페이지를 방문할 수도 있습니다.",
	"_Errors.403": "이 페이지를 볼 수 있는 권한이 없습니다.",
	"_Errors.404": "찾고 있는 페이지를 찾을 수 없습니다.",
	"_Errors.500": "예기치 않은 오류가 발생했습니다. 이 페이지를 새로 고치십시오.",
	"_Errors.Calendar.Disabled": "캘린더가 이 서버에 대해 비활성화되었습니다.  관리자에게 문의하여 도움을 요청하십시오.",
	"_Errors.Wiki.Calendar.Disabled": "블로그가 비활성화되었습니다. 이 Wiki의 소유자가 Wiki 설정에서 캘린더를 활성화할 수 있습니다.",
	"_Errors.Wiki.Calendar.Disabled.NonSSL": "캘린더는 보안 연결이 필요합니다. 보안 URL을 통해 이 페이지를 방문하거나 관리자에게 문의하여 도움을 요청하십시오.",
	"_Errors.Wiki.Blog.Disabled": "블로그가 비활성화되었습니다. 이 Wiki의 소유자가 Wiki 설정에서 블로그를 활성화할 수 있습니다.",
	"_OSXServer": "OS X Server",
	"_Loading": "로드 중...",
	"_General.Wikis": "Wiki",
	"_General.People": "사람",
	"_General.Tags": "태그",
	"_General.All.Wikis": "모든 Wiki",
	"_General.All.People": "모든 사람",
	"_General.All.Tags": "모든 태그",
	"_General.Documents": "도큐멘트",
	"_General.No.Results.Found": "검색 결과 없음",
	"_General.No.Wikis.Found": "발견된 Wiki 없음",
	"_General.No.People.Found": "발견된 사람 없음",
	"_General.Loading": "로드 중...",
	"_General.Navigation": "탐색",
	"_General.Home": "홈",
	"_General.Profile": "프로파일",
	"_General.Error.NotFound": "페이지를 찾을 수 없음",
	"_General.Error.PermissionDenied": "권한 거부됨",
	"_General.Error.Unknown": "알 수 없는 오류 발생",
	"_General.Save": "저장",
	"_General.Cancel": "취소",
	"_Project.Default.Title": "무제 프로젝트",
	"_Page.Default.Title": "무제 페이지",
	"_Blog.Default.Title": "블로그",
	"_Access.Role.own": "소유자",
	"_Access.Role.write": "읽기 및 쓰기",
	"_Access.Role.read": "읽기 전용",
	"_Access.Role.none": "접근할 수 없음",
	"_Access.User.unauthenticated": "인증되지 않은 모든 사용자",
	"_Access.User.authenticated": "로그인한 모든 사용자",
	"_Access.Remove": "제거",
	"_Access.Autocomplete.Placeholder": "여기에 사용자 또는 그룹 이름 입력",
	"_General.Unread.Toggle.Title": "읽지 않음 토글",
	"_General.Favorite.Toggle.Title": "즐겨찾기 토글",
	"_General.Load.More": "추가 로드...",
	"_General.No.Results.Found": "검색 결과 없음",
	"_General.LastModified.Format": "%@2이(가) %@1에 업데이트함",
	"_General.LastActivity.Format": "마지막 작업 %@",
	"_General.Container.Subtitle.Wiki": "\'%@\' Wiki에서",
	"_General.Container.Subtitle.User": "%@의 도큐멘트에서",
	"_General.Container.Subtitle.Blog": "\'%@\' 블로그에서",
	"_General.Container.Description": "설명",
	"_EntityTitle.PageTitle.Untitled": "무제",
	"_EntityTitle.LastModified": "%@2이(가) %@1에 업데이트함",
	"_EntityTitle.LastModified.Unauthenticated": "인증되지 않음",
	"_FilterBarView.Filters.Everything.Title": "모두",
	"_FilterBarView.Filters.Everything.Tooltip": "모두 봅니다",
	"_FilterBarView.Filters.Everywhere.Title": "모든 위치",
	"_FilterBarView.Filters.Everywhere.Tooltip": "모든 위치를 봅니다",
	"_FilterBarView.Filters.Deleted.Title": "삭제됨",
	"_FilterBarView.Filters.Deleted.Tooltip": "삭제된 항목만 봅니다",
	"_FilterBarView.Filters.Unread.Title": "읽지 않음",
	"_FilterBarView.Filters.Unread.Tooltip": "읽지 않음만 봅니다",
	"_FilterBarView.Filters.Favorites.Title": "즐겨찾기",
	"_FilterBarView.Filters.Favorites.Tooltip": "즐겨찾기만 봅니다",
	"_FilterBarView.SortBy": "다음으로 정렬",
	"_FilterBarView.SortKeys.Rank.Title": "가장 관련성이 높음",
	"_FilterBarView.SortKeys.Rank.Tooltip": "가장 최근 항목부터 먼저 정렬합니다",
	"_FilterBarView.SortKeys.Title.Title": "제목",
	"_FilterBarView.SortKeys.Title.Tooltip": "제목순으로 정렬합니다",
	"_FilterBarView.SortKeys.MostRecent.Title": "최신 항목",
	"_FilterBarView.SortKeys.MostRecent.Tooltip": "가장 최근 항목을 먼저 봅니다",
	"_FilterBarView.SortKeys.LeastRecent.Title": "예전 항목",
	"_FilterBarView.SortKeys.LeastRecent.Tooltip": "가장 이전 항목을 먼저 봅니다",
	"_FilterBarView.Filter": "필터",
	"_QuickLook.Status.Preview.Loading": "미리보기 로드 중…",
	"_QuickLook.Status.Preview.Missing": "이 파일은 미리보기가 없습니다. 다시 업로드해 보십시오.",
	"_QuickLook.Thumbnail.Page.Count": "%@/%@페이지",
	"_QuickLook.Thumbnail.Scroll.Up": "이전 보기",
	"_QuickLook.Thumbnail.Scroll.Down": "다음 보기",
	"_Files.PreviewMissing": "사용 가능한 미리보기 없음",
	"_Files.Pagination.Page.Count": "%@/%@페이지",
	"_Files.Pagination.Load.More": "추가 로드...",
	"_Revisions.Controls.Cancel.Label": "취소",
	"_Revisions.Controls.Restore.Label": "복원",
	"_Revisions.Controls.ShowChanges.Label": "변경사항 보기",
	"_Revisions.Controls.HideChanges.Label": "변경사항 가리기",	
	"_AvatarEditor.UploadFailed": "이미지를 업로드할 수 없습니다. 다시 시도하십시오.",
	"_AvatarEditor.Upload": "업로드...",
	"_AvatarEditor.Replace": "대치...",
	"_Settings.Avatar.Projects.Label": "Wiki 아이콘",
	"_Settings.Avatar.People.Label": "나의 아이콘",
	"_Settings.Avatar.UploadButton": "업로드...",
	"_Settings.Avatar.ReplaceButton": "대치...",
	"_Settings.Avatar.DeleteButton": "삭제",
	"_Settings.Avatar.Placeholder": "이미지 추가",
	"_Settings.Avatar.Remove": "이미지 제거",
	"_Settings.BannerImage.Label": "사용자 설정 배너",
	"_Settings.BannerImage.Help": "배너 이미지 높이는 124픽셀이어야 합니다.",
	"_Settings.BackgroundImage.Label": "사용자 설정 배경",
	"_Settings.Save.Progress.Message": "설정 저장 중…",
	"_Settings.Save.Error.Message": "설정을 저장할 수 없습니다. 다시 시도하십시오.",
	"_Files.Upload.Dialog.Title": "파일 업로드",
	"_Files.Upload.Dialog.Label": "파일",
	"_Files.Upload.Dialog.OK": "업로드",
	"_Files.Progress.Uploading": "  업로드 중...  ",
	"_PlusMenu.Project.File": "\'%@\'에 파일 업로드...",
	"_PlusMenu.Private.File": "나의 도큐멘트에 파일 업로드...",
	"_Activity.No.Results.Found": "발견된 작업 없음",
	"_Activity.All": "모든 작업",
	"_Activity.My" : "나의 작업",
	"_Activity.None" : "작업 없음",
	"_Activity.ShortTitle" : "작업",
	"_Activity.More.Count.Singular": "1개의 추가 업데이트",
	"_Activity.More.Count.Plural": "%@개의 추가 업데이트",
	"_Activity.More.Hide": "가리기",
	"_Activity.MarkAllRead": "모두 읽음으로 표시",
	// User performed action Today at 12:00 PM
	"_Activity.Action.TagAdded": "%@1이(가) %@3에 \'%@2\' 태그를 추가함",
	"_Activity.Action.TagRemoved": "%@1이(가) %@3에 \'%@2\' 태그를 제거함",
	"_Activity.Action.EntityCreated": "%@1이(가) %@2에 생성함",
	"_Activity.Action.EntityUpdated": "%@1이(가) %@2에 편집함",
	"_Activity.Action.EntityRenamed": "%@1의 이름이 %@4에 \'%@2\'에서 \'%@3\'(으)로 변경됨",
	"_Activity.Action.EntityRemoved": "%@1이(가) %@3에 %@2을(를) 삭제함",
	"_Activity.Action.EntityMoved": "%@1이(가) %@3에 \'%@2\'(으)로 이동함",
	"_Activity.Action.RelationshipAdded": "%@1이(가) %@3에 %@2을(를) 관련시킴",
	"_Activity.Action.RelationshipRemoved": "%@1이(가) %@3에 %@2을(를) 관련 해제시킴",
	"_Activity.Action.CommentAdded": "%@1이(가) %@3에 \'%@2\' 댓글을 남김",
	"_Activity.Action.CommentRemoved": "%@1이(가) %@3에 \'%@2\' 댓글을 삭제함",
	"_Activity.Action.CommentApproved": "%@1이(가) %@3에 \'%@2\' 댓글을 승인함",
	"_Activity.Action.BlogEnabled": "%@1이(가) %@2 블로그를 활성화함",
	"_Activity.Action.BlogDisabled": "%@1이(가) %@2 블로그를 비활성화함",
	"_Activity.Action.CalendarEnabled": "%@1이(가) %@2 캘린더를 활성화함",
	"_Activity.Action.CalendarDisabled": "%@1이(가) %@2 캘린더를 비활성화함",
	"_Activity.Action.Coalesced.TagAdded": "%@1이(가) %@3에 %@2개의 태그를 추가함",
	"_Activity.Action.Coalesced.TagRemoved": "%@1이(가) %@3에 %@2개의 태그를 제거함",
	"_Activity.Action.Coalesced.EntityUpdated": "%@1이(가) %@3에 %@2번 편집함",	
	"_Activity.Action.Coalesced.RelationshipAdded": "%@1이(가) %@3에 %@2개의 도큐멘트를 관련시킴",
	"_Activity.Action.Coalesced.RelationshipRemoved": "%@1이(가) %@3에 %@2개의 도큐멘트를 관련 해제시킴",
	"_Activity.Action.Coalesced.CommentAdded": "%@1이(가) %@3에 %@2개의 댓글을 추가함",
	"_Activity.Action.Coalesced.CommentRemoved": "%@1이(가) %@3에 %@2개의 댓글을 제거함",
	"_Activity.Action.Coalesced.CommentApproved": "%@1이(가) %@3에 %@2개의 댓글을 승인함",
	"_ActionMenu.Help.Title":"도움말",
	// Today at 12:00 PM
	"_DateTime.Unknown": "알 수 없음",
	"_DateTime.Format": "%@1 %@2",
	"_DateTime.NoAt.Format": "%@1 %@2",
	"_DateTime.Short.Format": "%@2년 %@1",
	"_Date.Month.Names": "1월,2월,3월,4월,5월,6월,7월,8월,9월,10월,11월,12월",
	"_Date.Short.Month.Names": "1월,2월,3월,4월,5월,6월,7월,8월,9월,10월,11월,12월",
	"_Date.Day.Names": "일요일,월요일,화요일,수요일,목요일,금요일,토요일",
	"_Date.Short.Day.Names": "일,월,화,수,목,금,토",
	"_Date.Today": "오늘",
	"_Date.Yesterday": "어제",
	"_Date.Tomorrow": "내일",
	"_Date.Unknown": "알 수 없는 날짜",
	// mm/dd/yyyy
	"_Date.Default.Format": "%@3. %@1. %@2.",
	// Month Date
	"_Date.Short.Format": "%@1 %@2일",
	// Month Date, Year
	"_Date.Long.Format": "%@3년 %@1 %@2일",
	"_Date.Long.WithTime.Format": "%@3년 %@1 %@2일 %@4",
	"_Time.AM": "오전",
	"_Time.PM": "오후",
	// 7:30 AM
	"_Time.Default.Format": "%@3 %@1:%@2",
	"_Time.Unknown": "알 수 없는 시간",
	"_Duration.MoreThanADay": "하루 이상",
	"_Duration.LessThanAMinute": "1분 미만",
	"_Duration.SingleHourMinutes": "1시간 %@분",
	"_Duration.SingleHourSingleMinutes": "1시간 1분",
	"_Duration.PluralHourMinutes": "%@1시간 %@2분",
	"_Duration.PluralHourSingleMinutes": "%@시간 1분",
	"_Duration.Hours": "%@시간",
	"_Duration.Minutes": "%@분",
	"_Duration.Seconds": "%@초",
	"_TimeDifference.SingleDaysAgo": "1일 전",
	"_TimeDifference.PluralDaysAgo": "%@일 전",
	"_TimeDifference.SingleHoursAgo": "1시간 전",
	"_TimeDifference.PluralHoursAgo": "%@시간 전",
	"_TimeDifference.SingleMinutesAgo": "1분 전",
	"_TimeDifference.PluralMinutesAgo": "%@분 전",
	"_TimeDifference.LessThanAMinuteAgo": "방금",
	"_TimeDifference.InSingleDays": "1일 후",
	"_TimeDifference.InPluralDays": "%@일 후",
	"_TimeDifference.InSingleHours": "1시간 후",
	"_TimeDifference.InPluralHours": "%@시간 후",
	"_TimeDifference.InSingleMinutes": "1분 후",
	"_TimeDifference.InPluralMinutes": "%@분 후",
	"_Revisions.Progress.Loading.Document.History": "도큐멘트 기록 로드 중…",
	"_Revisions.Progress.Loading.Revision": "수정 사항 로드 중...",
	"_Revisions.Progress.Loading.Revision.Changes": "개정판용 변경사항 로드 중…",
	"_Revisions.Notification.Revision.Changes.Failed": "개정판용 변경사항을 가져올 수 없습니다.",
	"_Revisions.Progress.Restoring.Document": "이전 버전 복원 중…",
	"_Revisions.Notification.Restore.Document.Success": "이전 버전을 성공적으로 복원했습니다",
	"_Revisions.Notification.Restore.Document.Failed": "이전 버전을 복원할 수 없습니다. 다시 시도하십시오.",
	"_Revisions.Placeholder.Empty.Revision": "빈 도큐멘트",
	"_Revisions.Placeholder.No.Revisions.Found": "기록 항목 없음",
	"_Revisions.Attachment.Download.Tooltip": "사용자의 컴퓨터에 이 첨부 파일을 다운로드합니다.",
	"_Search.SearchResults": "검색 결과",
	"_Search.SearchResults.Keyword": "\'%@'\에 대한 검색 결과",
	"_Search.SavedSearch.Save": "검색 결과 저장",
	"_Search.SavedSearch.Untitled": "무제 검색",
	"_Search.SavedSearch.Save.Dialog.Title": "검색 결과 저장",
	"_Search.SavedSearch.Save.Dialog.Label": "이름:",
	"_Search.SavedSearch.Save.Dialog.OK": "저장",
	"_Search.SavedSearch.Save.Dialog.Progress": "검색 결과 저장 중...",
	"_Search.SavedSearch.Delete.Title": "저장된 검색 결과 삭제",
	"_Search.SavedSearch.Delete.Description": "저장된 이 검색 결과를 영구적으로 삭제하겠습니까? 이 동작은 취소할 수 없습니다.",
	"_Search.SavedSearch.Loading": "로드 중...",
	"_Search.SavedSearch.ErrorExecutingSearch": "저장된 검색 결과를 실행하는 동안 오류 발생",
	"_Search.Show.More": "더 보기(%@)...",
	"_Search.Load.More": "추가 로드...",
	"_Search.Owner.Title.Format": "위치: %@",
	"_Search.LastModified.Subtitle.Format": "%@2이(가) %@1에 업데이트함",
	"_Search.Tags.Subtitle": "태그:",
	"_Search.MultipleSnippet.Divider": "...",
	"_Editor.Apple.Copyright.Notice": "Copyright © 2011-2014 Apple Inc. 모든 권리 보유.",
	"_Editor.Edit.Title": "편집",
	"_Editor.Edit.Tooltip": "이 페이지를 편집합니다",
	"_Editor.Save.Title": "저장",
	"_Editor.Save.Tooltip": "이 페이지에 대한 변경사항을 저장합니다",
	"_Editor.Cancel.Title": "취소",
	"_Editor.Cancel.Tooltip": "이 페이지에서 변경한 사항을 모두 취소합니다",
	"_Editor.Undo.Title": "실행 취소",
	"_Editor.Undo.Tooltip": "최근에 이 페이지에서 변경한 사항을 취소합니다",
	"_Editor.Delete.Block": "이 콘텐츠 삭제",
	"_Editor.Delete.Block.Selected": "선택된 콘텐츠 삭제",
	"_Editor.Notifications.General.Error": "오류가 발생했습니다. 다시 시도하십시오.",
	"_Editor.Notifications.Page.Saving": "변경사항 저장 중…",
	"_Editor.Notifications.Page.Checking.Status": "페이지 상태 확인 중…",
	"_Editor.Notifications.Page.Checking.Status.Error": "이 페이지를 저장하는데 오류가 발생했습니다. 다시 시도하십시오.",
	"_Editor.Notifications.Page.Edit.LoginError": "세션이 만료되었습니다. 해당 페이지를 편집하려면 로그인하십시오.",
	"_Editor.Notifications.Page.Saved.Error": "변경사항을 저장할 수 없습니다. 다시 시도하십시오.",
	"_Editor.Notifications.Page.Saved.LoginError": "세션이 만료되었습니다. 변경사항을 저장하려면 로그인하십시오.",
	"_Editor.Unload.Warning": "이 페이지에 대한 변경사항이 모두 저장되지 않습니다.",
	// We have an explicit string here for cases where the browser does not automatically append the "Are you sure" text
	"_Editor.Unload.Full.Warning": "이 페이지에서 나가겠습니까?\n\n이 페이지에서 수행한 모든 변경사항은 저장되지 않습니다.",
	"_Editor.Toolbar.Empty.Placeholder": "이 도구 막대가 비어있습니다.",
	"_Editor.Toolbar.Block.Text.Title": "텍스트",
	"_Editor.Toolbar.Block.Text.Tooltip": "페이지에 텍스트를 추가합니다.",
	"_Editor.Toolbar.Block.File.Title": "파일",
	"_Editor.Toolbar.Block.File.Tooltip": "파일을 업로드하고 페이지에 추가합니다.",
	"_Editor.Toolbar.Block.Table.Title": "표",
	"_Editor.Toolbar.Block.Table.Tooltip": "페이지에 표를 추가합니다.",
	"_Editor.Toolbar.Block.Sandbox.Title": "HTML 스니펫",
	"_Editor.Toolbar.Block.Sandbox.Tooltip": "페이지에 HTML 스니펫을 추가합니다.",
	"_Editor.Block.Debug": "[디버그]",
	"_Editor.Block.Text.Toolbar.Formatting.Title": "포맷",
	"_Editor.Block.Text.Toolbar.Formatting.Tooltip": "텍스트에 대한 포맷 옵션을 보여줍니다.",
	"_Editor.Block.Text.Toolbar.Formatting.Paragraph.Title": "단락",
	"_Editor.Block.Text.Toolbar.Formatting.Paragraph.Tooltip": "텍스트를 단락으로 만듭니다.",
	"_Editor.Block.Text.Toolbar.Formatting.BlockQuote.Title": "블록 인용",
	"_Editor.Block.Text.Toolbar.Formatting.BlockQuote.Tooltip": "텍스트 인용을 만듭니다.",
	"_Editor.Block.Text.Toolbar.Formatting.Monospace.Title": "고정폭",
	"_Editor.Block.Text.Toolbar.Formatting.Monospace.Tooltip": "고정폭 텍스트로 만듭니다.",
	"_Editor.Block.Text.Toolbar.Formatting.LargeHeader.Title": "큰 헤더",
	"_Editor.Block.Text.Toolbar.Formatting.LargeHeader.Tooltip": "텍스트를 큰 헤더로 만듭니다.",
	"_Editor.Block.Text.Toolbar.Formatting.MediumHeader.Title": "보통 헤더",
	"_Editor.Block.Text.Toolbar.Formatting.MediumHeader.Tooltip": "텍스트를 보통 헤더로 만듭니다.",
	"_Editor.Block.Text.Toolbar.Formatting.SmallHeader.Title": "작은 헤더",
	"_Editor.Block.Text.Toolbar.Formatting.SmallHeader.Tooltip": "텍스트를 작은 헤더로 만듭니다.",
	"_Editor.Block.Text.Toolbar.Style.Title": "스타일",
	"_Editor.Block.Text.Toolbar.Style.Tooltip": "텍스트에 대한 스타일 옵션입니다.",
	"_Editor.Block.Text.Toolbar.Style.Plain.Title": "보통체",
	"_Editor.Block.Text.Toolbar.Style.Plain.Tooltip": "스타일이 없습니다.",
	"_Editor.Block.Text.Toolbar.Style.Bold.Title": "볼드체",
	"_Editor.Block.Text.Toolbar.Style.Bold.Tooltip": "텍스트를 볼드체로 만듭니다.",
	"_Editor.Block.Text.Toolbar.Style.Italic.Title": "이탤릭체",
	"_Editor.Block.Text.Toolbar.Style.Italic.Tooltip": "텍스트를 이탤릭체로 만듭니다.",
	"_Editor.Block.Text.Toolbar.Style.Underline.Title": "밑줄체",
	"_Editor.Block.Text.Toolbar.Style.Underline.Tooltip": "텍스트에 밑줄을 칩니다.",
	"_Editor.Block.Text.Toolbar.Style.Important.Title": "중요",
	"_Editor.Block.Text.Toolbar.Style.Important.Tooltip": "중요한 텍스트로 표시합니다.",
	"_Editor.Block.Text.Toolbar.Style.Emphasis.Title": "강조",
	"_Editor.Block.Text.Toolbar.Style.Emphasis.Tooltip": "텍스트를 강조합니다.",
	"_Editor.Block.Text.Toolbar.Style.Highlight.Title": "하이라이트",
	"_Editor.Block.Text.Toolbar.Style.Highlight.Tooltip": "텍스트를 하이라이트합니다.",
	"_Editor.Block.Text.Style.Plain.Title": "보통체",
	"_Editor.Block.Text.Style.Plain.Description": "스타일이 없는 텍스트입니다.",
	"_Editor.Block.Text.Style.Bold.Title": "볼드체",
	"_Editor.Block.Text.Style.Bold.Description": "볼드체 텍스트입니다.",
	"_Editor.Block.Text.Style.Italic.Title": "이탤릭체",
	"_Editor.Block.Text.Style.Italic.Description": "이탤릭체 텍스트입니다.",
	"_Editor.Block.Text.Style.Underline.Title": "밑줄",
	"_Editor.Block.Text.Style.Underline.Description": "밑줄 친 텍스트입니다.",
	"_Editor.Block.Text.Style.Important.Title": "중요",
	"_Editor.Block.Text.Style.Important.Description": "상당히 중요한 텍스트입니다.",
	"_Editor.Block.Text.Style.Emphasis.Title": "강조됨",
	"_Editor.Block.Text.Style.Emphasis.Description": "강조된 텍스트입니다.",
	"_Editor.Block.Text.Style.Highlight.Title": "하이라이트됨",
	"_Editor.Block.Text.Style.Highlight.Description": "하이라이트된 텍스트입니다.",
	"_Editor.Block.Text.Toolbar.Alignment.Title": "정렬",
	"_Editor.Block.Text.Toolbar.Alignment.Tooltip": "텍스트에 대한 정렬 옵션입니다.",
	"_Editor.Block.Text.Toolbar.Alignment.Left.Title": "왼쪽 정렬",
	"_Editor.Block.Text.Toolbar.Alignment.Left.Tooltip": "텍스트를 왼쪽으로 정렬합니다.",
	"_Editor.Block.Text.Toolbar.Alignment.Right.Title": "오른쪽 정렬",
	"_Editor.Block.Text.Toolbar.Alignment.Right.Tooltip": "텍스트를 오른쪽으로 정렬합니다.",
	"_Editor.Block.Text.Toolbar.Alignment.Center.Title": "중앙",
	"_Editor.Block.Text.Toolbar.Alignment.Center.Tooltip": "텍스트를 중앙 정렬합니다.",
	"_Editor.Block.Text.Toolbar.Alignment.Justify.Title": "좌우 정렬",
	"_Editor.Block.Text.Toolbar.Alignment.Justify.Tooltip": "텍스트를 좌우 정렬(왼쪽 및 오른쪽으로 정렬)합니다.",
	"_Editor.Block.Text.Toolbar.Link.Title": "링크",
	"_Editor.Block.Text.Toolbar.Link.Tooltip": "다른 페이지에 대한 링크 또는 외부 URL을 추가합니다.",
	"_Editor.Block.Text.Toolbar.List.Style.Title": "목록",
	"_Editor.Block.Text.Toolbar.List.Style.Tooltip": "텍스트를 목록으로 만듭니다.",
	"_Editor.Block.Text.Toolbar.List.Style.Bulleted.Title": "• 구분점 표시",
	"_Editor.Block.Text.Toolbar.List.Style.Bulleted.Tooltip": "구분점이 표시된 목록으로 만듭니다.",
	"_Editor.Block.Text.Toolbar.List.Style.Numbered.Title": "1. 번호 표시",
	"_Editor.Block.Text.Toolbar.List.Style.Numbered.Tooltip": "번호가 매겨진 목록으로 만듭니다.",
	"_Editor.Block.Text.Toolbar.List.Style.None.Title": "없음",
	"_Editor.Block.Text.Toolbar.List.Style.None.Tooltip": "목록 포맷을 제거합니다.",
	"_Editor.Block.Text.Toolbar.List.Indentation.Title": "들여쓰기",
	"_Editor.Block.Text.Toolbar.List.Indentation.Tooltip": "목록에 대한 들여쓰기 옵션입니다.",
	"_Editor.Block.Text.Toolbar.List.Indentation.Indent.Title": "들여쓰기",
	"_Editor.Block.Text.Toolbar.List.Indentation.Indent.Tooltip": "이 목록 항목의 들여쓰기를 늘입니다.",
	"_Editor.Block.Text.Toolbar.List.Indentation.Outdent.Title": "내어쓰기",
	"_Editor.Block.Text.Toolbar.List.Indentation.Outdent.Tooltip": "이 목록 항목의 들여쓰기를 줄입니다.",
	"_Editor.Links.Toolbar.Popup.New.Title": "새로운 페이지…",
	"_Editor.Links.Toolbar.Popup.New.Tooltip": "새로운 페이지 및 해당 페이지에 대한 링크를 생성합니다.",
	"_Editor.Links.Toolbar.Popup.Search.Title": "검색…",
	"_Editor.Links.Toolbar.Popup.Search.Tooltip": "기존 페이지 또는 파일을 검색하고 이에 대한 링크를 생성합니다.",
	"_Editor.Links.Toolbar.Popup.Manual.Title": "링크…",
	"_Editor.Links.Toolbar.Popup.Manual.Tooltip": "외부 URL에 대한 링크를 생성합니다.",
	"_Editor.Links.Toolbar.Popup.Unlink.Title": "링크 해제",
	"_Editor.Links.Toolbar.Popup.Unlink.Tooltip": "이 페이지에서 기존의 링크를 제거합니다.",
	"_Editor.Links.Toolbar.Popup.ChangeTargetSelf.Title": "내부 링크",
	"_Editor.Links.Toolbar.Popup.ChangeTargetSelf.Tooltip": "동일한 페이지에서 링크를 엽니다.",
	"_Editor.Links.Toolbar.Popup.ChangeTargetBlank.Title": "외부 링크",
	"_Editor.Links.Toolbar.Popup.ChangeTargetBlank.Tooltip": "새로운 페이지에서 링크를 엽니다.",
	"_Editor.Links.Toolbar.Popup.Recents": "최근 사용",
	"_Editor.Links.Toolbar.Popup.Recents.None.Placeholder": "최근 항목 없음",
	"_Editor.Links.Dialog.Add": "추가",
	"_Editor.Links.Dialog.Cancel": "취소",
	"_Editor.Links.Dialog.Manual.Title": "링크",
	"_Editor.Links.Dialog.Manual.Description": "사용자 링크의 URL 및 이름을 입력합니다.",
	"_Editor.Links.Dialog.Manual.Label.URL": "URL:",
	"_Editor.Links.Dialog.Manual.Label.LinkText": "링크 텍스트:",
	"_Editor.Links.Dialog.Manual.Label.Target.Blank": "새로운 윈도우에서 열기",			
	"_Editor.Block.Text.Placeholder": "사용자 본인의 콘텐츠로 이 텍스트를 대치",
	"_Editor.Block.Text.Debug.Dialog.Title": "텍스트 블록 디버그 모드",
	"_Editor.Block.Text.Debug.Dialog.HTML.Label": "원본 HTML",
	"_Editor.Block.Text.Debug.Dialog.Formatting.Label": "포맷",
	"_Editor.Block.Text.Debug.Dialog.Alignment.Label": "정렬",
	"_Editor.Block.Text.Debug.Dialog.Properties.Label": "속성",
	"_Editor.Block.Text.Debug.Dialog.Cancel": "취소",
	"_Editor.Block.Text.Debug.Dialog.Update": "업데이트",
	"_Editor.Block.Text.Debug.CopyPaste.Title": "텍스트 블록 복사하기/붙이기 디버그 콘솔",
	"_Editor.Block.Text.Debug.CopyPaste.Clear.Title": "지우기",
	"_Editor.Block.Text.Debug.CopyPaste.Clear.Tooltip": "복사하기/붙이기 디버그 패널을 지우려면 여기를 지웁니다.",
	"_Editor.Block.Text.Debug.CopyPaste.Toggle.Open.Title": "열기",
	"_Editor.Block.Text.Debug.CopyPaste.Toggle.Close.Title": "닫기",
	"_Editor.Block.Text.Debug.CopyPaste.Toggle.Tooltip": "이 패널을 토글하려면 여기를 클릭합니다.",
	"_Editor.Block.Text.Debug.CopyPaste.Clipboard.Label": "현재 복사하기/붙이기 클립보드:",
	"_Editor.Block.Text.Debug.CopyPaste.Clipboard.Placeholder": "클립보드가 비어 있음",
	"_Editor.Block.Table.Toolbar.Title": "표",
	"_Editor.Block.Table.Toolbar.Tooltip": "페이지에 새로운 표를 추가합니다.",
	"_Editor.Block.Table.Toolbar.Adjust.Title": "행/열 추가/제거",
	"_Editor.Block.Table.Toolbar.Adjust.Tooltip": "이 표에서 행 또는 열을 추가 또는 제거합니다.",
	"_Editor.Block.Table.Toolbar.Add.Row.Title": "행 추가",
	"_Editor.Block.Table.Toolbar.Add.Row.Tooltip": "이 표에 빈 행을 추가합니다.",
	"_Editor.Block.Table.Toolbar.Remove.Row.Title": "행 제거",
	"_Editor.Block.Table.Toolbar.Remove.Row.Tooltip": "이 표에서 행을 제거합니다.",
	"_Editor.Block.Table.Toolbar.Add.Column.Title": "열 추가",
	"_Editor.Block.Table.Toolbar.Add.Column.Tooltip": "이 표에 빈 열을 추가합니다.",
	"_Editor.Block.Table.Toolbar.Remove.Column.Title": "열 제거",
	"_Editor.Block.Table.Toolbar.Remove.Column.Tooltip": "이 표에서 열을 제거합니다.",
	"_Editor.Block.Table.Toolbar.Settings.Title": "표 설정",
	"_Editor.Block.Table.Toolbar.Settings.Tooltip": "이 표의 설정을 수정합니다.",
	"_Editor.Block.Table.Dialog.Settings.Title": "표 설정",
	"_Editor.Block.Table.Dialog.Settings.Gridlines.Label": "표 격자선 보기",
	"_Editor.Block.Table.Dialog.Settings.Alternating.Label": "행 색상 교대",
	"_Editor.Block.Table.Dialog.Settings.OK": "업데이트",
	"_Editor.Block.Table.Dialog.Settings.Cancel": "취소",
	"_Editor.Block.Table.Popup.Column.Sort.Ascending.Title": "오름차순으로 정렬",
	"_Editor.Block.Table.Popup.Column.Sort.Ascending.Tooltip": "이 열에 대해 오름차순으로 표를 정렬합니다.",
	"_Editor.Block.Table.Popup.Column.Sort.Descending.Title": "내림차순으로 정렬합니다",
	"_Editor.Block.Table.Popup.Column.Sort.Descending.Tooltip": "이 열에 대해 내림차순으로 표를 정렬합니다.",
	"_Editor.Block.Table.Popup.Column.Add.Before.Title": "앞에 열 추가",
	"_Editor.Block.Table.Popup.Column.Add.Before.Tooltip": "이 열 앞에 빈 열을 추가합니다.",
	"_Editor.Block.Table.Popup.Column.Add.After.Title": "뒤에 열 추가",
	"_Editor.Block.Table.Popup.Column.Add.After.Tooltip": "이 열 뒤에 빈 열을 추가합니다.",
	"_Editor.Block.Table.Popup.Column.Delete.Title": "열 삭제",
	"_Editor.Block.Table.Popup.Column.Delete.Tooltip": "이 열을 삭제합니다.",
	"_Editor.Block.Table.Popup.Column.Header.Title": "헤더 열",
	"_Editor.Block.Table.Popup.Column.Header.Tooltip": "이 표 열에 대해 헤더 포맷을 사용합니다.",
	"_Editor.Block.Table.Popup.Row.Add.Above.Title": "위에 행 추가",
	"_Editor.Block.Table.Popup.Row.Add.Above.Tooltip": "이 행 위에 빈 행을 추가합니다.",
	"_Editor.Block.Table.Popup.Row.Add.Below.Title": "아래에 행 추가",
	"_Editor.Block.Table.Popup.Row.Add.Below.Tooltip": "이 행 아래에 빈 행을 추가합니다.",
	"_Editor.Block.Table.Popup.Row.Delete.Title": "행 삭제",
	"_Editor.Block.Table.Popup.Row.Delete.Tooltip": "이 행을 삭제합니다.",
	"_Editor.Block.Table.Popup.Row.Header.Title": "헤더 행",
	"_Editor.Block.Table.Popup.Row.Header.Tooltip": "이 표 행에 대해 헤더 포맷을 사용합니다.",
	"_Editor.Block.Table.Dialog.Delete.Title": "표 삭제",
	"_Editor.Block.Table.Dialog.Delete.Description": "이 표를 삭제하겠습니까? 이 동작은 취소할 수 없습니다.",
	"_Editor.Block.Table.Dialog.Delete.OK": "삭제",
	"_Editor.Block.Sandbox.Markup.Description": "시작하려면 HTML 마크업을 입력하거나 붙여넣습니다.",
	"_Editor.Block.Sandbox.Edit.MatchStyle.Label": "스타일 일치시킴",
	"_Editor.Block.Sandbox.Edit.MatchStyle.Tooltip": "이 HTML 스니펫의 콘텐츠를 페이지 스타일과 일치시킵니다.",
	"_Editor.Block.Sandbox.Edit.MatchStyle.Dialog.Title": "스타일 일치시킴",
	"_Editor.Block.Sandbox.Edit.MatchStyle.Dialog.Description": "이 HTML 스니펫 콘텐츠를 페이지의 스타일과 일치시키겠습니까? 원본 HTML 스니펫은 제거됩니다.",
	"_Editor.Block.Sandbox.Edit.MatchStyle.Dialog.OK": "스타일 일치시킴",
	"_Editor.Block.Sandbox.Edit.Done.Label": "완료",
	"_Editor.Block.Sandbox.Dialog.Delete.Title": "HTML 스니펫 삭제",
	"_Editor.Block.Sandbox.Dialog.Delete.Description": "이 HTML 스니펫을 삭제하겠습니까? 이 동작은 취소할 수 없습니다.",
	"_Editor.Block.File.Uploaded.Error": "파일을 업로드할 수 없습니다. 다시 시도하십시오.",
	"_Editor.Block.Attachment.Download.Label": "첨부 파일을 다운로드합니다.",
	"_Editor.Block.Attachment.Remove.Label": "첨부 파일을 제거합니다.",
	"_Editor.Block.Attachment.QuickLook.Label": "첨부 파일 훑어봅니다.",
	"_Editor.Block.Attachment.Dialog.Delete.Title": "첨부 파일 삭제",
	"_Editor.Block.Attachment.Dialog.Delete.Description": "이 첨부 파일을 삭제하겠습니까? 이 동작은 취소할 수 없습니다.",
	"_Editor.Block.Image.Toolbar.Link.Title": "링크",
	"_Editor.Block.Image.Toolbar.Link.Tooltip": "다른 페이지에 대한 링크 또는 외부 URL을 추가합니다.",
	"_Editor.Block.Image.Loading.Placeholder": "로드 중...",
	"_Editor.Block.Image.Dialog.Delete.Title": "이미지 삭제",
	"_Editor.Block.Image.Dialog.Delete.Description": "이 이미지를 삭제하겠습니까? 이 동작은 취소할 수 없습니다.",
	"_Editor.Block.Media.Preview.Missing": "이 미디어 파일을 미리 볼 수 없습니다. 다시 업로드해 보십시오.",
	"_Editor.Block.Media.Dialog.Delete.Title": "미디어 삭제",
	"_Editor.Block.Media.Dialog.Delete.Description": "이 미디어 파일을 삭제하겠습니까? 이 동작은 취소할 수 없습니다.",
	"_Editor.Conflict.Edit.Outdated": "이 페이지를 보는 동안에 다른 사용자가 이 페이지를 업데이트했습니다. 이 페이지를 새로 고치고 편집하려면 승인을 클릭하십시오.",
	"_Editor.Conflict.Save.Override": "이 페이지를 편집하기 시작한 다음에 다른 사용자가 이 페이지를 수정했습니다. 편집한 내용을 저장하면, 다른 사용자의 변경사항을 덮어쓰게 됩니다. 다른 사용자의 변경사항을 덮어쓰겠습니까?",
	"_Editor.Concurrent.Block.Locked.By": "%@이(가) 편집 중",
	"_Editor.Concurrent.Block.Created.By": "%@이(가) 여기에서 편집 중…",
	"_Editor.Concurrent.Block.Updated.Edited.By": "%@이(가) 편집을 완료했습니다. <span class='reveal'>변경사항 보기…</span>",
	"_Editor.Concurrent.Block.Updated.Created.By": "%@이(가) 콘텐츠를 추가했습니다. <span class='reveal'>변경사항 보기…</span>",
	"_Editor.Concurrent.Block.Deleted.By": "%@이(가) 이 콘텐츠를 삭제했습니다.",
	"_Editor.Concurrent.Block.Locked.Error.LockStolen": "%@이(가) 이미 편집 중이기 때문에 이 콘텐츠를 편집할 수 없습니다.",
	"_Editor.Concurrent.Block.Locked.Error.LockTimeout": "너무 오래동안 비활성화 상태였습니다. 다른 사용자가 이 콘텐츠를 편집하고 본인의 변경사항을 덮어썼을 수도 있습니다.",
	"_Editor.Concurrent.Page.Updated": "%@에 의해 이 페이지가 업데이트되었습니다. <span class='reveal'>변경사항 보기…</span>",
	"_Editor.Migration.Progress.Migrating": "페이지 업데이트 중…",
	"_Editor.Migration.Progress.CopyPaste": "로드 중...",
	"_Editor.Migration.Progress.MatchStyles": "로드 중...",
	"_Editor.Autosave.Restore.Unsaved.Changes.Dialog.Title": "저장하지 않은 변경사항",
	"_Editor.Autosave.Restore.Unsaved.Changes.Dialog.Description": "이전에 이 페이지에 적용한 편집 내용이 아직 저장되지 않았습니다. 이 페이지의 변경사항을 복원하고 편집을 계속하려면 복원을 클릭하십시오.",
	"_Editor.Autosave.Restore.Unsaved.Changes.Dialog.OK": "복원",
	"_Editor.Autosave.Restore.Progress.Restoring": "변경사항 로드 중...",
	"_Editor.Version.Unsupported.Warning": "지원되지 않는 Wiki 버전을 사용하여 생성했기 때문에 이 페이지를 편집할 수 없습니다. 이 페이지를 편집해야 하는 경우, 페이지 콘텐츠를 새로운 Wiki 페이지 또는 블로그 포스트에 복사하고 붙인 다음에 이 페이지를 삭제하십시오.",
	"_GearMenu.Replace.File.Title": "파일 대치...",
	"_GearMenu.Delete.Title": "삭제...",
	"_GearMenu.Delete.Project.Title": "Wiki 삭제...",
	"_GearMenu.Delete.Page.Title": "페이지 삭제...",
	"_GearMenu.Delete.File.Title": "파일 삭제...",
	"_Dialogs.Delete.Title": "삭제",
	"_Dialogs.Delete.Project.Title": "Wiki 삭제",
	"_Dialogs.Delete.Page.Title": "페이지 삭제",
	"_Dialogs.Delete.File.Title": "파일 삭제",
	"_Dialogs.Delete.Blog.Title": "블로그 포스트 삭제",
	"_Dialogs.Delete.Main.Title": "기본 페이지 삭제(Wiki)",
	"_Dialogs.Delete.Description": "삭제하겠습니까?",
	"_Dialogs.Delete.Page.Description": "이 페이지를 삭제하겠습니까?",
	"_Dialogs.Delete.Blog.Description": "이 블로그 포스트를 삭제하겠습니까?",
	"_Dialogs.Delete.File.Description": "이 파일을 삭제하겠습니까?",
	"_Dialogs.Delete.Project.Description": "이 Wiki를 삭제하겠습니까?",
	"_Dialogs.Delete.Main.Description": "기본 페이지를 삭제하는 경우 전체 Wiki 및 모든 페이지가 삭제됩니다.",
	"_Dialogs.Delete.OK": "삭제",
	"_Dialogs.Delete.Permanently": "영구적으로 삭제",
	"_Dialogs.Delete.Notification.Error": "오류가 발생했습니다. 다시 시도하십시오.",
	"_Dialogs.Delete.Notification.NotDocumentOwner.Error": "오직 소유자 또는 관리자만 이 도큐멘트를 삭제할 수 있습니다.",
	"_Dialogs.Delete.Notification.NotProjectOwner.Error": "오직 이 Wiki의 소유자만 이 도큐멘트를 삭제할 수 있습니다.",
	
	"_Dialogs.Hide.Person.Title": "사람 가리기",
	"_Dialogs.Hide.Person.Description": "이 사람을 가리겠습니까?",
	"_Dialogs.Hide.OK": "가리기",
	"_Dialogs.Hide.Notification.Error": "가려짐으로 표시할 수 없습니다. 다시 시도하십시오.",
	"_Dialogs.Unhide.Person.Title": "사람 가리기 해제",
	"_Dialogs.Unhide.Person.Description": "이 사람을 가리지 않겠습니까?",
	"_Dialogs.Unhide.OK": "가리기 해제",
	"_Dialogs.Unhide.Notification.Error": "가리기 해제할 수 없습니다. 다시 시도하십시오.",
	"_Dialogs.OK": "승인",
	"_Dialogs.Cancel": "취소",
	"_Dialogs.Save": "저장",
	"_Dialogs.Done": "완료",
	"_Dialogs.LinkSearch.Search.Placeholder": "Wiki 이름, 페이지 제목, 또는 파일 이름",
	"_Dialogs.LinkSearch.Progress.Searching": "검색 중...",
	"_Dialogs.LinkSearch.Title": "기존 페이지 또는 파일 검색",
	"_Dialogs.LinkSearch.Button.OK": "승인",
	"_Dialogs.LinkSearch.Description": "기존 페이지 또는 파일의 이름을 입력하고, 목록에서 이를 선택한 후에 승인을 클릭하여 새로운 링크를 생성합니다.",
	"_Dialogs.NoEmailSet.Title": "이메일 주소 입력",
	"_Dialogs.NoEmailSet.Description": "이메일 주소가 없습니다. 알림 이메일을 받으려면 계정 설정에서 이메일 주소를 구성해야 합니다.",
	"_Dialogs.NoEmailSet.Settings": "설정…",
	"_Dialogs.NewPage.Title": "새로운 페이지",
	"_Dialogs.NewPage.Label": "페이지 제목:",
	"_Dialogs.NewPage.Progress.Creating": "새로운 페이지 생성 중...",
	"_Dialogs.NewPage.OK": "추가",
	"_Dialogs.NewPage.Progress.Failed": "새로운 페이지를 생성할 수 없습니다. 다시 시도하십시오.",
	"_Dialogs.NewBlogpost.Title": "새로운 블로그 포스트",
	"_Dialogs.NewBlogpost.Label": "제목:",
	"_Dialogs.NewBlogpost.Progress.Creating": "새로운 블로그 포스트 생성 중…",
	"_Dialogs.NewBlogpost.OK": "추가",
	"_Dialogs.NewBlogpost.Progress.Failed": "새로운 블로그 포스트를 생성할 수 없습니다. 다시 시도하십시오.",
	"_Dialogs.CreateWikiNamed.NotAllowed": "새로운 Wiki를 생성할 권한이 없습니다.  다른 사용자로 로그인하십시오.",
	// Do not localize these help links.
	"_Help.Desktop.URL": "https://help.apple.com/wikiuser/mac/4.0.1/",
	"_Help.iPad.URL": "http://help.apple.com/wikiuser/ipad/4.0/",
	"_Cookies.NoCookiesUnsupported": "이 웹 사이트를 사용하려면 쿠키를 활성화해야 합니다.",
	"_Sharing.Sidebar.SharingWith":"다음과 공유 중:",
	"_Sharing.Sidebar.Edit":"편집",
	"_Sharing.Sidebar.EmptyPlaceholder":"공유하지 않음",
	// Format.js localization.
    "_Dates.Months": "1월,2월,3월,4월,5월,6월,7월,8월,9월,10월,11월,12월",
    "_Dates.LongMonths": "1월,2월,3월,4월,5월,6월,7월,8월,9월,10월,11월,12월",
    "_Dates.Weekdays": "일,월,화,수,목,금,토,-",
    "_Dates.ShortWeekdays": "일,월,화,수,목,금,토",
    "_Dates.LongWeekdays": "일요일,월요일,화요일,수요일,목요일,금요일,토요일",
    "_Dates.AMPM": "오전,오후",
    "_Dates.DateFormats.MediumDate": "Y년 M j일",
    "_Dates.DateFormats.Hour": "a g시",
    "_Dates.DateFormats.HourAndMinutes": "a g:i",
    "_Dates.DateFormats.LongMonthAndYear":"Y년 F",
    "_Dates.DateFormats.MediumDateAndShortTime":"Y년 M j일 a g:i",
    "_Dates.Noon":"정오",
	
	// WAI ARIA - Accessiblity
	"_Accessibility.Editor.AccessRoles": "접근 규칙",
	"_Accessibility.Button.UploadImage": "이미지 업로드",
	"_Accessibility.Button.Delete": "이미지 삭제",
	"_Accessibility.CheckboxFavorite": "즐겨찾기",
	"_Accessibility.Dialog.Title": "설정",
	"_Accessibility.Dialog.UploadFile": "파일 선택",
	"_Accessibility.MenuBar.Filter": "필터",
	"_Accessibility.MenuBar.HistoryControls": "방문 기록 제어",
	"_Accessibility.View.BotList": "봇 목록",
	"_Accessibility.View.ListView": "목록 보기",
	"_Accessibility.View.SearchResult": "검색 결과"
});
