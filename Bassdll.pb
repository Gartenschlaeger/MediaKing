EnableExplicit

CompilerIf #PB_Compiler_Debugger = 0
;Fehlerbericht
Declare ErrorHandler()
OnErrorCall(@ErrorHandler())
CompilerEndIf

XIncludeFile #PB_Compiler_Home + "Include\bass.pbi"
XIncludeFile #PB_Compiler_Home + "Include\taglib.pbi"

;- Declare
Enumeration
  #Win_Hide
  #Win_Main
  #Win_Log
  #Win_TitleInfo
  #Win_InternetStream
  #Win_Search
  #Win_MLScan
  #Win_RNDPlaylist
  #Win_MLSearchO
  #Win_Info
  #Win_Preferences
  #Win_Order
  #Win_Last
EndEnumeration

Enumeration
  ;Win Main
  ;// InfoArea
  #G_CN_Main_IA_Background
  #G_TX_Main_IA_Artist
  #G_TX_Main_IA_ArtistC
  #G_TX_Main_IA_Title
  #G_TX_Main_IA_TitleC
  #G_TX_Main_IA_Album
  #G_TX_Main_IA_AlbumC
  #G_TX_Main_IA_Genre
  #G_TX_Main_IA_GenreC
  #G_TX_Main_IA_Length
  #G_TX_Main_IA_LengthC
  #G_IG_Main_IA_Spectrum
  #G_IG_Main_IA_PrgLogo
  #G_FR_Main_IA_Gap
  #G_TB_Main_IA_Position
  #G_CN_Main_IA_ToolbarLeft
  #G_TB_Main_IA_Volume
  #G_CN_Main_IA_ToolbarRight
  ;// PlayList
  #G_LI_Main_PL_PlayList
  #G_TX_Main_PL_Playlist
  ;// MediaLibary
  #G_SR_Main_ML_Search
  #G_BN_Main_ML_SearchOptions
  #G_BN_Main_ML_Search
  #G_LI_Main_ML_MediaLib
  #G_LV_Main_ML_Category
  #G_LV_Main_ML_Album
  #G_SP_Main_ML_Vertical
  #G_SP_Main_ML_Horizontal
  #G_TX_Main_ML_Status
  #G_PB_Main_ML_Status
  ;Win TitleInfo
  #G_SR_TitleInfo_Path
  #G_BN_TitleInfo_Path
  #G_FR_TitleInfo_MetaInfo
  #G_TX_TitleInfo_Title
  #G_SR_TitleInfo_Title
  #G_TX_TitleInfo_Artist
  #G_SR_TitleInfo_Artist
  #G_TX_TitleInfo_Album
  #G_SR_TitleInfo_Album
  #G_TX_TitleInfo_Number
  #G_SR_TitleInfo_Number
  #G_TX_TitleInfo_Genre
  #G_SR_TitleInfo_Genre
  #G_TX_TitleInfo_Year
  #G_SR_TitleInfo_Year
  #G_TX_TitleInfo_Comment
  #G_SR_TitleInfo_Comment
  #G_FR_TitleInfo_TechnicDetails
  #G_TX_TitleInfo_Bits
  #G_TX_TitleInfo_BitsC
  #G_TX_TitleInfo_Length
  #G_TX_TitleInfo_LengthC
  #G_TX_TitleInfo_SamplingRate
  #G_TX_TitleInfo_SamplingRateC
  #G_TX_TitleInfo_Channels
  #G_TX_TitleInfo_ChannelsC
  #G_TX_TitleInfo_Version
  #G_TX_TitleInfo_VersionC
  #G_BN_TitleInfo_Close
  #G_BN_TitleInfo_Extended
  #G_LI_TitleInfo_Extended
  ;Win InternetStream
  #G_SR_InternetStream_URL
  #G_BN_InternetStream_Connect
  #G_BN_InternetStream_ServerSave
  #G_BN_InternetStream_ServerDelete
  #G_LI_InternetStream_Server
  ;Win Search
  #G_CB_Search_SearchIn
  #G_CB_Search_String
  #G_BN_Search_Start
  #G_LV_Search_Result
  ;Win MLScan
  #G_TX_MLScan_Process
  #G_FR_MLScan_Gap
  #G_TX_MLScan_NFiles
  #G_TX_MLScan_NFilesC
  #G_TX_MLScan_RFiles
  #G_TX_MLScan_RFilesC
  #G_TX_MLScan_CFiles
  #G_TX_MLScan_CFilesC
  #G_TX_MLScan_CFile
  #G_TX_MLScan_CFileN
  #G_FR_MLScan_Statistik
  #G_CH_MLScan_OnlyCheck
  #G_BN_MLScan_Pause
  #G_BN_MLScan_Cancel
  ;Win Log
  #G_BN_Log_Clear
  #G_LV_Log_Loging
  ;Win RndPlaylist
  #G_FR_RNDPlaylist_Amount
  #G_CH_RNDPlaylist_Amount
  #G_TX_RNDPlaylist_Amount
  #G_SR_RNDPlaylist_Amount
  #G_CH_RNDPlaylist_Time
  #G_TX_RNDPlaylist_Time
  #G_CB_RNDPlaylist_Time
  #G_FR_RNDPlaylist_Select
  #G_CH_RNDPlaylist_Genre
  #G_LV_RNDPlaylist_Genre
  #G_CH_RNDPlaylist_Played
  #G_BN_RNDPlaylist_Cancel
  #G_BN_RNDPlaylist_Create
  #G_TX_RNDPlaylist_Status
  ;Win MLSearchOptions
  #G_FR_MLSearchO_Misc
  #G_CH_MLSearchO_CaseS
  #G_CH_MLSearchO_WholeWord
  #G_CH_MLSearchO_Played
  #G_FR_MLSearchO_Year
  #G_CB_MLSearchO_Year
  #G_FR_MLSearchO_SearchI
  #G_CH_MLSearchO_Title
  #G_CH_MLSearchO_Artist
  #G_CH_MLSearchO_Album
  #G_CH_MLSearchO_Comment
  #G_CH_MLSearchO_Path
  #G_CH_MLSearchO_Filename
  #G_BN_MLSearchO_Default
  #G_BN_MLSearchO_Apply
  #G_BN_MLSearchO_Cancel
  ;Win Preferences
  ;// Main
  #G_TR_Pref_Menu
  #G_FR_Pref_Gap
  #G_BN_Pref_Apply
  #G_BN_Pref_Close
  #G_BN_Pref_Cancel
  ;// fmod
  #G_TX_Pref_OutputMode
  #G_CB_Pref_OutputMode
  #G_TX_Pref_OutputDriver
  #G_CB_Pref_OutputDriver
  #G_TX_Pref_OutputRate
  #G_CB_Pref_OutputRate
  #G_TX_Pref_ResamplingMethod
  #G_CB_Pref_ResamplingMethod
  #G_TX_Pref_SpeakerMode
  #G_CB_Pref_SpeakerMode
  #G_TX_Pref_StreamBufferSize
  #G_CB_Pref_StreamBufferSize
  #G_BN_Pref_DefaultFMODEX
  ;// Playing
  #G_FR_Pref_Equilizer
  #G_CH_Pref_Equilizer
  #G_CB_Pref_Equilizer
  #G_TB_Pref_EQ00070
  #G_TX_Pref_EQ00070
  #G_TB_Pref_EQ00180
  #G_TX_Pref_EQ00180
  #G_TB_Pref_EQ00320
  #G_TX_Pref_EQ00320
  #G_TB_Pref_EQ00600
  #G_TX_Pref_EQ00600
  #G_TB_Pref_EQ01000
  #G_TX_Pref_EQ01000
  #G_TB_Pref_EQ03000
  #G_TX_Pref_EQ03000
  #G_TB_Pref_EQ06000
  #G_TX_Pref_EQ06000
  #G_TB_Pref_EQ12000
  #G_TX_Pref_EQ12000
  #G_TB_Pref_EQ14000
  #G_TX_Pref_EQ14000
  #G_TB_Pref_EQ16000
  #G_TX_Pref_EQ16000
  #G_FR_Pref_Effects
  #G_CH_Pref_HPass
  #G_CH_Pref_LPass
  #G_CH_Pref_Echo
  #G_CH_Pref_Flange
  #G_CH_Pref_Distortion
  #G_CH_Pref_Chorus
  #G_Fr_Pref_Playing
  #G_TX_Pref_Guidance
  #G_TB_Pref_Guidance
  #G_BN_Pref_Guidance
  #G_TX_Pref_Speed
  #G_TB_Pref_Speed
  #G_BN_Pref_SpeedNormal
  ;// Windows
  #G_CH_Pref_OnTop
  #G_CH_Pref_Opacity
  #G_TB_Pref_Opacity
  #G_CH_Pref_Magnetic
  #G_TB_Pref_MagneticVal
  #G_CH_Pref_AutoClmnwPL
  #G_CH_Pref_AutoClmnwML
  #G_LV_Pref_Layout
  #G_TX_Pref_LengthFormat
  #G_CB_Pref_LengthFormat
  ;// MediaLib
  #G_TX_Pref_MediaLibPath
  #G_SR_Pref_MediaLibPath
  #G_BN_Pref_MediaLibPath
  #G_BN_Pref_MediaLibScan
  #G_BN_Pref_MediaLibScanFolder
  #G_CH_Pref_AddPlayFiles
  #G_TX_Pref_PlayCounterPercent
  #G_SP_Pref_PlayCounterPercent
  ;// Misc
  #G_CH_Pref_Loging
  #G_CH_Pref_LogingDelStart
  #G_CH_Pref_Clipboard
  #G_CH_Pref_AutoPlayList
  #G_FR_Pref_AutoSave
  #G_CH_Pref_AutoSavePf
  #G_CH_Pref_AutoSaveIS
  #G_CH_Pref_AutoSavePL
  #G_CH_Pref_AutoSaveML
  #G_TX_Pref_AutoSaveIntervall
  #G_SP_Pref_AutoSaveIntervall
  #G_CH_Pref_EndQuestion
  ;// Plugins
  #G_LI_Pref_Plugins
  ;// Statistics
  #G_TX_Pref_PlayTime
  #G_TX_Pref_PlayTimeC
  #G_TX_Pref_PlayedSongs_Start
  #G_TX_Pref_PlayedSongs_StartC
  #G_TX_Pref_PlayedSongs_End
  #G_TX_Pref_PlayedSongs_EndC
  #G_BN_Pref_ResetStatistics
  ;Win Info
  #G_IG_Info_PrgLogo
  #G_FR_Info_Gap
  #G_PN_Info_Info
  #G_TX_Info_Info
  #G_TX_Info_ChangeLog
  #G_BN_Info_Close
  ;Win Order
  #G_TX_Order_Event
  #G_CB_Order_Event
  #G_TX_Order_Order
  #G_CB_Order_Order
  #G_BN_Order_Close
  #G_BN_Order_Cancel
EndEnumeration

Enumeration 1
  #PlayType_PlayList
  #PlayType_MediaLibary
EndEnumeration

#G_PrefS = #G_TX_Pref_OutputMode
#G_PrefE = #G_BN_Pref_ResetStatistics

Enumeration
  #Toolbar_Main1
  #Toolbar_Main2
EndEnumeration

Enumeration
  #Menu_PlayList
  #Menu_MediaLibary
  #Menu_Open
  #Menu_SysTray
  #Menu_ListIconGadget
EndEnumeration

Enumeration
  ;Toolbars Main
  #Mnu_Main_TB1_Previous
  #Mnu_Main_TB1_Play
  #Mnu_Main_TB1_Pause
  #Mnu_Main_TB1_Stop
  #Mnu_Main_TB1_Next
  #Mnu_Main_TB1_Volume
  #Mnu_Main_TB2_Repeat
  #Mnu_Main_TB2_Random
  #Mnu_Main_TB2_Open
  #Mnu_Main_TB2_PlayList
  #Mnu_Main_TB2_MediaLib
  #Mnu_Main_TB2_Preferences
  #Mnu_Main_TB2_Order
  ;Playlist
  #Mnu_PlayList_Play
  #Mnu_PlayList_SortTitle
  #Mnu_PlayList_SortAlbum
  #Mnu_PlayList_SortArtist
  #Mnu_PlayList_SortTrack
  #Mnu_PlayList_SortLength
  #Mnu_PlayList_SortYear
  #Mnu_PlayList_Search
  #Mnu_PlayList_AddFile
  #Mnu_PlayList_AddFolder
  #Mnu_PlayList_AddStream
  #Mnu_PlayList_RndPlaylist
  #Mnu_PlayList_OpenFolder
  #Mnu_PlayList_SavePlayList
  #Mnu_PlayList_Remove
  #Mnu_PlayList_RemoveAll
  #Mnu_PlayList_Info
  ;MediaLibary
  #Mnu_MediaLib_Bookmark
  #Mnu_MediaLib_RemoveBookmark
  #Mnu_MediaLib_AddPLSel
  #Mnu_MediaLib_AddPLAll
  #Mnu_MediaLib_AddPLSelN
  #Mnu_MediaLib_AddPLAllN
  #Mnu_MediaLib_Info
  ;Open
  #Mnu_Open_File
  #Mnu_Open_Folder
  #Mnu_Open_NetStream
  ;SysTray
  #Mnu_SysTray_Show
  #Mnu_SysTray_Play
  #Mnu_SysTray_Stop
  #Mnu_SysTray_Pause
  #Mnu_SysTray_NextTrack
  #Mnu_SysTray_BackTrack
  #Mnu_SysTray_Update
  #Mnu_SysTray_UpdateCheck
  #Mnu_SysTray_About
  #Mnu_SysTray_Website
  #Mnu_SysTray_Feedback
  #Mnu_SysTray_Log
  #Mnu_SysTray_Pref
  #Mnu_SysTray_Help
  #Mnu_SysTray_End
  ;ListIconGadget
  #Mnu_ListIconGadget_AlignL
  #Mnu_ListIconGadget_AlignC
  #Mnu_ListIconGadget_AlignR
EndEnumeration

Enumeration
  #SizeType_Normal
  #SizeType_Playlist
  #SizeType_MediaLibary
EndEnumeration

Enumeration
  #ImageList_Zero
  #ImageList_SysTray
  #ImageList_Back
  #ImageList_Play
  #ImageList_Pause
  #ImageList_Stop
  #ImageList_Next
  #ImageList_Open
  #ImageList_Save
  #ImageList_Info
  #ImageList_Volume
  #ImageList_Search
  #ImageList_TrackInfo
  #ImageList_SOptions
  #ImageList_Pref
  #ImageList_PlayList
  #ImageList_MediaLib
  #ImageList_Repeat
  #ImageList_Random
  #ImageList_About
  #ImageList_End
  #ImageList_AddFile
  #ImageList_AddFolder
  #ImageList_AddAudioCD
  #ImageList_AddURL
  #ImageList_Remove
  #ImageList_Addon
  #ImageList_Bookmark
  #ImageList_Website
  #ImageList_Feedback
  #ImageList_ShowHide
  #ImageList_Statics
  #ImageList_Help
  #ImageList_Time
  #ImageList_SortUp
  #ImageList_SortDown
  #ImageList_Mute
  #ImageList_Watch
EndEnumeration

Enumeration
  #ML_Search_Search
  #ML_Search_Album
  #ML_Search_Show
  #ML_Search_MostPlay
  #ML_Search_LastPlay
  #ML_Search_NeverPlay
  #ML_Search_Bookmark
EndEnumeration

Enumeration
  #Timer_FmodTimesRefresh
EndEnumeration

Enumeration
  #WndEx_Magnetic_Desktop  = $1
  #WndEx_Magnetic_Window   = $2
  #WndEx_Magnetic_WindowC  = $4
  #WndEx_Moveable          = $8
  #WndEx_All               = $1|$2|$8
EndEnumeration

#MediaLib_Flag_Bookmark  = 1

#NetStream_Play          = 1
#NetStream_Clear         = 2

#WM_User_Msg_Init        = #WM_USER + 1
#WM_User_Msg_Receive     = #WM_USER + 2

#PrgName                 = "MediaKing"
#PrgVers                 = 39

#ColumnCount_PL          = 7
#ColumnCount_ML          = 9

#MaxChannels             = 1

#MaxSearchH              = 80

#PosAccuracy             = 1000

#FileCheckString         = "MK-F"

#File_Pref               = "MediaKing.ini"
#File_PlayL              = "PlayList.dat"
#File_Shout              = "Shoutcast.dat"
#File_MLib               = "MediaLibary.dat"
#File_Log                = "Log.txt"
#File_Help               = "MediaKing.chm"

#Folder_Plugins          = "Plugins\"

#URLUpdateC              = "http://purefreak.pu.funpic.de/data/version/mediaking.inf"
#URLUpdateS              = "http://purefreak.pu.funpic.de/"
#URLFeedback             = "http://purefreak.pu.funpic.de/contact.htm"

#AudioTypes              = "*.wma;*.mp2;*.mp3;*.wav;*.asf;*.mod;*.xm;*.xma;*.ogg;*.mid;*.flac;*.aiff;*.dls;*.fsb;*.it;*.raw;*.s3m;*.vag"
#PlayLTypes              = "*.m3u;*.pls;*.asx;*.wax"
#AllTypes                = #AudioTypes + ";" + #PlayLTypes

#DLL_FuncCheck           = "MK_Plugin_Check"
#DLL_FuncOpen            = "MK_Plugin_Open"
#DLL_FuncClose           = "MK_Plugin_Close"
#DLL_FuncPlay            = "MK_Song_Play"
#DLL_FuncStop            = "MK_Song_Stop"
#DLL_FuncPause           = "MK_Song_Pause"
#DLL_FuncPos             = "MK_Song_Position"
#DLL_FuncEventLoop       = "MK_Window_EventLoop"

;Misc
Define iNext.i
Global iTemp.i
Global sTemp.s
Global lInitNetwork.i
Global sProgramParameter.s
Global lSenderHandle.i
Global wMouseWheel.w
Global iLPercentArea.i

;WindowLoop
Global lWindowEvent.i
Global lEventWindow.i
Global lEventGadget.i
Global lEventMenu.i
Global lEventType.i
Global lEventLP.i
Global lEventWP.i

;Window Misc
Global lWinID_Main.i
Global lWinID_TitleInfo.i
Global lWinID_InternetStream.i
Global lWinID_Search.i
Global lWinID_MLScan.i
Global lWinID_Log.i
Global lWinID_RndPlaylist.i
Global lWinID_MLSearchO.i
Global iWinID_Preferences.i
Global lWinID_Info.i
Global lWinID_Order.i

Global iWinW_Main_SecondMin.i
Global iWinH_Main_SecondMin.i
Global iWinW_Main_NormalMin.i

Global iSizeTypeOld.i

Global iWinW_Main_Normal.i
Global iWinW_Main_Second.i
Global iWinH_Main_Second.i

Global lMediaLib_SPSize1.i
Global lMediaLib_SPSize2.i

Global iColumnW1_InternetStream.i
Global iColumnW2_InternetStream.i

Global iLastHeaderRClick.i
Global iLastHeaderRClickIndex.i

Global iLI_MediaLib.i
Global iLI_Plugins.i
Global iLI_InternetStream.i

;MediaLib Search
Global lMediaLibary_LastSearch.i
Global lMediaLibary_LastSearchSub.i

;MediaLib Scanprogress
Global lMediaLib_StartTime.i
Global lMediaLib_ScanCounter.i
Global lMediaLib_ScanStatus.i
Global lMediaLib_CFileCounter.i
Global lMediaLib_IFileCounter.i
Global lMediaLib_NFileCounter.i
Global sMediaLib_CFile.s

;Playing
Global lLVolume.i = -1
Global lSelect.i
Global lPosChange.i

;Ressource
Global lImagelist.i
Global lImgInfologo.i
Global lImgPrgLogo.i

;Timer
Global Timer_StartStream.i
Global Timer_RefreshTimes.i

Global Dim ColumnOrderArray_PL.i(#ColumnCount_PL - 1)
Global Dim ColumnOrderArray_ML.i(#ColumnCount_ML - 1)

Structure _Order
  event.i
  order.i
EndStructure
Global Order._Order

Structure _Tag
  type.i
  name.s
  string.s
EndStructure
Global NewList Tag._Tag()

Structure _WinSize
  posx.i
  posy.i
  width.i
  height.i
EndStructure
Global Dim WinSize._WinSize(#Win_Last - 1)

Structure _Char
  StructureUnion
    c.c
    s.s{1}
  EndStructureUnion
EndStructure

Structure WndEx
  win.i
  w.RECT
  c.RECT
  flags.i
EndStructure
Global NewList WndEx.WndEx()

Global NewList Driver.s()

Structure _Pref
  outputmode.i
  outputdriver.i
  outputrate.i
  interpolation.i
  speakermode.i
  streambuffer.i

  equilizer.i
  equilizerdefine.i
  equilizerval.i[10]
  hpass.i
  lpass.i
  echo.i
  flange.i
  distortation.i
  chorus.i
  speed.i
  panel.i

  ontop.i
  opacity.i
  opacityval.i
  magnetic.i
  magneticval.i
  autoclnw_pl.i
  autoclnw_ml.i
  lengthformat.s

  color_ti_bg.i
  color_ti_tx.i
  color_sel_bg.i
  color_sel_tx.i

  medialibpath.s
  addplayfiles.i
  playcountpercent.i

  loging.i
  logingdelstart.i
  clipboard.i
  pl_auto.i

  autosave_pf.i
  autosave_is.i
  autosave_pl.i
  autosave_ml.i
  autosave_intervall.i

  endquestion.i

  playtime.q
  playcount_s.q
  playcount_e.q
EndStructure
Global Pref._Pref

Structure _ReadTag
  path.s
  title.s
  artist.s
  album.s
  year.s
  track.i
  comment.s
  genre.s
  length.i
  type.i
  format.i
  channels.i
  bits.i
  bitrate.i
  frequency.f
  volume.f
  pan.f
  priority.f
EndStructure
Global ReadTag._ReadTag

Structure _CurrPlay
  path.s
  title.s
  artist.s
  album.s
  year.s
  track.i
  comment.s
  genre.s
  length.i
  type.i
  format.i
  channels.i
  bits.i
  bitrate.i
  frequency.f
  volume.f
  pan.f
  priority.f
  starttime.i
EndStructure
Global CurrPlay._CurrPlay

Structure _MLSearchO
  cases.i
  wholeword.i
  played.i
  year.i
  searchin.i
EndStructure
Global MLSearchO._MLSearchO

Structure _PlayList
  path.s
  title.s
  artist.s
  album.s
  year.s
  track.i
  comment.s
  genre.s
  length.i
  random.i
EndStructure
Global NewList PlayList._PlayList()

Structure _RndPlayList
  index.i
  value.i
  add.i
EndStructure
Global NewList RndPlayList._RndPlayList()

Structure _SearchResult
  name.s
  index.i
EndStructure
Global NewList SearchResult._SearchResult()

Structure _PLSearchHistory
  string.s
EndStructure
Global NewList PLSearchHistory._PLSearchHistory()

Structure _MediaLibary
  path.s
  title.s
  artist.s
  album.s
  year.s
  track.i
  comment.s
  genre.s
  length.i
  lastplay.i
  playcount.i
  flags.i
EndStructure
Global NewList MediaLibary._MediaLibary()

Structure _MediaLibaryAlbum
  name.s
EndStructure
Global NewList MediaLibaryAlbum._MediaLibaryAlbum()

Structure _MediaLibarySearch
  index.i
  flags.i
EndStructure
Global NewList MediaLibarySearch._MediaLibarySearch()

Structure _DLLPlugin
  size.i
  stable.i
  autor.s
  version.i
  description.s
EndStructure

Structure _Plugin
  enable.i
  handle.i
  file.s
  autor.s
  version.i
  description.s
EndStructure
Global NewList Plugin._Plugin()

Structure _Save
  Preferences.i
  Preferences_Time.i
  Playlist.i
  PlayList_Time.i
  Medialibary.i
  Medialibary_Time.i
  Shoutcast.i
  Shoutcast_Time.i
EndStructure
Global Save._Save

Structure _Shoutcast
  name.s
  url.s
EndStructure
Global NewList Shoutcast._Shoutcast()

Structure _PreDefineEquilizer
  name.s
  Values.i [10]
EndStructure
Global NewList PreDefEQ._PreDefineEquilizer()
;{ Declare
AddElement(PreDefEQ()): PreDefEQ()\name = "Standard"
PreDefEQ()\values[0] = 20: PreDefEQ()\values[1] = 20: PreDefEQ()\values[2] = 20: PreDefEQ()\values[3] = 20: PreDefEQ()\values[4] = 20
PreDefEQ()\values[5] = 20: PreDefEQ()\values[6] = 20: PreDefEQ()\values[7] = 20: PreDefEQ()\values[8] = 20: PreDefEQ()\values[9] = 20
AddElement(PreDefEQ()): PreDefEQ()\name = "Classic"
PreDefEQ()\values[0] = 20: PreDefEQ()\values[1] = 20: PreDefEQ()\values[2] = 20: PreDefEQ()\values[3] = 20: PreDefEQ()\values[4] = 20
PreDefEQ()\values[5] = 20: PreDefEQ()\values[6] = 12: PreDefEQ()\values[7] = 12: PreDefEQ()\values[8] = 12: PreDefEQ()\values[9] = 10
AddElement(PreDefEQ()): PreDefEQ()\name = "Club"
PreDefEQ()\values[0] = 20: PreDefEQ()\values[1] = 20: PreDefEQ()\values[2] = 23: PreDefEQ()\values[3] = 26: PreDefEQ()\values[4] = 26
PreDefEQ()\values[5] = 26: PreDefEQ()\values[6] = 23: PreDefEQ()\values[7] = 20: PreDefEQ()\values[8] = 20: PreDefEQ()\values[9] = 20
AddElement(PreDefEQ()): PreDefEQ()\name = "Dance"
PreDefEQ()\values[0] = 30: PreDefEQ()\values[1] = 27: PreDefEQ()\values[2] = 22: PreDefEQ()\values[3] = 20: PreDefEQ()\values[4] = 20
PreDefEQ()\values[5] = 13: PreDefEQ()\values[6] = 12: PreDefEQ()\values[7] = 12: PreDefEQ()\values[8] = 20: PreDefEQ()\values[9] = 20
AddElement(PreDefEQ()): PreDefEQ()\name = "Full Bass"
PreDefEQ()\values[0] = 30: PreDefEQ()\values[1] = 30: PreDefEQ()\values[2] = 30: PreDefEQ()\values[3] = 26: PreDefEQ()\values[4] = 22
PreDefEQ()\values[5] = 15: PreDefEQ()\values[6] = 11: PreDefEQ()\values[7] = 09: PreDefEQ()\values[8] = 08: PreDefEQ()\values[9] = 08
AddElement(PreDefEQ()): PreDefEQ()\name = "Full Bass & Treble"
PreDefEQ()\values[0] = 27: PreDefEQ()\values[1] = 26: PreDefEQ()\values[2] = 20: PreDefEQ()\values[3] = 12: PreDefEQ()\values[4] = 15
PreDefEQ()\values[5] = 22: PreDefEQ()\values[6] = 29: PreDefEQ()\values[7] = 31: PreDefEQ()\values[8] = 32: PreDefEQ()\values[9] = 32
AddElement(PreDefEQ()): PreDefEQ()\name = "Full Treble"
PreDefEQ()\values[0] = 10: PreDefEQ()\values[1] = 10: PreDefEQ()\values[2] = 10: PreDefEQ()\values[3] = 15: PreDefEQ()\values[4] = 23
PreDefEQ()\values[5] = 31: PreDefEQ()\values[6] = 36: PreDefEQ()\values[7] = 36: PreDefEQ()\values[8] = 36: PreDefEQ()\values[9] = 37
AddElement(PreDefEQ()): PreDefEQ()\name = "Laptop Speakers/Headphones"
PreDefEQ()\values[0] = 25: PreDefEQ()\values[1] = 31: PreDefEQ()\values[2] = 25: PreDefEQ()\values[3] = 16: PreDefEQ()\values[4] = 17
PreDefEQ()\values[5] = 22: PreDefEQ()\values[6] = 22: PreDefEQ()\values[7] = 30: PreDefEQ()\values[8] = 33: PreDefEQ()\values[9] = 35
AddElement(PreDefEQ()): PreDefEQ()\name = "Large Hall"
PreDefEQ()\values[0] = 30: PreDefEQ()\values[1] = 30: PreDefEQ()\values[2] = 26: PreDefEQ()\values[3] = 26: PreDefEQ()\values[4] = 20
PreDefEQ()\values[5] = 15: PreDefEQ()\values[6] = 15: PreDefEQ()\values[7] = 15: PreDefEQ()\values[8] = 20: PreDefEQ()\values[9] = 20
AddElement(PreDefEQ()): PreDefEQ()\name = "Live"
PreDefEQ()\values[0] = 15: PreDefEQ()\values[1] = 20: PreDefEQ()\values[2] = 24: PreDefEQ()\values[3] = 25: PreDefEQ()\values[4] = 26
PreDefEQ()\values[5] = 26: PreDefEQ()\values[6] = 24: PreDefEQ()\values[7] = 23: PreDefEQ()\values[8] = 23: PreDefEQ()\values[9] = 22
AddElement(PreDefEQ()): PreDefEQ()\name = "Party"
PreDefEQ()\values[0] = 27: PreDefEQ()\values[1] = 27: PreDefEQ()\values[2] = 20: PreDefEQ()\values[3] = 20: PreDefEQ()\values[4] = 20
PreDefEQ()\values[5] = 20: PreDefEQ()\values[6] = 20: PreDefEQ()\values[7] = 20: PreDefEQ()\values[8] = 27: PreDefEQ()\values[9] = 27
AddElement(PreDefEQ()): PreDefEQ()\name = "Pop"
PreDefEQ()\values[0] = 18: PreDefEQ()\values[1] = 25: PreDefEQ()\values[2] = 27: PreDefEQ()\values[3] = 28: PreDefEQ()\values[4] = 25
PreDefEQ()\values[5] = 18: PreDefEQ()\values[6] = 17: PreDefEQ()\values[7] = 17: PreDefEQ()\values[8] = 18: PreDefEQ()\values[9] = 18
AddElement(PreDefEQ()): PreDefEQ()\name = "Reggae"
PreDefEQ()\values[0] = 20: PreDefEQ()\values[1] = 20: PreDefEQ()\values[2] = 19: PreDefEQ()\values[3] = 13: PreDefEQ()\values[4] = 20
PreDefEQ()\values[5] = 27: PreDefEQ()\values[6] = 27: PreDefEQ()\values[7] = 20: PreDefEQ()\values[8] = 20: PreDefEQ()\values[9] = 20
AddElement(PreDefEQ()): PreDefEQ()\name = "Rock"
PreDefEQ()\values[0] = 28: PreDefEQ()\values[1] = 25: PreDefEQ()\values[2] = 14: PreDefEQ()\values[3] = 11: PreDefEQ()\values[4] = 16
PreDefEQ()\values[5] = 24: PreDefEQ()\values[6] = 29: PreDefEQ()\values[7] = 31: PreDefEQ()\values[8] = 31: PreDefEQ()\values[9] = 31
AddElement(PreDefEQ()): PreDefEQ()\name = "Ska"
PreDefEQ()\values[0] = 17: PreDefEQ()\values[1] = 15: PreDefEQ()\values[2] = 15: PreDefEQ()\values[3] = 19: PreDefEQ()\values[4] = 24
PreDefEQ()\values[5] = 26: PreDefEQ()\values[6] = 29: PreDefEQ()\values[7] = 30: PreDefEQ()\values[8] = 31: PreDefEQ()\values[9] = 30
AddElement(PreDefEQ()): PreDefEQ()\name = "Soft"
PreDefEQ()\values[0] = 25: PreDefEQ()\values[1] = 22: PreDefEQ()\values[2] = 18: PreDefEQ()\values[3] = 17: PreDefEQ()\values[4] = 18
PreDefEQ()\values[5] = 24: PreDefEQ()\values[6] = 29: PreDefEQ()\values[7] = 30: PreDefEQ()\values[8] = 31: PreDefEQ()\values[9] = 32
AddElement(PreDefEQ()): PreDefEQ()\name = "Soft Rock"
PreDefEQ()\values[0] = 24: PreDefEQ()\values[1] = 24: PreDefEQ()\values[2] = 22: PreDefEQ()\values[3] = 19: PreDefEQ()\values[4] = 15
PreDefEQ()\values[5] = 14: PreDefEQ()\values[6] = 16: PreDefEQ()\values[7] = 19: PreDefEQ()\values[8] = 23: PreDefEQ()\values[9] = 29
AddElement(PreDefEQ()): PreDefEQ()\name = "Techno"
PreDefEQ()\values[0] = 28: PreDefEQ()\values[1] = 26: PreDefEQ()\values[2] = 20: PreDefEQ()\values[3] = 14: PreDefEQ()\values[4] = 15
PreDefEQ()\values[5] = 20: PreDefEQ()\values[6] = 28: PreDefEQ()\values[7] = 30: PreDefEQ()\values[8] = 30: PreDefEQ()\values[9] = 29
;}

Global NewList PlayListQuene.s()

Global Dim Fmod_SpectrumL.f(127)
Global Dim Fmod_SpectrumR.f(127)

Global Dim Equilizer.i(9)

#MaxMP3Genre = 147
Global Dim MP3Genre.s(#MaxMP3Genre)
;{ Declare
MP3Genre(0)   = "Blues"
MP3Genre(1)   = "Classic Rock"
MP3Genre(2)   = "Country"
MP3Genre(3)   = "Dance"
MP3Genre(4)   = "Disco"
MP3Genre(5)   = "Funk"
MP3Genre(6)   = "Grunge"
MP3Genre(7)   = "Hip-Hop"
MP3Genre(8)   = "Jazz"
MP3Genre(9)   = "Metal"
MP3Genre(10)  = "New Age"
MP3Genre(11)  = "Oldies"
MP3Genre(12)  = "Other"
MP3Genre(13)  = "Pop"
MP3Genre(14)  = "R&B"
MP3Genre(15)  = "Rap"
MP3Genre(16)  = "Reggae"
MP3Genre(17)  = "Rock"
MP3Genre(18)  = "Techno"
MP3Genre(19)  = "Industrial"
MP3Genre(20)  = "Alternative"
MP3Genre(21)  = "Ska"
MP3Genre(22)  = "Death Metal"
MP3Genre(23)  = "Pranks"
MP3Genre(24)  = "Soundtrack"
MP3Genre(25)  = "Euro-Techno"
MP3Genre(26)  = "Ambient"
MP3Genre(27)  = "Trip-Hop"
MP3Genre(28)  = "Vocal"
MP3Genre(29)  = "Jazz+Funk"
MP3Genre(30)  = "Fusion"
MP3Genre(31)  = "Trance"
MP3Genre(32)  = "Classical"
MP3Genre(33)  = "Instrumental"
MP3Genre(34)  = "Acid"
MP3Genre(35)  = "House"
MP3Genre(36)  = "Game"
MP3Genre(37)  = "Sound Clip"
MP3Genre(38)  = "Gospel"
MP3Genre(39)  = "Noise"
MP3Genre(40)  = "AlternRock"
MP3Genre(41)  = "Bass"
MP3Genre(42)  = "Soul"
MP3Genre(43)  = "Punk"
MP3Genre(44)  = "Space"
MP3Genre(45)  = "Meditative"
MP3Genre(46)  = "Instrumental Pop"
MP3Genre(47)  = "Instrumental Rock"
MP3Genre(48)  = "Ethnic"
MP3Genre(49)  = "Gothic"
MP3Genre(50)  = "Darkwave"
MP3Genre(51)  = "Techno-Industrial"
MP3Genre(52)  = "Electronic"
MP3Genre(53)  = "Pop-Folk"
MP3Genre(54)  = "Eurodance"
MP3Genre(55)  = "Dream"
MP3Genre(56)  = "Southern Rock"
MP3Genre(57)  = "Comedy"
MP3Genre(58)  = "Cult"
MP3Genre(59)  = "Gangsta"
MP3Genre(60)  = "Top 40"
MP3Genre(61)  = "Christian Rap"
MP3Genre(62)  = "PopFunk"
MP3Genre(63)  = "Jungle"
MP3Genre(64)  = "Native American"
MP3Genre(65)  = "Cabaret"
MP3Genre(66)  = "New Wave"
MP3Genre(67)  = "Psychadelic"
MP3Genre(68)  = "Rave"
MP3Genre(69)  = "Showtunes"
MP3Genre(70)  = "Trailer"
MP3Genre(71)  = "Lo-Fi"
MP3Genre(72)  = "Tribal"
MP3Genre(73)  = "Acid Punk"
MP3Genre(74)  = "Acid Jazz"
MP3Genre(75)  = "Polka"
MP3Genre(76)  = "Retro"
MP3Genre(77)  = "Musical"
MP3Genre(78)  = "Rock & Roll"
MP3Genre(79)  = "Hard Rock"
MP3Genre(80)  = "Folk"
MP3Genre(81)  = "Folk-Rock"
MP3Genre(82)  = "National Folk"
MP3Genre(83)  = "Swing"
MP3Genre(84)  = "Fast Fusion"
MP3Genre(85)  = "Bebob"
MP3Genre(86)  = "Latin"
MP3Genre(87)  = "Revival"
MP3Genre(88)  = "Celtic"
MP3Genre(89)  = "Bluegrass"
MP3Genre(90)  = "Avantgarde"
MP3Genre(91)  = "Gothic Rock"
MP3Genre(92)  = "Progressive Rock"
MP3Genre(93)  = "Psychedelic Rock"
MP3Genre(94)  = "Symphonic Rock"
MP3Genre(95)  = "Slow Rock"
MP3Genre(96)  = "Big Band"
MP3Genre(97)  = "Chorus"
MP3Genre(98)  = "Easy Listening"
MP3Genre(99)  = "Acoustic"
MP3Genre(100) = "Humour"
MP3Genre(101) = "Speech"
MP3Genre(102) = "Chanson"
MP3Genre(103) = "Opera"
MP3Genre(104) = "Chamber Music"
MP3Genre(105) = "Sonata"
MP3Genre(106) = "Symphony"
MP3Genre(107) = "Booty Bass"
MP3Genre(108) = "Primus"
MP3Genre(109) = "Porn Groove"
MP3Genre(110) = "Satire"
MP3Genre(111) = "Slow Jam"
MP3Genre(112) = "Club"
MP3Genre(113) = "Tango"
MP3Genre(114) = "Samba"
MP3Genre(115) = "Folklore"
MP3Genre(116) = "Ballad"
MP3Genre(117) = "Power Ballad"
MP3Genre(118) = "Rhythmic Soul"
MP3Genre(119) = "Freestyle"
MP3Genre(120) = "Duet"
MP3Genre(121) = "Punk Rock"
MP3Genre(122) = "Drum Solo"
MP3Genre(123) = "A capella"
MP3Genre(124) = "Euro-House"
MP3Genre(125) = "Dance Hall"
MP3Genre(126) = "Goa"
MP3Genre(127) = "Drum & Bass"
MP3Genre(128) = "Club-House"
MP3Genre(129) = "Hardcore"
MP3Genre(130) = "Terror"
MP3Genre(131) = "Indie"
MP3Genre(132) = "BritPop"
MP3Genre(133) = "Negerpunk"
MP3Genre(134) = "Polsk Punk"
MP3Genre(135) = "Beat"
MP3Genre(136) = "Christian Gangsta"
MP3Genre(137) = "Heavy Metal"
MP3Genre(138) = "Black Metal"
MP3Genre(139) = "Crossover"
MP3Genre(140) = "Contemporary Christian"
MP3Genre(141) = "Christian Rock"
MP3Genre(142) = "Merengue"
MP3Genre(143) = "Salsa"
MP3Genre(144) = "Thrash Metal"
MP3Genre(145) = "Anime"
MP3Genre(146) = "JPop"
MP3Genre(147) = "SynthPop"
;}

#MaxSoundType = 23
Global Dim SoundType.s(#MaxSoundType)
;{ Declare
SoundType(0)  = ""
SoundType(1)  = "AAC"
SoundType(2)  = "Aiff"
SoundType(3)  = "Microsoft Advanced Systems"
SoundType(4)  = "Sony ATRAC 3"
SoundType(5)  = "Digital CD Audio"
SoundType(6)  = "Sound Font / Downloadable Sound Bank"
SoundType(7)  = "FLAC lossless Codec"
SoundType(8)  = "FMOD Sample Bank"
SoundType(9)  = "GameCube ADPCM"
SoundType(10) = "Impulse Tracker"
SoundType(11) = "Midi"
SoundType(12) = "Protracker / Fasttracker MOD"
SoundType(13) = "MPEG"
SoundType(14) = "Ogg vorbis"
SoundType(15) = "Playlist"
SoundType(16) = "Raw PCM Data"
SoundType(17) = "ScreamTracker 3"
SoundType(18) = "Sound Font 2"
SoundType(19) = "User created Sound"
SoundType(20) = "Microsoft WAV"
SoundType(21) = "FastTracker 2 XM"
SoundType(22) = "Xbox360 XMA"
SoundType(23) = "PlayStation Portable adpcm VAG"
;}

sProgramParameter = ProgramParameter()
If Trim(sProgramParameter) = ""
  CompilerIf #PB_Compiler_Debugger = 0
  ;Starttest
  Global lSemaphore.i = CreateSemaphore_(#Null, #Null, 1, "c2eb301f-55a4-49cc-9877-4807bbc5ffc8-mk")
  If lSemaphore <> 0 And GetLastError_() = #ERROR_ALREADY_EXISTS
    CloseHandle_(lSemaphore)
    End
  EndIf
  CompilerEndIf
Else
  ;Parameter
  If sProgramParameter <> ""
    ;FindTarget
    Define lOldHandle.i = FindWindow_("WindowClass_1", #PrgName)
    If lOldHandle <> 0
      ;SendMessage
      If SendMessage_(lOldHandle, #WM_User_Msg_Init, 0, GetCurrentProcessId_()) <> 0
        SendMessage_(lOldHandle, #WM_User_Msg_Receive, @sProgramParameter, Len(sProgramParameter))
      EndIf
      End
    EndIf
  EndIf
EndIf

Declare.i PlayMedia(File$, ErrorMessage = 0)
Declare.i PlayList_NextTrack()
Declare.i PlayList_BackTrack()
Declare.i SetStop()
Declare.i PlayList_ChangeSelect(Sel, ErrorMessage = 0)
 Declare.s ReadTagData(*TagData, TagLen, TagType)
 Declare.i ReadTagEx(Sound)
Declare.i RefreshSpectrum(IgnoreTime = 0)
Declare.i MediaLib_AddFile(File$)
Declare.i CloseMedia()
Declare   MediaLib_RefreshHeader()
Declare   MediaLib_RefreshStatusText()
Declare   Preferences_ChangeArea()
Declare   Preferences_InitWindow()
Declare   Preferences_CheckButtons()
Declare   Window_ResizeGadgets(Window)
; Declare   FM_InitSystem()

Procedure ErrorHandler()
  If MessageRequester("Fehler", "Adresse: " + Hex(ErrorAddress()) + #CR$ + "Zeile: " + Str(ErrorLine()) + #CR$ + #CR$ + ErrorMessage(ErrorCode()), #MB_ICONERROR|#MB_RETRYCANCEL) = #IDCANCEL
    End
  EndIf
EndProcedure

Procedure.i WndEx_AddWindow(Window, Flags = #WndEx_All)
  Protected iResult.i

  If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
    Protected iExist.i

    If IsWindow(Window) <> 0
      Window = WindowID(Window)
    EndIf

    ForEach WndEx()
      If WndEx()\win = Window
        iExist = 1 : Break
      EndIf
    Next

    If iExist = 0
      AddElement(WndEx())

      WndEx()\win      = Window

      If Flags & #WndEx_Magnetic_Window And Flags & #WndEx_Magnetic_WindowC : Flags &~ #WndEx_Magnetic_WindowC : EndIf

      WndEx()\flags    = Flags

      GetWindowRect_(Window, @WndEx()\w)
      GetClientRect_(Window, @WndEx()\c)

      iResult = 1
    Else
      iResult = -1
    EndIf

  Else
    iResult = 0
  EndIf

  ProcedureReturn iResult.i

EndProcedure

Procedure.i WndEx_RemoveWindow(Window)
  Protected iResult.i

  If IsWindow(Window) > 0 Or IsWindow_(Window) > 0

    If IsWindow(Window) > 0
      Window = WindowID(Window)
    EndIf

    ForEach WndEx()
      If WndEx()\win = Window
        DeleteElement(WndEx())
        iResult = 1
        Break
      EndIf
    Next

    iResult = 0
  Else
    iResult = -1
  EndIf

  ProcedureReturn iResult
EndProcedure

Procedure.l WndEx_Callback(hWnd, Msg, wParam, lParam)

  ForEach WndEx()
    If hWnd = WndEx()\win

      Protected iflags.i = WndEx()\flags

      ;Moveable
      If Msg = #WM_LBUTTONDOWN

        If iflags & #WndEx_Moveable
          ReleaseCapture_()
          SendMessage_(hWnd, #WM_NCLBUTTONDOWN, #HTCAPTION, #Null)
        EndIf

      EndIf

      ;Magnetic
      If Msg = #WM_WINDOWPOSCHANGING

        Protected *Win.WINDOWPOS = lParam
        Protected WorkArea.RECT

        If *Win > 0

          ;Desktop
          If iflags & #WndEx_Magnetic_Desktop
            If SystemParametersInfo_(#SPI_GETWORKAREA, #Null, @WorkArea, #Null) <> 0
              ;Screen Top
              If *Win\y >= 0 - Pref\magneticval And *Win\y <= Pref\magneticval
                *Win\y = 0
              EndIf
              ;Screen Right
              If *Win\x + *Win\cx >= GetSystemMetrics_(#SM_CXSCREEN) - Pref\magneticval And *Win\x + *Win\cx <= GetSystemMetrics_(#SM_CXSCREEN) + Pref\magneticval
                *Win\x = GetSystemMetrics_(#SM_CXSCREEN) - *Win\cx
              EndIf
              ;Screen Bottom
              If *Win\y + *Win\cy >= GetSystemMetrics_(#SM_CYSCREEN) - Pref\magneticval And *Win\y + *Win\cy <= GetSystemMetrics_(#SM_CYSCREEN) + Pref\magneticval
                *Win\y = GetSystemMetrics_(#SM_CYSCREEN) - *Win\cy
              EndIf
              ;Screen Left
              If *Win\x >= 0 - Pref\magneticval And *Win\x <= Pref\magneticval
                *Win\x = 0
              EndIf
              ;WorkArea Top
              If *Win\y >= WorkArea\top - Pref\magneticval And *Win\y <= WorkArea\top + Pref\magneticval
                *Win\y = WorkArea\top
              EndIf
              ;WorkArea Right
              If *Win\x + *Win\cx >= WorkArea\right - Pref\magneticval And *Win\x + *Win\cx <= WorkArea\right + Pref\magneticval
                *Win\x = WorkArea\right - *Win\cx
              EndIf
              ;WorkArea Bottom
              If *Win\y + *Win\cy >= WorkArea\bottom - Pref\magneticval And *Win\y + *Win\cy <= WorkArea\bottom + Pref\magneticval
                *Win\y = WorkArea\bottom - *Win\cy
              EndIf
              ;Workarea Left
              If *Win\x >= WorkArea\left - Pref\magneticval And *Win\x <= WorkArea\left + Pref\magneticval
                *Win\x = WorkArea\Left
              EndIf
            EndIf
          EndIf

          ;MagneticWindow
          If iflags & #WndEx_Magnetic_Window Or iflags & #WndEx_Magnetic_WindowC
            ForEach WndEx()

              If WndEx()\win <> hWnd And IsWindowVisible_(WndEx()\win) = 1

                ;WindowRect
                GetWindowRect_(WndEx()\win, @WndEx()\w)
                ;ClientRect
                GetClientRect_(WndEx()\win, @WndEx()\c)
                WndEx()\c\left   = WndEx()\w\Left + (WndEx()\w\right - WndEx()\w\left - WndEx()\c\right) / 2
                WndEx()\c\top    = WndEx()\w\top + WndEx()\w\bottom - WndEx()\w\top - WndEx()\c\bottom - (WndEx()\w\right - WndEx()\w\left - WndEx()\c\right) / 2
                WndEx()\c\right  = WndEx()\c\left + WndEx()\c\right
                WndEx()\c\bottom = WndEx()\c\top + WndEx()\c\bottom

                If *Win\y >= WndEx()\w\top - *Win\cy And *Win\y + *Win\cy <= WndEx()\w\bottom + *Win\cy
                  ;Right Outdoor
                  If *Win\x >= WndEx()\w\right - Pref\magneticval And *Win\x <= WndEx()\w\right + Pref\magneticval
                    *Win\x = WndEx()\w\right
                  EndIf
                  ;Left Outdoor
                  If *Win\x + *Win\cx >= WndEx()\w\left - Pref\magneticval And *Win\x + *Win\cx <= WndEx()\w\left + Pref\magneticval
                    *Win\x = WndEx()\w\left - *Win\cx
                  EndIf
                EndIf

                If *Win\x >= WndEx()\w\left - *Win\cx And *Win\x + *Win\cx <= WndEx()\w\right + *Win\cx
                  ;Top Outdoor
                  If *Win\y + *Win\cy >= WndEx()\w\top - Pref\magneticval And *Win\y + *Win\cy <= WndEx()\w\top + Pref\magneticval
                    *Win\y = WndEx()\w\top - *Win\cy
                  EndIf
                  ;Bottom Outdoor
                  If *Win\y >= WndEx()\w\bottom - Pref\magneticval And *Win\y <= WndEx()\w\bottom + Pref\magneticval
                    *Win\y = WndEx()\w\bottom
                  EndIf
                EndIf

                If iflags & #WndEx_Magnetic_Window
                  If *Win\y >= WndEx()\w\top - *Win\cy And *Win\y + *Win\cy <= WndEx()\w\bottom + *Win\cy
                    ;Right Indoor
                    If *Win\x + *Win\cx >= WndEx()\w\right - Pref\magneticval And *Win\x + *Win\cx <= WndEx()\w\right + Pref\magneticval
                      *Win\x = WndEx()\w\right - *Win\cx
                    EndIf
                    ;Left Indoor
                    If *Win\x  >= WndEx()\w\left - Pref\magneticval And *Win\x  <= WndEx()\w\left + Pref\magneticval
                      *Win\x = WndEx()\w\left
                    EndIf
                  EndIf
                EndIf

                If iflags & #WndEx_Magnetic_Window
                  If *Win\x >= WndEx()\w\left - *Win\cx - Pref\magneticval And *Win\x + *Win\cx <= WndEx()\w\right + *Win\cx + Pref\magneticval
                    ;Top Indoor
                    If *Win\y >= WndEx()\w\top - Pref\magneticval And *Win\y <= WndEx()\w\top + Pref\magneticval
                      *Win\y = WndEx()\w\top
                    EndIf
                    ;Bottom Indoor
                    If *Win\y + *Win\cy >= WndEx()\w\bottom - Pref\magneticval And *Win\y + *Win\cy <= WndEx()\w\bottom + Pref\magneticval
                      *Win\y = WndEx()\w\bottom - *Win\cy
                    EndIf
                  EndIf
                EndIf

                ;Client
                If iflags & #WndEx_Magnetic_WindowC
                  If *Win\y >= WndEx()\w\top - *Win\cy + Pref\magneticval + 1 And *Win\y + *Win\cy <= WndEx()\w\bottom + *Win\cy - Pref\magneticval - 1
                    ;Indoor Right Client
                    If *Win\x + *Win\cx >= WndEx()\c\right - Pref\magneticval And *Win\x + *Win\cx <= WndEx()\c\right + Pref\magneticval
                      *Win\x = WndEx()\c\right - *Win\cx
                    EndIf
                    ;Indoor Left Client
                    If *Win\x  >= WndEx()\c\left - Pref\magneticval And *Win\x  <= WndEx()\c\left + Pref\magneticval
                      *Win\x = WndEx()\c\left
                    EndIf
                  EndIf
                  If *Win\x + *Win\cx = WndEx()\w\left Or *Win\x = WndEx()\w\right
                    ;Outdoor Top Client
                    If *Win\y >= WndEx()\w\top - Pref\magneticval And *Win\y <= WndEx()\w\top + Pref\magneticval
                      *Win\y = WndEx()\w\top
                    EndIf
                    ;Outdoor Bottom Client
                    If *Win\y + *Win\cy >= WndEx()\w\bottom - Pref\magneticval And *Win\y + *Win\cy <= WndEx()\w\bottom + Pref\magneticval
                      *Win\y = WndEx()\w\bottom - *Win\cy
                    EndIf
                  EndIf
                EndIf

                ;Client
                If iflags & #WndEx_Magnetic_WindowC
                  If *Win\x >= WndEx()\w\left - *Win\cx + Pref\magneticval + 1 And *Win\x + *Win\cx <= WndEx()\w\right + *Win\cx - Pref\magneticval - 1
                    ;Indoor Top Client
                    If *Win\y >= WndEx()\c\top - Pref\magneticval And *Win\y <= WndEx()\c\top + Pref\magneticval
                      *Win\y = WndEx()\c\top
                    EndIf
                    ;Indoor Bottom Client
                    If *Win\y + *Win\cy >= WndEx()\c\bottom - Pref\magneticval And *Win\y + *Win\cy <= WndEx()\c\bottom + Pref\magneticval
                      *Win\y = WndEx()\c\bottom - *Win\cy
                    EndIf
                  EndIf
                  If *Win\y + *Win\cy = WndEx()\w\top Or *Win\y = WndEx()\w\bottom
                    ;Outdoor Left Client
                    If *Win\x >= WndEx()\w\left - Pref\magneticval And *Win\x <= WndEx()\w\left + Pref\magneticval
                      *Win\x = WndEx()\w\left
                    EndIf
                    ;Outdoor Right Client
                    If *Win\x + *Win\cx >= WndEx()\w\right - Pref\magneticval And *Win\x + *Win\cx <= WndEx()\w\right + Pref\magneticval
                      *Win\x = WndEx()\w\right - *Win\cx
                    EndIf
                  EndIf
                EndIf

              EndIf

            Next
          EndIf

        EndIf

      EndIf

    EndIf
  Next

EndProcedure

Procedure ComboBoxGadget_AutoComplete(Gadget)
  If GadgetType(Gadget) = #PB_GadgetType_ComboBox
    Protected P.POINT : P\x = 5 : P\y = 5
    Protected iItem.i, iItemCount.i, sInput.s, iInputLen.i, iComboEdit.i
    Static iInputLenSave.i, iGadgetSave.i

    sInput    = UCase(GetGadgetText(Gadget))
    iInputLen = Len(sInput)

    If Gadget = iGadgetSave And iInputLen <= iInputLenSave
      iInputLenSave = iInputLen
    ElseIf iInputLen
      iGadgetSave = -1
      iItemCount  = CountGadgetItems(Gadget) - 1
      For iItem = 0 To iItemCount
        If sInput = UCase(Left(GetGadgetItemText(Gadget, iItem, 0), iInputLen))
          SetGadgetState(Gadget, iItem)
          iComboEdit = ChildWindowFromPoint_(GadgetID(Gadget), P\X | (P\Y << 32))
          SendMessage_(iComboEdit, #EM_SETSEL, iInputLen, -1)
          iInputLenSave = iInputLen
          iGadgetSave   = Gadget
          iItem         = iItemCount
        EndIf
      Next
    EndIf
  EndIf
EndProcedure

Procedure.i ColorBright(RGB, Bright)
  Protected iRed.i, iGreen.i, iBlue.i

  iRed   = Red(RGB)
  iGreen = Green(RGB)
  iBlue  = Blue(RGB)

  iRed + Bright
  iGreen + Bright
  iBlue + Bright

  If iRed < 0 : iRed = 0 : EndIf
  If iRed > 255 : iRed = 255: EndIf
  If iGreen < 0 : iGreen = 0 : EndIf
  If iGreen > 255 : iGreen = 255 : EndIf
  If iBlue < 0 : iBlue = 0 : EndIf
  If iBlue > 255 : iBlue = 255 : EndIf

  ProcedureReturn RGB(iRed, iGreen, iBlue)
EndProcedure

Procedure.i MsgBox_Error(Text$, Title$ = "Fehler")
  MessageRequester(Title$, Text$, #MB_OK|#MB_ICONERROR)
EndProcedure

Procedure.i MsgBox_Exclamation(Text$, Title$ = "Hinweis")
  MessageRequester(Title$, Text$, #MB_OK|#MB_ICONEXCLAMATION)
EndProcedure

Procedure.s ExePath()
  Protected Path$
  Path$ = Space(#MAX_PATH)
  GetModuleFileName_(0, @Path$, #MAX_PATH)
  ProcedureReturn GetPathPart(Path$)
EndProcedure

Procedure.s AppDataPath_All()
  Protected Path$ = Space(#MAX_PATH)
  SHGetSpecialFolderPath_(0, @Path$, #CSIDL_COMMON_APPDATA, 0)
  PathAddBackslash_(@Path$)
  ProcedureReturn Path$
EndProcedure

Procedure.s AppDataPath_User()
  Protected Path$ = Space(#MAX_PATH)
  SHGetSpecialFolderPath_(0, @Path$, #CSIDL_APPDATA, 0)
  PathAddBackslash_(@Path$)
  ProcedureReturn Path$
EndProcedure

Procedure.i AddLogEntry(Entry$)
  If Pref\loging > 0
    Static hFile.i

    hFile = OpenFile(#PB_Any, AppDataPath_User() + "MediaKing\Log.txt")
    If hFile <> 0
      FileSeek(hFile, Lof(hFile))
      WriteStringN(hFile, FormatDate("%dd.%mm.%yyyy %hh:%ii:%ss", Date()) + " - " + Entry$)
      CloseFile(hFile)
    EndIf

    If IsWindow(#Win_Log)
      AddGadgetItem(#G_LV_Log_Loging, -1, FormatDate("%dd.%mm.%yyyy %hh:%ii:%ss", Date()) + " - " + Entry$)

      If GetGadgetState(#G_LV_Log_Loging) + 2 = CountGadgetItems(#G_LV_Log_Loging)
        SetGadgetState(#G_LV_Log_Loging, CountGadgetItems(#G_LV_Log_Loging) - 1)
      EndIf
    EndIf

  EndIf
EndProcedure

Procedure.i ListIconGadget_SetColumnAlign(Gadget, Column, Align = #LVCFMT_LEFT)
  Protected L.lVCOLUMN, iResult.i = -1

  If IsGadget(Gadget) <> 0 And GadgetType(Gadget) = #PB_GadgetType_ListIcon
    If Align = #LVCFMT_LEFT Or Align = #LVCFMT_RIGHT Or Align = #LVCFMT_CENTER

      L\mask = #LVCF_FMT
      L\fmt  = Align

      InvalidateRect_(GadgetID(Gadget), #Null, #Null)

      iResult = SendMessage_(GadgetID(Gadget), #LVM_SETCOLUMN, Column, @L)
    EndIf
  EndIf

  ProcedureReturn iResult
EndProcedure

Procedure.i ListIconGadget_GetColumnAlign(Gadget, Column)
  Protected L.lVCOLUMN, iResult.i = -1

  If IsGadget(Gadget) <> 0 And GadgetType(Gadget) = #PB_GadgetType_ListIcon
    L\mask = #LVCF_FMT

    If SendMessage_(GadgetID(Gadget), #LVM_GETCOLUMN, Column, @L)
      If L\fmt & #LVCFMT_RIGHT
        iResult = #LVCFMT_RIGHT
      ElseIf L\fmt & #LVCFMT_CENTER
        iResult = #LVCFMT_CENTER
      Else
        iResult = #LVCFMT_LEFT
      EndIf
    EndIf

  EndIf

  ProcedureReturn iResult
EndProcedure

Procedure.i ListIconGadget_SetColumnIcon(Gadget, Column, IconIndex)
  Protected iResult.i, iHeader.i
  Protected LVC.LVCOLUMN
  Protected sColumnText.s = Space(255)

  iHeader = SendMessage_(GadgetID(Gadget), #LVM_GETHEADER, #Null, #Null)
  If iHeader > 0
    LVC\mask        = #LVCF_TEXT
    LVC\pszText     = @sColumnText
    LVC\cchTextMax  = Len(sColumnText)
    iResult = SendMessage_(GadgetID(Gadget), #LVM_GETCOLUMN, Column, @LVC)

    LVC\mask        = #LVCF_FMT|#LVCF_IMAGE
    LVC\fmt         = #LVCFMT_IMAGE|#LVCFMT_BITMAP_ON_RIGHT
    LVC\iImage      = IconIndex
    iResult = SendMessage_(GadgetID(Gadget), #LVM_SETCOLUMN, Column, @LVC)
  EndIf

  ProcedureReturn iResult
EndProcedure

Procedure.i Window_SetIcon(Window, Icon)
  If (IsWindow(Window) Or IsWindow_(Window)) And Icon <> 0
    If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
    SendMessage_(Window, #WM_SETICON, 1, Icon)
  EndIf
EndProcedure

Procedure.i Window_SetLayeredStyle(Window, Bool)
  If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
    If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
    If Bool = 1
      ProcedureReturn SetWindowLong_(Window, #GWL_EXSTYLE, GetWindowLong_(Window, #GWL_EXSTYLE) | #WS_EX_LAYERED)
    Else
      ProcedureReturn SetWindowLong_(Window, #GWL_EXSTYLE, GetWindowLong_(Window, #GWL_EXSTYLE) & ~#WS_EX_LAYERED)
    EndIf
  EndIf
EndProcedure

Procedure.i Window_SetOpacity(Window, Opacity)
  If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
    If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
    ProcedureReturn SetLayeredWindowAttributes_(Window, #Null, Opacity, #LWA_ALPHA)
  EndIf
EndProcedure

Procedure.i Toolbar_GetWidth(Toolbar)
  If IsToolBar(Toolbar) <> 0
    Protected _S.SIZE
    SendMessage_(ToolBarID(Toolbar), #TB_GETMAXSIZE, #Null, @_S)
    ProcedureReturn _S\cx
  EndIf
EndProcedure

Procedure.i Toolbar_GetHeight(Toolbar)
  If IsToolBar(Toolbar) <> 0
    Protected _S.SIZE
    SendMessage_(ToolBarID(Toolbar), #TB_GETMAXSIZE, #Null, @_S)
    ProcedureReturn _S\cy
  EndIf
EndProcedure

Procedure.i Window_GetWidth(Window)
  If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
    If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
    Protected W.RECT
    GetWindowRect_(Window, @W)
    ProcedureReturn W\right - W\left
  EndIf
EndProcedure

Procedure.i Window_GetHeight(Window)
  If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
    If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
    Protected W.RECT
    GetWindowRect_(Window, @W)
    ProcedureReturn W\bottom - W\top
  EndIf
EndProcedure

Procedure.i Window_GetClientWidth(Window)
  If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
    If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf
    Protected C.RECT
    GetClientRect_(Window, @C)
    ProcedureReturn C\right - C\left
  EndIf
EndProcedure

Procedure.i Window_CheckPos(Window)
  If IsWindow(Window) <> 0 Or IsWindow_(Window) <> 0
    If IsWindow(Window) <> 0: Window = WindowID(Window): EndIf

    Protected W.RECT, D.RECT

    GetWindowRect_(Window, @W)
    SystemParametersInfo_(#SPI_GETWORKAREA, 0, @D, 0)

    If W\Left < D\left
      W\Left = D\left
    EndIf
    If W\Top < D\top
      W\Top = D\top
    EndIf
    If W\Right > D\right
      W\Left = D\right - (W\right - W\left)
    EndIf
    If W\bottom > D\bottom
      W\top = D\bottom - (W\bottom - W\top)
    EndIf

    SetWindowPos_(Window, 0, W\Left, W\Top, 0, 0, #SWP_NOSIZE|#SWP_NOZORDER)
    InvalidateRect_(Window, 0, 1)

    ProcedureReturn 1
  EndIf
EndProcedure

Procedure.i Window_CenterOnWindow(Children, Main)
  If (IsWindow(Children) <> 0 Or IsWindow_(Children) <> 0) And (IsWindow(Main) <> 0 Or IsWindow_(Main) <> 0)
    If IsWindow(Children) <> 0: Children = WindowID(Children): EndIf
    If IsWindow(Main) <> 0: Main = WindowID(Main): EndIf

    Protected W1.RECT, W2.RECT, lResult.l

    GetWindowRect_(Children, @W1)
    GetWindowRect_(Main, @W2)

    If IsWindowVisible_(Main)
      lResult = SetWindowPos_(Children, 0, W2\left + ((W2\right - W2\left) - (W1\right - W1\left))/2, W2\top + ((W2\bottom - W2\top) - (W1\bottom - W1\top))/2, 0, 0, #SWP_NOZORDER|#SWP_NOSIZE|#SWP_NOACTIVATE)
    Else
      lResult = SetWindowPos_(Children, 0, GetSystemMetrics_(#SM_CXSCREEN)/2 - (W1\right - W1\left)/2, GetSystemMetrics_(#SM_CYSCREEN)/2 - (W1\bottom - W1\top)/2, 0, 0, #SWP_NOZORDER|#SWP_NOSIZE|#SWP_NOACTIVATE)
    EndIf

    ProcedureReturn lResult
  EndIf
EndProcedure

Procedure.s TimeString(Miliseconds.q, Seperator.s = "")
  Protected qHours.q, qMinutes.q, qSeconds.q, sResult.s

  If Miliseconds < 0 : Miliseconds = 0 : EndIf
  Seperator = Trim(Seperator)
  If Seperator = "" Or Len(Seperator) > 1 : Seperator = ":" : EndIf

  qSeconds = Miliseconds / 1000
  qMinutes = qSeconds / 60
  qSeconds = qSeconds - (qMinutes * 60)
  qHours   = qMinutes / 60
  qMinutes = qMinutes - (qHours * 60)

  If qHours < 10
    sResult + RSet(Str(qHours), 2, "0")
  Else
    sResult + Str(qHours)
  EndIf

  sResult + Seperator
  sResult + RSet(Str(qMinutes), 2, "0")
  sResult + Seperator
  sResult + RSet(Str(qSeconds), 2, "0")

  ProcedureReturn sResult
EndProcedure

Procedure.l IsNummeric(String$)
  Protected *S.Byte, SLen.l, x.l
  *S.Byte = @String$
  SLen = Len(String$) - 1
  For x = 0 To SLen
    If *S\B < 48 Or *S\B > 57: ProcedureReturn #False: EndIf
    *S + 1
  Next
  ProcedureReturn #True
EndProcedure

Procedure.s GetFileNamePart(Path$)
  If GetExtensionPart(Path$) <> ""
    ProcedureReturn Left(GetFilePart(Path$), Len(GetFilePart(Path$)) - Len(GetExtensionPart(Path$)) - 1)
  Else
    ProcedureReturn GetFilePart(Path$)
  EndIf
EndProcedure

Procedure.i GetFirstNum(String$)
  If Trim(String$) <> ""
    Protected *C.Character = @String$
    Protected lLen.i       = Len(String$)
    Protected lNext.i

    For lNext = 1 To lLen
      If *C\C < 48 Or *C\C > 57
        Break
      EndIf
      *C + SizeOf(Character)
    Next

    If *C - @String$ > 0
      ProcedureReturn Val(Mid(String$, 1, *C - @String$))
    Else
      ProcedureReturn -1
    EndIf

  EndIf
EndProcedure

Procedure.i FindFirstNum(String$)
  String$ = String$ + " "
  Protected *C.Character = @String$
  Protected iLen.i       = Len(String$)
  Protected iSPos.i, iEPos.i
  Protected iNext.i

  ;Startposition
  For iNext = 1 To iLen
    If *C\C > 47 And *C\C < 58
      iSPos = iNext
      *C + SizeOf(Character)
      Break
    EndIf
    *C + SizeOf(Character)
  Next

  If iSPos > 0
    ;Endposition
    For iNext = iSPos + 1 To iLen
      If *C\C < 48 Or *C\C > 57
        iEPos = iNext - 1
        Break
      EndIf
      *C + SizeOf(Character)
    Next

    If iEPos >= iSPos And iSPos > 0 And iEPos > 0
      ProcedureReturn Val(Mid(String$, iSPos, iEPos - iSPos + 1))
    EndIf

  EndIf

  ProcedureReturn -1
EndProcedure

Procedure.s GetMP3Genre(Genre$)
  Genre$ = Trim(Genre$)
  If Genre$ <> ""
    Protected iNum.i

    If IsNummeric(Genre$)
      iNum = Val(Genre$)
    Else
      iNum = FindFirstNum(Genre$)
    EndIf

    If iNum >= 0 And iNum <= #MaxMP3Genre
      ProcedureReturn MP3Genre(iNum)
    Else
      ProcedureReturn Genre$
    EndIf
  EndIf
EndProcedure

Procedure.i Toolbar_Button(Toolbar, ButtonID, Pos, ImageIndex, Style = #TBSTYLE_BUTTON)

  If IsToolBar(Toolbar)
    Toolbar = ToolBarID(Toolbar)

    Protected TB.TBBUTTON

    TB\iBitmap    = ImageIndex
    TB\idCommand  = ButtonID
    TB\fsState    = #TBSTATE_ENABLED
    TB\fsStyle    = Style

    If Pos = -1
      Pos = SendMessage_(Toolbar, #TB_BUTTONCOUNT, #Null, #Null)
    EndIf

    ProcedureReturn SendMessage_(Toolbar, #TB_INSERTBUTTON, Pos, @TB)
  EndIf

EndProcedure

Procedure.i Toolbar_Seperator(Toolbar, Pos)

  If IsToolBar(Toolbar)
    Toolbar = ToolBarID(Toolbar)

    Protected TB.TBBUTTON

    TB\fsState    = #TBSTATE_ENABLED
    TB\fsStyle    = #TBSTYLE_SEP

    If Pos = -1
      Pos = SendMessage_(Toolbar, #TB_BUTTONCOUNT, #Null, #Null)
    EndIf

    ProcedureReturn SendMessage_(Toolbar, #TB_INSERTBUTTON, Pos, @TB)
  EndIf

EndProcedure

Procedure.i Toolbar_ChangeIcon(Toolbar, Pos, ImageIndex)

  If IsToolBar(Toolbar)
    Toolbar = ToolBarID(Toolbar)

    Protected TB.TBBUTTONINFO

    TB\cbSize = SizeOf(TBBUTTONINFO)
    TB\dwMask = #TBIF_IMAGE
    TB\iImage = ImageIndex

    If SendMessage_(Toolbar, #TB_BUTTONCOUNT, #Null, #Null) < Pos
      ProcedureReturn -1
    EndIf

    ProcedureReturn SendMessage_(Toolbar, #TB_SETBUTTONINFO, Pos, @TB)
  EndIf

EndProcedure

;- Ressource
lImagelist = ImageList_LoadImage_(GetModuleHandle_(0), "#1", 16, #Null, #CLR_DEFAULT, #IMAGE_BITMAP, #LR_CREATEDIBSECTION)
If lImagelist <> 0 And ImageList_GetImageCount_(lImagelist) > 0
  Global Dim ImageList.i(ImageList_GetImageCount_(lImagelist) - 1)
  For iNext = 0 To ImageList_GetImageCount_(lImagelist) - 1
    ImageList(iNext) = ImageList_GetIcon_(lImagelist, iNext, #Null)
  Next
Else
  MsgBox_Error("ImageList 'ImageList' konnte nicht geöffnet werden") : End
EndIf

lImgInfologo = LoadImage_(GetModuleHandle_(0), "#1", #IMAGE_ICON, 48, 48, #LR_DEFAULTCOLOR)
If lImgInfologo = 0
  MsgBox_Error("InfoLogo konnte nicht geöffnet werden"): End
EndIf

lImgPrgLogo = LoadImage_(GetModuleHandle_(0), "#2", #IMAGE_BITMAP, 380, 139, #LR_DEFAULTCOLOR)
If lImgPrgLogo = 0
  MsgBox_Error("Programlogo konnte nicht geöffnet werden"): End
EndIf

Global lImgSpectrum.i = CreateImage(#PB_Any, 128, 50)
If lImgSpectrum = 0
  MsgBox_Error("Image Spectrum konnte nicht erstellt werden"): End
EndIf

Global lCursor_Hand.i = LoadCursor_(0, #IDC_HAND)
If lCursor_Hand = 0
  MsgBox_Exclamation("Cursor 'Hand' konnte nicht geöffnet werden")
EndIf

;- Win_Hide
If OpenWindow(#Win_Hide, 0, 0, 0, 0, "", #PB_Window_Invisible|#PB_Window_BorderLess)
  DisableWindow(#Win_Hide, 0)
Else
  MsgBox_Error("Fenster 'MainHide' konnte nicht erstellt werden"): End
EndIf

;- Win_Main
If OpenWindow(#Win_Main, -1, -1, 640, 480, #PrgName, #PB_Window_Invisible|#PB_Window_SizeGadget|#PB_Window_SystemMenu|#PB_Window_MinimizeGadget, WindowID(#Win_Hide))

  ;Menu Playlist
  If CreatePopupImageMenu(#Menu_PlayList)
    MenuItem(#Mnu_PlayList_Play, "Wiedergabe", ImageList(#ImageList_Play))
    MenuBar()
    OpenSubMenu("Sortieren")
    MenuItem(#Mnu_PlayList_SortTitle, "Titel")
    MenuItem(#Mnu_PlayList_SortArtist, "Interpret")
    MenuItem(#Mnu_PlayList_SortAlbum, "Album")
    MenuItem(#Mnu_PlayList_SortTrack, "Nummer")
    MenuItem(#Mnu_PlayList_SortLength, "Länge")
    MenuItem(#Mnu_PlayList_SortYear, "Jahr")
    CloseSubMenu()
    MenuItem(#Mnu_PlayList_Search, "Suchen", ImageList(#ImageList_Search))
    MenuItem(#Mnu_PlayList_OpenFolder, "Ordner Öffnen", ImageList(#ImageList_AddFolder))
    MenuBar()
    OpenSubMenu("Hinzufügen")
    MenuItem(#Mnu_PlayList_AddFile, "Datei", ImageList(#ImageList_AddFile))
    MenuItem(#Mnu_PlayList_AddFolder, "Ordner", ImageList(#ImageList_AddFolder))
    MenuItem(#Mnu_PlayList_AddStream, "URL", ImageList(#ImageList_AddURL))
    CloseSubMenu()
    MenuItem(#Mnu_PlayList_RndPlaylist, "Playlist erstellen", ImageList(#ImageList_PlayList))
    MenuItem(#Mnu_PlayList_SavePlayList, "Playlist Speichern", ImageList(#ImageList_Save))
    MenuBar()
    MenuItem(#Mnu_PlayList_Remove, "Entfernen", ImageList(#ImageList_Remove))
    MenuItem(#Mnu_PlayList_RemoveAll, "Alles entfernen", ImageList(#ImageList_Remove))
    MenuBar()
    MenuItem(#Mnu_PlayList_Info, "Informationen", ImageList(#ImageList_TrackInfo))
  Else
    MsgBox_Error("PopUp Menu 'Playlist' konnte nicht erstellt werden"): End
  EndIf
  ;Menu MediaLibary
  If CreatePopupImageMenu(#Menu_MediaLibary)
    MenuItem(#Mnu_MediaLib_Bookmark, "Lesezeichen", ImageList(#ImageList_Bookmark))
    MenuItem(#Mnu_MediaLib_RemoveBookmark, "Lesezeichen entfernen")
    MenuBar()
    OpenSubMenu("Wiedergabeliste")
    OpenSubMenu("Neu")
    MenuItem(#Mnu_MediaLib_AddPLSelN, "Auswahl", ImageList(#ImageList_PlayList))
    MenuItem(#Mnu_MediaLib_AddPLAllN, "Alles", ImageList(#ImageList_PlayList))
    CloseSubMenu()
    OpenSubMenu("Hinzufügen")
    MenuItem(#Mnu_MediaLib_AddPLSel, "Auswahl", ImageList(#ImageList_PlayList))
    MenuItem(#Mnu_MediaLib_AddPLAll, "Alles", ImageList(#ImageList_PlayList))
    CloseSubMenu()
    CloseSubMenu()
    MenuBar()
    MenuItem(#Mnu_MediaLib_Info, "Informationen", ImageList(#ImageList_TrackInfo))
  Else
    MsgBox_Error("PopUp Menu 'MediaLibary' konnte nicht erstellt werden"): End
  EndIf
  ;Menu Open
  If CreatePopupImageMenu(#Menu_Open)
    MenuItem(#Mnu_Open_File, "Datei", ImageList(#ImageList_AddFile))
    MenuItem(#Mnu_Open_Folder, "Ordner", ImageList(#ImageList_AddFolder))
    MenuItem(#Mnu_Open_NetStream, "URL", ImageList(#ImageList_AddURL))
  Else
    MsgBox_Error("PopUp Menu 'Open' konnte nicht erstellt werden"): End
  EndIf
  ;Menu SysTray
  If CreatePopupImageMenu(#Menu_SysTray)
    MenuItem(#Mnu_SysTray_Show, "Verstecken", ImageList(#ImageList_ShowHide))
    MenuBar()
    OpenSubMenu("Wiedergabe")
    MenuItem(#Mnu_SysTray_BackTrack, "Vorheriger Titel", ImageList(#ImageList_Back))
    MenuItem(#Mnu_SysTray_Play, "Wiedergabe", ImageList(#ImageList_Play))
    MenuItem(#Mnu_SysTray_Pause, "Pause", ImageList(#ImageList_Pause))
    MenuItem(#Mnu_SysTray_Stop, "Stop", ImageList(#ImageList_Stop))
    MenuItem(#Mnu_SysTray_NextTrack, "Nächster Titel", ImageList(#ImageList_Next))
    CloseSubMenu()
    MenuItem(#Mnu_SysTray_Log, "Log", ImageList(#ImageList_Search))
    MenuItem(#Mnu_SysTray_Pref, "Einstellungen", ImageList(#ImageList_Pref))
    MenuBar()
    MenuItem(#Mnu_SysTray_Update, "Neue Version", ImageList(#ImageList_AddURL))
    MenuItem(#Mnu_SysTray_Website, "Webseite", ImageList(#ImageList_Website))
    MenuItem(#Mnu_SysTray_Feedback, "Feedback", ImageList(#ImageList_Feedback))
    MenuBar()
    MenuItem(#Mnu_SysTray_Help, "Hilfe", ImageList(#ImageList_Help))
    MenuItem(#Mnu_SysTray_About, "Informationen", ImageList(#ImageList_About))
    MenuBar()
    MenuItem(#Mnu_SysTray_End, "Beenden", ImageList(#ImageList_End))
  Else
    MsgBox_Error("Menu 'SysTray' konnte nicht erstellt werden"): End
  EndIf
  ;Menu ListIconGadget
  If CreatePopupMenu(#Menu_ListIconGadget)
    MenuItem(#Mnu_ListIconGadget_AlignL, "Linksbündig")
    MenuItem(#Mnu_ListIconGadget_AlignC, "Zentriert")
    MenuItem(#Mnu_ListIconGadget_AlignR, "Rechtsbündig")
  Else
    MsgBox_Error("Menu 'ListIconGadget' konnte nicht erstellt werden"): End
  EndIf

  ;Toolbar1
  If CreateToolBar(#Toolbar_Main1, WindowID(#Win_Main))
    SetWindowLong_(ToolBarID(#Toolbar_Main1), #GWL_STYLE, GetWindowLong_(ToolBarID(#Toolbar_Main1), #GWL_STYLE)|#CCS_NODIVIDER)
    SendMessage_(ToolBarID(#Toolbar_Main1), #TB_SETIMAGELIST, #Null, lImagelist)

    Toolbar_Button(#Toolbar_Main1, #Mnu_Main_TB1_Previous, -1, #ImageList_Back)
    ToolBarToolTip(#Toolbar_Main1, #Mnu_Main_TB1_Previous, "Vorhäriger Titel")
    Toolbar_Button(#Toolbar_Main1, #Mnu_Main_TB1_Play, -1, #ImageList_Play)
    ToolBarToolTip(#Toolbar_Main1, #Mnu_Main_TB1_Play, "Wiedergabe")
    Toolbar_Button(#Toolbar_Main1, #Mnu_Main_TB1_Pause, -1, #ImageList_Pause)
    ToolBarToolTip(#Toolbar_Main1, #Mnu_Main_TB1_Pause, "Pause")
    Toolbar_Button(#Toolbar_Main1, #Mnu_Main_TB1_Stop, -1, #ImageList_Stop)
    ToolBarToolTip(#Toolbar_Main1, #Mnu_Main_TB1_Stop, "Stop")
    Toolbar_Button(#Toolbar_Main1, #Mnu_Main_TB1_Next, -1, #ImageList_Next)
    ToolBarToolTip(#Toolbar_Main1, #Mnu_Main_TB1_Next, "Nächster Titel")
    Toolbar_Seperator(#Toolbar_Main1, -1)
    Toolbar_Button(#Toolbar_Main1, #Mnu_Main_TB1_Volume, -1, #ImageList_Volume)
    ToolBarToolTip(#Toolbar_Main1, #Mnu_Main_TB1_Volume, "Stumm")

    ;ToolBarImageButton(#Mnu_Main_TB1_Previous, ImageList(#ImageList_Back)): ToolBarToolTip(#Toolbar_Main1, #Mnu_Main_TB1_Previous, "Vorhäriger Titel")
    ;ToolBarImageButton(#Mnu_Main_TB1_Play, ImageList(#ImageList_Play)): ToolBarToolTip(#Toolbar_Main1, #Mnu_Main_TB1_Play, "Wiedergabe")
    ;ToolBarImageButton(#Mnu_Main_TB1_Pause, ImageList(#ImageList_Pause)): ToolBarToolTip(#Toolbar_Main1, #Mnu_Main_TB1_Pause, "Pause")
    ;ToolBarImageButton(#Mnu_Main_TB1_Stop, ImageList(#ImageList_Stop)): ToolBarToolTip(#Toolbar_Main1, #Mnu_Main_TB1_Stop, "Stop")
    ;ToolBarImageButton(#Mnu_Main_TB1_Next, ImageList(#ImageList_Next)): ToolBarToolTip(#Toolbar_Main1, #Mnu_Main_TB1_Next, "Nächster Titel")
    ;ToolBarSeparator()
    ;ToolBarImageButton(#Mnu_Main_TB1_Volume, ImageList(#ImageList_Mute)): ToolBarToolTip(#Toolbar_Main1, #Mnu_Main_TB1_Volume, "Stumm")
  Else
    MsgBox_Error("Toolbar 'Main 1' konnte nicht erstellt werden"): End
  EndIf
  ;Toolbar2
  If CreateToolBar(#Toolbar_Main2, WindowID(#Win_Main))
    SetWindowLong_(ToolBarID(#Toolbar_Main2), #GWL_STYLE, GetWindowLong_(ToolBarID(#Toolbar_Main2), #GWL_STYLE)|#CCS_NODIVIDER)
    SendMessage_(ToolBarID(#Toolbar_Main2), #TB_SETIMAGELIST, #Null, lImagelist)

    Toolbar_Seperator(#Toolbar_Main2, -1)
    Toolbar_Button(#Toolbar_Main2, #Mnu_Main_TB2_Repeat, -1, #ImageList_Repeat, #TBSTYLE_CHECK)
    ToolBarToolTip(#Toolbar_Main2, #Mnu_Main_TB2_Repeat, "Wiedergabe Wiederholen")
    Toolbar_Button(#Toolbar_Main2, #Mnu_Main_TB2_Random, -1, #ImageList_Random, #TBSTYLE_CHECK)
    ToolBarToolTip(#Toolbar_Main2, #Mnu_Main_TB2_Random, "Zufällige Wiedergabe")
    Toolbar_Seperator(#Toolbar_Main2, -1)
    Toolbar_Button(#Toolbar_Main2, #Mnu_Main_TB2_Open, -1, #ImageList_Open)
    ToolBarToolTip(#Toolbar_Main2, #Mnu_Main_TB2_Open, "Öffnen")
    Toolbar_Seperator(#Toolbar_Main2, -1)
    Toolbar_Button(#Toolbar_Main2, #Mnu_Main_TB2_PlayList, -1, #ImageList_PlayList)
    ToolBarToolTip(#Toolbar_Main2, #Mnu_Main_TB2_PlayList, "Wiedergabeliste")
    Toolbar_Button(#Toolbar_Main2, #Mnu_Main_TB2_MediaLib, -1, #ImageList_MediaLib)
    ToolBarToolTip(#Toolbar_Main2, #Mnu_Main_TB2_MediaLib, "Medienbibliothek")
    Toolbar_Button(#Toolbar_Main2, #Mnu_Main_TB2_Preferences, -1, #ImageList_Pref)
    ToolBarToolTip(#Toolbar_Main2, #Mnu_Main_TB2_Preferences, "Einstellungen")
    Toolbar_Button(#Toolbar_Main2, #Mnu_Main_TB2_Order, -1, #ImageList_Watch)
    ToolBarToolTip(#Toolbar_Main2, #Mnu_Main_TB2_Order, "Aufgaben")

    ;ToolBarSeparator()
    ;ToolBarImageButton(#Mnu_Main_TB2_Repeat, ImageList(#ImageList_Repeat), #PB_ToolBar_Toggle): ToolBarToolTip(#Toolbar_Main2, #Mnu_Main_TB2_Repeat, "Wiedergabe Wiederholen")
    ;ToolBarImageButton(#Mnu_Main_TB2_Random, ImageList(#ImageList_Random), #PB_ToolBar_Toggle): ToolBarToolTip(#Toolbar_Main2, #Mnu_Main_TB2_Random, "Zufällige Wiedergabe")
    ;ToolBarSeparator()
    ;ToolBarImageButton(#Mnu_Main_TB2_Open, ImageList(#ImageList_Open)): ToolBarToolTip(#Toolbar_Main2, #Mnu_Main_TB2_Open, "Öffnen")
    ;ToolBarSeparator()
    ;ToolBarImageButton(#Mnu_Main_TB2_PlayList, ImageList(#ImageList_PlayList)): ToolBarToolTip(#Toolbar_Main2, #Mnu_Main_TB2_PlayList, "Wiedergabeliste")
    ;ToolBarImageButton(#Mnu_Main_TB2_MediaLib, ImageList(#ImageList_MediaLib)): ToolBarToolTip(#Toolbar_Main2, #Mnu_Main_TB2_MediaLib, "Medienbibliothek")
    ;ToolBarImageButton(#Mnu_Main_TB2_Preferences, ImageList(#ImageList_Pref)): ToolBarToolTip(#Toolbar_Main2, #Mnu_Main_TB2_Preferences, "Einstellungen")
  Else
    MsgBox_Error("Toolbar 'Main 2' konnte nicht erstellt werden"): End
  EndIf

  ;InfoArea
  ContainerGadget(#G_CN_Main_IA_Background, 0, 0, WindowWidth(#Win_Main), 85, #PB_Container_BorderLess)
  TextGadget(#G_TX_Main_IA_Title, 5, 5, 50, 15, "Titel: ", #PB_Text_Right|#SS_NOTIFY)
  TextGadget(#G_TX_Main_IA_TitleC, 60, 5, 150, 15, "")
  TextGadget(#G_TX_Main_IA_Artist, 5, 20, 50, 15, "Interpret: ", #PB_Text_Right)
  TextGadget(#G_TX_Main_IA_ArtistC, 60, 20, 150, 15, "")
  TextGadget(#G_TX_Main_IA_Album, 5, 35, 50, 15, "Album: ", #PB_Text_Right)
  TextGadget(#G_TX_Main_IA_AlbumC, 60, 35, 150, 15, "")
  TextGadget(#G_TX_Main_IA_Genre, 5, 50, 50, 15, "Genre: ", #PB_Text_Right)
  TextGadget(#G_TX_Main_IA_GenreC, 60, 50, 150, 15, "")
  TextGadget(#G_TX_Main_IA_Length, 5, 65, 50, 15, "Länge: ", #PB_Text_Right)
  TextGadget(#G_TX_Main_IA_LengthC, 60, 65, 150, 15, "")
  ImageGadget(#G_IG_Main_IA_PrgLogo, WindowWidth(#Win_Main) - 60, 28, 48, 48, lImgInfologo)
  GadgetToolTip(#G_IG_Main_IA_PrgLogo, "Informationen")
  ImageGadget(#G_IG_Main_IA_Spectrum, WindowWidth(#Win_Main) - 210, 18, 0, 0, ImageID(lImgSpectrum))
  CloseGadgetList()
  Frame3DGadget(#G_FR_Main_IA_Gap, -5, GadgetHeight(#G_CN_Main_IA_Background), WindowWidth(#Win_Main) + 10, 2, "", #PB_Frame3D_Single)
  TrackBarGadget(#G_TB_Main_IA_Position, 0, GadgetHeight(#G_CN_Main_IA_Background) + GadgetHeight(#G_FR_Main_IA_Gap), WindowWidth(#Win_Main), 20, 0, #PosAccuracy)

  ;Toolbar SetParents
  ContainerGadget(#G_CN_Main_IA_ToolbarLeft, 2, GadgetHeight(#G_CN_Main_IA_Background) + GadgetHeight(#G_FR_Main_IA_Gap) + GadgetHeight(#G_TB_Main_IA_Position) + 2, Toolbar_GetWidth(#Toolbar_Main1), Toolbar_GetHeight(#Toolbar_Main1), #PB_Container_BorderLess)
  SetParent_(ToolBarID(#Toolbar_Main1), GadgetID(#G_CN_Main_IA_ToolbarLeft))
  CloseGadgetList()
  TrackBarGadget(#G_TB_Main_IA_Volume, 2 + GadgetWidth(#G_CN_Main_IA_ToolbarLeft), GadgetY(#G_CN_Main_IA_ToolbarLeft), 100, 20, 0, 100)
  GadgetToolTip(#G_TB_Main_IA_Volume, "Lautstärke")
  ContainerGadget(#G_CN_Main_IA_ToolbarRight, 2 + GadgetWidth(#G_CN_Main_IA_ToolbarLeft) + GadgetWidth(#G_TB_Main_IA_Volume), GadgetY(#G_CN_Main_IA_ToolbarLeft), Toolbar_GetWidth(#Toolbar_Main2), Toolbar_GetHeight(#Toolbar_Main2), #PB_Container_BorderLess)
  SetParent_(ToolBarID(#Toolbar_Main2), GadgetID(#G_CN_Main_IA_ToolbarRight))
  CloseGadgetList()

  ;SecondArea
  Global lMain_SAStartY.i = GadgetY(#G_CN_Main_IA_ToolbarLeft) + GadgetHeight(#G_CN_Main_IA_ToolbarLeft) + 5

  ;Playlist
  ListIconGadget(#G_LI_Main_PL_PlayList, 2, lMain_SAStartY, 436, 180, "", 0, #PB_ListIcon_FullRowSelect|#PB_ListIcon_MultiSelect|#LVS_NOSORTHEADER|#PB_ListIcon_AlwaysShowSelection|#PB_ListIcon_HeaderDragDrop)
  AddGadgetColumn(#G_LI_Main_PL_PlayList, 1, "Titel", 150)
  AddGadgetColumn(#G_LI_Main_PL_PlayList, 2, "Interpret", 100)
  AddGadgetColumn(#G_LI_Main_PL_PlayList, 3, "Album", 80)
  AddGadgetColumn(#G_LI_Main_PL_PlayList, 4, "Nummer", 80)
  AddGadgetColumn(#G_LI_Main_PL_PlayList, 5, "Länge", 80)
  AddGadgetColumn(#G_LI_Main_PL_PlayList, 6, "Jahr", 80)
  HideGadget(#G_LI_Main_PL_PlayList, 1)
  SendMessage_(GadgetID(#G_LI_Main_PL_PlayList), #LVM_SETIMAGELIST, #LVSIL_SMALL, lImagelist)
  TextGadget(#G_TX_Main_PL_Playlist, 2, lMain_SAStartY, 434, 13, "")
  HideGadget(#G_TX_Main_PL_Playlist, 1)

  ;MediaLibary
  StringGadget(#G_SR_Main_ML_Search, 2, lMain_SAStartY, 312, 20, "")
  HideGadget(#G_SR_Main_ML_Search, 1)
  ButtonGadget(#G_BN_Main_ML_SearchOptions, 286, lMain_SAStartY, 85, 20, "Einstellungen")
  HideGadget(#G_BN_Main_ML_SearchOptions, 1)
  ButtonGadget(#G_BN_Main_ML_Search, 383, lMain_SAStartY, 55, 20, "Suchen")
  HideGadget(#G_BN_Main_ML_Search, 1)
  ListIconGadget(#G_LI_Main_ML_MediaLib, 2, lMain_SAStartY + 22, 320, 202, "", 0, #PB_ListIcon_FullRowSelect|#PB_ListIcon_MultiSelect|#LVS_NOSORTHEADER|#PB_ListIcon_AlwaysShowSelection|#PB_ListIcon_HeaderDragDrop)
  AddGadgetColumn(#G_LI_Main_ML_MediaLib, 1, "Titel", 250)
  AddGadgetColumn(#G_LI_Main_ML_MediaLib, 2, "Interpret", 100)
  AddGadgetColumn(#G_LI_Main_ML_MediaLib, 3, "Album", 80)
  AddGadgetColumn(#G_LI_Main_ML_MediaLib, 4, "Nummer", 80)
  AddGadgetColumn(#G_LI_Main_ML_MediaLib, 5, "Länge", 100)
  AddGadgetColumn(#G_LI_Main_ML_MediaLib, 6, "Jahr", 80)
  AddGadgetColumn(#G_LI_Main_ML_MediaLib, 7, "Abgespielt", 80)
  AddGadgetColumn(#G_LI_Main_ML_MediaLib, 8, "Zuletzt Abgespielt", 100)
  HideGadget(#G_LI_Main_ML_MediaLib, 1)
  iLI_MediaLib = GadgetID(#G_LI_Main_ML_MediaLib)
  ListViewGadget(#G_LV_Main_ML_Category, 324, lMain_SAStartY + 22, 114, 100)
  AddGadgetItem(#G_LV_Main_ML_Category, -1, "Datenbank")
  AddGadgetItem(#G_LV_Main_ML_Category, -1, "Am meisten abgespielt")
  AddGadgetItem(#G_LV_Main_ML_Category, -1, "Zuletzt abgespielt")
  AddGadgetItem(#G_LV_Main_ML_Category, -1, "Noch nie abgespielt")
  AddGadgetItem(#G_LV_Main_ML_Category, -1, "Lesezeichen")
  HideGadget(#G_LV_Main_ML_Category, 1)
  ListViewGadget(#G_LV_Main_ML_Album, 324, lMain_SAStartY + 124, 114, 100)
  HideGadget(#G_LV_Main_ML_Album, 1)
  SplitterGadget(#G_SP_Main_ML_Vertical, 324, lMain_SAStartY + 22, 114, 200, #G_LV_Main_ML_Category, #G_LV_Main_ML_Album, #PB_Splitter_FirstFixed|#PB_Splitter_SecondFixed)
  SetGadgetAttribute(#G_SP_Main_ML_Vertical, #PB_Splitter_FirstMinimumSize, 50)
  SetGadgetAttribute(#G_SP_Main_ML_Vertical, #PB_Splitter_SecondMinimumSize, 50)
  HideGadget(#G_SP_Main_ML_Vertical, 1)
  SplitterGadget(#G_SP_Main_ML_Horizontal, 2, lMain_SAStartY + GadgetHeight(#G_SR_Main_ML_Search) + 2, WindowWidth(#Win_Main) - 4, 200, #G_LI_Main_ML_MediaLib, #G_SP_Main_ML_Vertical, #PB_Splitter_Vertical|#PB_Splitter_FirstFixed|#PB_Splitter_SecondFixed)
  SetGadgetAttribute(#G_SP_Main_ML_Horizontal, #PB_Splitter_FirstMinimumSize, 450)
  SetGadgetAttribute(#G_SP_Main_ML_Horizontal, #PB_Splitter_SecondMinimumSize, 140)
  HideGadget(#G_SP_Main_ML_Horizontal, 2)
  TextGadget(#G_TX_Main_ML_Status, 2, 130, 436, 13, "")
  HideGadget(#G_TX_Main_ML_Status, 1)
  ProgressBarGadget(#G_PB_Main_ML_Status, 0, 0, 0, 0, 1, 100)
  HideGadget(#G_PB_Main_ML_Status, 1)

  iWinW_Main_SecondMin = Window_GetWidth(#Win_Main)
  iWinH_Main_SecondMin = Window_GetHeight(#Win_Main)
  lWinID_Main = WindowID(#Win_Main)
  ResizeWindow(#Win_Main, #PB_Ignore, #PB_Ignore, 2 + GadgetWidth(#G_CN_Main_IA_ToolbarLeft) + GadgetWidth(#G_TB_Main_IA_Volume) + GadgetWidth(#G_CN_Main_IA_ToolbarRight) + 2, GadgetHeight(#G_CN_Main_IA_Background) + GadgetHeight(#G_FR_Main_IA_Gap) + GadgetHeight(#G_TB_Main_IA_Position) + 2 + GadgetHeight(#G_CN_Main_IA_ToolbarLeft) + 2)
  iWinW_Main_NormalMin = Window_GetWidth(#Win_Main)
  WndEx_AddWindow(#Win_Main, #WndEx_Magnetic_Desktop|#WndEx_Magnetic_Window)
  DisableWindow(#Win_Main, 1)
Else
  MsgBox_Error("Fenster 'Main' konnte nicht erstellt werden"): End
EndIf

Procedure ShowWindow_Preferences()
  If IsWindow(#Win_Preferences) = 0

    If OpenWindow(#Win_Preferences, 0, 0, 600, 440, "Einstellungen", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Main))
      TreeGadget(#G_TR_Pref_Menu, 5, 5, 150, WindowHeight(#Win_Preferences) - 46, #PB_Tree_NoButtons|#PB_Tree_NoLines|#PB_Tree_AlwaysShowSelection)
      AddGadgetItem(#G_TR_Pref_Menu, -1, "fmod")
      AddGadgetItem(#G_TR_Pref_Menu, -1, "Wiedergabe")
      AddGadgetItem(#G_TR_Pref_Menu, -1, "Fenster")
      AddGadgetItem(#G_TR_Pref_Menu, -1, "Medienbibliothek")
      AddGadgetItem(#G_TR_Pref_Menu, -1, "Sonstiges")
      AddGadgetItem(#G_TR_Pref_Menu, -1, "Plugins")
      AddGadgetItem(#G_TR_Pref_Menu, -1, "Statistiken")
      Frame3DGadget(#G_FR_Pref_Gap, -5, WindowHeight(#Win_Preferences) - 36, WindowWidth(#Win_Preferences) + 10, 2, "", #PB_Frame3D_Single)
      ButtonGadget(#G_BN_Pref_Apply, WindowWidth(#Win_Preferences) - 255, WindowHeight(#Win_Preferences) - 29, 80, 24, "Übernehmen")
      ButtonGadget(#G_BN_Pref_Close, WindowWidth(#Win_Preferences) - 170, WindowHeight(#Win_Preferences) - 29, 80, 24, "OK")
      ButtonGadget(#G_BN_Pref_Cancel, WindowWidth(#Win_Preferences) - 85, WindowHeight(#Win_Preferences) - 29, 80, 24, "Abbrechen")

      Protected iStartX.i = GadgetWidth(#G_TR_Pref_Menu) + 10
      Protected iStartY.i = 5
      Protected iMiscH.i  = 5 + GadgetHeight(#G_BN_Pref_Cancel) + 5 + GadgetHeight(#G_FR_Pref_Gap) + 5

      ;fmod
      TextGadget(#G_TX_Pref_OutputMode, iStartX, iStartY, 180, 13, "Ausgabe Format")
      ComboBoxGadget(#G_CB_Pref_OutputMode, iStartX, iStartY + 15, 180, 20)
      AddGadgetItem(#G_CB_Pref_OutputMode, -1, "Automatisch")
      AddGadgetItem(#G_CB_Pref_OutputMode, -1, "Kein Sound")
      AddGadgetItem(#G_CB_Pref_OutputMode, -1, "Wavwriter")
      AddGadgetItem(#G_CB_Pref_OutputMode, -1, "DirectSound")
      AddGadgetItem(#G_CB_Pref_OutputMode, -1, "Windows Multimedia")
      AddGadgetItem(#G_CB_Pref_OutputMode, -1, "OpenAL 1.1")
      AddGadgetItem(#G_CB_Pref_OutputMode, -1, "Windows Audio Session API")
      AddGadgetItem(#G_CB_Pref_OutputMode, -1, "Low latency ASIO 2.0")
      SetGadgetState(#G_CB_Pref_OutputMode, 0)
      TextGadget(#G_TX_Pref_OutputDriver, iStartX + 185, iStartY, 180, 13, "Treiber")
      ComboBoxGadget(#G_CB_Pref_OutputDriver, iStartX + 185, iStartY + 15, 180, 20)
      TextGadget(#G_TX_Pref_OutputRate, iStartX, iStartY + 40, 180, 13, "Ausgabe Rate")
      ComboBoxGadget(#G_CB_Pref_OutputRate, iStartX, iStartY + 55, 180, 20)
      AddGadgetItem(#G_CB_Pref_OutputRate, -1, "48000 Hz")
      AddGadgetItem(#G_CB_Pref_OutputRate, -1, "44100 Hz")
      AddGadgetItem(#G_CB_Pref_OutputRate, -1, "22050 Hz")
      AddGadgetItem(#G_CB_Pref_OutputRate, -1, "11025 Hz")
      AddGadgetItem(#G_CB_Pref_OutputRate, -1, "8000 Hz")
      SetGadgetState(#G_CB_Pref_OutputRate, 0)
      TextGadget(#G_TX_Pref_ResamplingMethod, iStartX + 185, iStartY + 40, 180, 13, "Interpolation")
      ComboBoxGadget(#G_CB_Pref_ResamplingMethod, iStartX + 185, iStartY + 55, 180, 20)
      AddGadgetItem(#G_CB_Pref_ResamplingMethod, -1, "Keine")
      AddGadgetItem(#G_CB_Pref_ResamplingMethod, -1, "Linear")
      AddGadgetItem(#G_CB_Pref_ResamplingMethod, -1, "Cubic")
      AddGadgetItem(#G_CB_Pref_ResamplingMethod, -1, "Spline")
      SetGadgetState(#G_CB_Pref_ResamplingMethod, 1)
      TextGadget(#G_TX_Pref_SpeakerMode, iStartX, iStartY + 80, 180, 13, "Lautsprecher Modus")
      ComboBoxGadget(#G_CB_Pref_SpeakerMode, iStartX, iStartY + 95, 180, 20)
      AddGadgetItem(#G_CB_Pref_SpeakerMode, -1, "1 Speaker - Mono")
      AddGadgetItem(#G_CB_Pref_SpeakerMode, -1, "2 Speaker - Stereo")
      AddGadgetItem(#G_CB_Pref_SpeakerMode, -1, "4 Speaker - Quad")
      AddGadgetItem(#G_CB_Pref_SpeakerMode, -1, "5 Speaker - Surround")
      AddGadgetItem(#G_CB_Pref_SpeakerMode, -1, "5.1 Speaker Mode")
      AddGadgetItem(#G_CB_Pref_SpeakerMode, -1, "7.1 Speaker Mode")
      AddGadgetItem(#G_CB_Pref_SpeakerMode, -1, "5.1 - Prologic")
      SetGadgetState(#G_CB_Pref_SpeakerMode, 1)
      TextGadget(#G_TX_Pref_StreamBufferSize, iStartX, iStartY + 120, 180, 13, "Streambuffer (Byte)")
      ComboBoxGadget(#G_CB_Pref_StreamBufferSize, iStartX, iStartY + 135, 180, 20, #PB_ComboBox_Editable)
      AddGadgetItem(#G_CB_Pref_StreamBufferSize, -1, "32768")
      AddGadgetItem(#G_CB_Pref_StreamBufferSize, -1, "16384")
      AddGadgetItem(#G_CB_Pref_StreamBufferSize, -1, "8192")
      SetGadgetState(#G_CB_Pref_StreamBufferSize, 1)
      ButtonGadget(#G_BN_Pref_DefaultFMODEX, WindowWidth(#Win_Preferences) - 85, WindowHeight(#Win_Preferences) - iMiscH - 24, 80, 24, "Standard")
      ;Playing
      Frame3DGadget(#G_FR_Pref_Equilizer, iStartX, iStartY, 230, 165, "") ;Equilizer
      CheckBoxGadget(#G_CH_Pref_Equilizer, iStartX + 10, iStartY + 20, 150, 15, "Aktivieren")
      ComboBoxGadget(#G_CB_Pref_Equilizer, iStartX + 10, iStartY + 35, 205, 20)
      ForEach PreDefEQ() : AddGadgetItem(#G_CB_Pref_Equilizer, -1, PreDefEQ()\name) : Next
      SetGadgetState(#G_CB_Pref_Equilizer, 0)
      TrackBarGadget(#G_TB_Pref_EQ00070, iStartX + 15, iStartY + 55, 20, 80, 1, 40, #PB_TrackBar_Vertical)
      TextGadget(#G_TX_Pref_EQ00070, iStartX + 15, iStartY + 135, 20, 15, "70", #PB_Text_Center)
      TrackBarGadget(#G_TB_Pref_EQ00180, iStartX + 35, iStartY + 55, 20, 80, 1, 40, #PB_TrackBar_Vertical)
      TextGadget(#G_TX_Pref_EQ00180, iStartX + 35, iStartY + 135, 20, 15, "180", #PB_Text_Center)
      TrackBarGadget(#G_TB_Pref_EQ00320, iStartX + 55, iStartY + 55, 20, 80, 1, 40, #PB_TrackBar_Vertical)
      TextGadget(#G_TX_Pref_EQ00320, iStartX + 55, iStartY + 135, 20, 15, "320", #PB_Text_Center)
      TrackBarGadget(#G_TB_Pref_EQ00600, iStartX + 75, iStartY + 55, 20, 80, 1, 40, #PB_TrackBar_Vertical)
      TextGadget(#G_TX_Pref_EQ00600, iStartX + 75, iStartY + 135, 20, 15, "600", #PB_Text_Center)
      TrackBarGadget(#G_TB_Pref_EQ01000, iStartX + 95, iStartY + 55, 20, 80, 1, 40, #PB_TrackBar_Vertical)
      TextGadget(#G_TX_Pref_EQ01000, iStartX + 95, iStartY + 135, 20, 15, "1K", #PB_Text_Center)
      TrackBarGadget(#G_TB_Pref_EQ03000, iStartX + 115, iStartY + 55, 20, 80, 1, 40, #PB_TrackBar_Vertical)
      TextGadget(#G_TX_Pref_EQ03000, iStartX + 115, iStartY + 135, 20, 15, "3K", #PB_Text_Center)
      TrackBarGadget(#G_TB_Pref_EQ06000, iStartX + 135, iStartY + 55, 20, 80, 1, 40, #PB_TrackBar_Vertical)
      TextGadget(#G_TX_Pref_EQ06000, iStartX + 135, iStartY + 135, 20, 15, "6K", #PB_Text_Center)
      TrackBarGadget(#G_TB_Pref_EQ12000, iStartX + 155, iStartY + 55, 20, 80, 1, 40, #PB_TrackBar_Vertical)
      TextGadget(#G_TX_Pref_EQ12000, iStartX + 155, iStartY + 135, 20, 15, "12K", #PB_Text_Center)
      TrackBarGadget(#G_TB_Pref_EQ14000, iStartX + 175, iStartY + 55, 20, 80, 1, 40, #PB_TrackBar_Vertical)
      TextGadget(#G_TX_Pref_EQ14000, iStartX + 175, iStartY + 135, 20, 15, "14K", #PB_Text_Center)
      TrackBarGadget(#G_TB_Pref_EQ16000, iStartX + 195, iStartY + 55, 20, 80, 1, 40, #PB_TrackBar_Vertical)
      TextGadget(#G_TX_Pref_EQ16000, iStartX + 195, iStartY + 135, 20, 15, "16K", #PB_Text_Center)
      Frame3DGadget(#G_FR_Pref_Effects, iStartX, iStartY + 170, 230, 80, "") ;Effects
      CheckBoxGadget(#G_CH_Pref_HPass, iStartX + 10, iStartY + 190, 80, 15, "HighPass")
      GadgetToolTip(#G_CH_Pref_HPass, "This unit filters sound using a high quality, resonant lowpass filter algorithm but consumes more CPU time.")
      CheckBoxGadget(#G_CH_Pref_LPass, iStartX + 10, iStartY + 207, 80, 15, "LowPass")
      GadgetToolTip(#G_CH_Pref_LPass, "This unit filters sound using a high quality, resonant lowpass filter algorithm but consumes more CPU time.")
      CheckBoxGadget(#G_CH_Pref_Echo, iStartX + 10, iStartY + 224, 80, 15, "Echo")
      GadgetToolTip(#G_CH_Pref_Echo, "This unit produces an echo on the sound and fades out at the desired rate.")
      CheckBoxGadget(#G_CH_Pref_Flange, iStartX + 100, iStartY + 190, 80, 15, "Flange")
      GadgetToolTip(#G_CH_Pref_Flange, "This unit produces a flange effect on the sound.")
      CheckBoxGadget(#G_CH_Pref_Distortion, iStartX + 100, iStartY + 207, 80, 15, "Distortion")
      GadgetToolTip(#G_CH_Pref_Distortion, "This unit distorts the sound.")
      CheckBoxGadget(#G_CH_Pref_Chorus, iStartX + 100, iStartY + 224, 80, 15, "Chorus")
      GadgetToolTip(#G_CH_Pref_Chorus, "This unit produces a chorus effect on the sound.")
      Frame3DGadget(#G_Fr_Pref_Playing, iStartX, iStartY + 255, 230, 100, "") ;Playing
      TextGadget(#G_TX_Pref_Guidance, iStartX + 10, iStartY + 270, 180, 13, "", #PB_Text_Center) ;Guidance
      TrackBarGadget(#G_TB_Pref_Guidance, iStartX + 10, iStartY + 285, 170, 20, 0, 200)
      GadgetToolTip(#G_TB_Pref_Guidance, "Ausrichtung")
      ButtonGadget(#G_BN_Pref_Guidance, iStartX + 185, iStartY + 285, 25, 20, "Z")
      GadgetToolTip(#G_BN_Pref_Guidance, "Zurücksetzen")
      TextGadget(#G_TX_Pref_Speed, iStartX + 10, iStartY + 310, 180, 13, "", #PB_Text_Center) ;Speed
      TrackBarGadget(#G_TB_Pref_Speed, iStartX + 10, iStartY + 325, 170, 20, 10, 200)
      GadgetToolTip(#G_TB_Pref_Speed, "Geschwindigkeit")
      ButtonGadget(#G_BN_Pref_SpeedNormal, iStartX + 185, iStartY + 325, 25, 20, "Z")
      GadgetToolTip(#G_BN_Pref_SpeedNormal, "Zurücksetzen")
      ;Windows
      CheckBoxGadget(#G_CH_Pref_OnTop, iStartX, iStartY, 180, 15, "Immer im Vordergrund")
      GadgetToolTip(#G_CH_Pref_OnTop, "Fenster befinden sich immer im Vordergrund")
      CheckBoxGadget(#G_CH_Pref_Opacity, iStartX, iStartY + 17, 180, 15, "Transparenz")
      GadgetToolTip(#G_CH_Pref_Opacity, "Fenster werden transparent dargestellt")
      TrackBarGadget(#G_TB_Pref_Opacity, iStartX, iStartY + 34, 180, 20, 40, 240, #PB_TrackBar_Ticks)
      GadgetToolTip(#G_TB_Pref_Opacity, "Regelt die Stärke der Transparenz")
      SendMessage_(GadgetID(#G_TB_Pref_Opacity), #TBM_SETTICFREQ, 20, #Null)
      CheckBoxGadget(#G_CH_Pref_Magnetic, iStartX, iStartY + 56, 180, 15, "Magnetische Fenster")
      GadgetToolTip(#G_CH_Pref_Magnetic, "Fenster werden magnetisch angezogen")
      TrackBarGadget(#G_TB_Pref_MagneticVal, iStartX, iStartY + 73, 180, 20, 6, 36, #PB_TrackBar_Ticks)
      GadgetToolTip(#G_TB_Pref_MagneticVal, "Bestimmt die Anziehkraft")
      SendMessage_(GadgetID(#G_TB_Pref_MagneticVal), #TBM_SETTICFREQ, 3, #Null)
      CheckBoxGadget(#G_CH_Pref_AutoClmnwPL, iStartX, iStartY + 98, 180, 15, "Spaltenbreite Wiedergabeliste")
      GadgetToolTip(#G_CH_Pref_AutoClmnwPL, "Passt die Spaltenbreite in Wiedergabeliste automatisch an")
      CheckBoxGadget(#G_CH_Pref_AutoClmnwML, iStartX, iStartY + 115, 180, 15, "Spaltenbreite Medienbibliothek")
      GadgetToolTip(#G_CH_Pref_AutoClmnwML, "Passt die Spaltenbreite in Medienbibliothek automatisch an")
      ListViewGadget(#G_LV_Pref_Layout, WindowWidth(#Win_Preferences) - 130, iStartY + 5, 120, 100)
      AddGadgetItem(#G_LV_Pref_Layout, -1, "Trackinfo Hintergrund")
      AddGadgetItem(#G_LV_Pref_Layout, -1, "Trackinfo Text")
      AddGadgetItem(#G_LV_Pref_Layout, -1, "Auswahl Hintergrund")
      AddGadgetItem(#G_LV_Pref_Layout, -1, "Auswahl Text")
      TextGadget(#G_TX_Pref_LengthFormat, iStartX, iStartY + 135, 180, 13, "Länge (Format)")
      ComboBoxGadget(#G_CB_Pref_LengthFormat, iStartX, iStartY + 150, 180, 20, #PB_ComboBox_Editable)
      AddGadgetItem(#G_CB_Pref_LengthFormat, -1, "%ptime")
      AddGadgetItem(#G_CB_Pref_LengthFormat, -1, "%ltime")
      AddGadgetItem(#G_CB_Pref_LengthFormat, -1, "%ptime / %ftime")
      AddGadgetItem(#G_CB_Pref_LengthFormat, -1, "%ptime - %ppercent")
      ;MediaLib
      TextGadget(#G_TX_Pref_MediaLibPath, iStartX, iStartY, 250, 13, "Medienbibliothek Pfad")
      StringGadget(#G_SR_Pref_MediaLibPath, iStartX, iStartY + 15, 250, 20, "", #PB_String_ReadOnly)
      ButtonGadget(#G_BN_Pref_MediaLibPath, iStartX + 255, iStartY + 15, 25, 20, "...")
      GadgetToolTip(#G_BN_Pref_MediaLibPath, "Ordner suchen")
      ButtonGadget(#G_BN_Pref_MediaLibScan, iStartX + 285, iStartY + 15, 50, 20, "Scan")
      GadgetToolTip(#G_BN_Pref_MediaLibScan, "Ordner scanen")
      ButtonGadget(#G_BN_Pref_MediaLibScanFolder, iStartX + 340, iStartY + 15, 50, 20, "Ordner")
      GadgetToolTip(#G_BN_Pref_MediaLibScanFolder, "Scant einen bestimmten Ordner")
      CheckBoxGadget(#G_CH_Pref_AddPlayFiles, iStartX, iStartY + 40, 180, 15, "Abgespielte Dateien hinzufügen")
      GadgetToolTip(#G_CH_Pref_AddPlayFiles, "Fügt Dateien bei Wiedergabe automatisch in der Medienbibliothek ein")
      TextGadget(#G_TX_Pref_PlayCounterPercent, iStartX, iStartY + 60, 250, 13, "Prozentwert um Abspielcounter zu erhöhen:")
      SpinGadget(#G_SP_Pref_PlayCounterPercent, iStartX + 255, iStartY + 58, 50, 20, 0, 98, #PB_Spin_Numeric)
      ;Misc
      CheckBoxGadget(#G_CH_Pref_Loging, iStartX, iStartY, 180, 15, "Log erstellen")
      GadgetToolTip(#G_CH_Pref_Loging, "Ereignisse werden in einer Logdatei gespeichert")
      CheckBoxGadget(#G_CH_Pref_LogingDelStart, iStartX + 200, iStartY, 180, 15, "Bei Start leeren")
      GadgetToolTip(#G_CH_Pref_LogingDelStart, "Die Logdatei wird bei Programmstart gelöscht")
      CheckBoxGadget(#G_CH_Pref_Clipboard, iStartX, iStartY + 17, 180, 15, "Zwischenablage")
      GadgetToolTip(#G_CH_Pref_Clipboard, "Kopiert Informationen über aktuelle Wiedergabe in die Zwischenablage")
      CheckBoxGadget(#G_CH_Pref_AutoPlayList, iStartX, iStartY + 34, 180, 15, "Wiedergabeliste Speichern")
      GadgetToolTip(#G_CH_Pref_AutoPlayList, "Öffnet und Speichert die Wiedergabeliste automatisch")
      Frame3DGadget(#G_FR_Pref_AutoSave, iStartX, iStartY + 60, 215, 115, "Automatische Speicherung")
      CheckBoxGadget(#G_CH_Pref_AutoSavePf, iStartX + 10, iStartY + 80, 150, 15, "Einstellungen")
      CheckBoxGadget(#G_CH_Pref_AutoSaveIS, iStartX + 10, iStartY + 97, 150, 15, "InternetStreams")
      CheckBoxGadget(#G_CH_Pref_AutoSavePL, iStartX + 10, iStartY + 114, 150, 15, "Wiedergabeliste")
      CheckBoxGadget(#G_CH_Pref_AutoSaveML, iStartX + 10, iStartY + 131, 150, 15, "Medienbibliothek")
      TextGadget(#G_TX_Pref_AutoSaveIntervall, iStartX + 10, iStartY + 150, 150, 13, "Speicherintervall (in Minuten)")
      SpinGadget(#G_SP_Pref_AutoSaveIntervall, iStartX + 160, iStartY + 148, 45, 17, 2, 240, #PB_Spin_Numeric)
      CheckBoxGadget(#G_CH_Pref_EndQuestion, iStartX, iStartY + 185, 180, 15, "Vor beenden fragen")
      GadgetToolTip(#G_CH_Pref_EndQuestion, "Blendet eine Sicherheitsabfrage ein bevor " + #PrgName + " beendet wird")
      ;Plugins
      ListIconGadget(#G_LI_Pref_Plugins, iStartX, iStartY, WindowWidth(#Win_Preferences) - iStartX - 5, WindowHeight(#Win_Preferences) - iStartY - iMiscH, "Plugin", 150, #PB_ListIcon_FullRowSelect|#LVS_NOSORTHEADER|#PB_ListIcon_AlwaysShowSelection|#PB_ListIcon_CheckBoxes)
      AddGadgetColumn(#G_LI_Pref_Plugins, 1, "Autor", 120)
      AddGadgetColumn(#G_LI_Pref_Plugins, 2, "Version", 75)
      AddGadgetColumn(#G_LI_Pref_Plugins, 3, "Beschreibung", 350)
      iLI_Plugins = GadgetID(#G_LI_Pref_Plugins)
      ;Statistics
      TextGadget(#G_TX_Pref_PlayTime, iStartX, iStartY, 120, 13, "Wiedergabezeit:")
      TextGadget(#G_TX_Pref_PlayTimeC, iStartX + 120, iStartY, 120, 13, "")
      TextGadget(#G_TX_Pref_PlayedSongs_Start, iStartX, iStartY + 20, 120, 13, "Wiedergabe Start:")
      TextGadget(#G_TX_Pref_PlayedSongs_StartC, iStartX + 120, iStartY + 20, 120, 13, "")
      TextGadget(#G_TX_Pref_PlayedSongs_End, iStartX, iStartY + 35, 120, 13, "Wiedergabe Ende:")
      TextGadget(#G_TX_Pref_PlayedSongs_EndC, iStartX + 120, iStartY + 35, 120, 13, "")
      ButtonGadget(#G_BN_Pref_ResetStatistics, WindowWidth(#Win_Preferences) - 85, WindowHeight(#Win_Preferences) - iMiscH - 24, 80, 24, "Reset")

      Preferences_InitWindow()
      Preferences_ChangeArea()

      If Pref\opacity > 0
        Window_SetLayeredStyle(#Win_Preferences, 1)
        Window_SetOpacity(#Win_Preferences, Pref\opacityval)
      EndIf
      Window_SetIcon(#Win_Preferences, ImageList(#ImageList_Pref))

      If WinSize(#Win_Preferences)\posx = -1 And WinSize(#Win_Preferences)\posy = -1
        Window_CenterOnWindow(#Win_Preferences, #Win_Main)
      Else
        ResizeWindow(#Win_Preferences, WinSize(#Win_Preferences)\posx, WinSize(#Win_Preferences)\posy, #PB_Ignore, #PB_Ignore)
      EndIf

      Window_CheckPos(#Win_Preferences)

      WndEx_AddWindow(#Win_Preferences, #WndEx_Magnetic_Desktop|#WndEx_Magnetic_Window)
      iWinID_Preferences = WindowID(#Win_Preferences)

      HideWindow(#Win_Preferences, 0)
    Else
      MsgBox_Error("Fenster 'Preferences' konnte nicht erstellt werden")
    EndIf

  EndIf
EndProcedure

Procedure CloseWindow_Preferences()
  If IsWindow(#Win_Preferences)

    WinSize(#Win_Preferences)\posx   = WindowX(#Win_Preferences)
    WinSize(#Win_Preferences)\posy   = WindowY(#Win_Preferences)
    WinSize(#Win_Preferences)\width  = WindowWidth(#Win_Preferences)
    WinSize(#Win_Preferences)\height = WindowHeight(#Win_Preferences)

    iLPercentArea                    = GetGadgetState(#G_TR_Pref_Menu)
    iLI_Plugins                      = 0
    iWinID_Preferences               = 0

    WndEx_RemoveWindow(#Win_Preferences)

    CloseWindow(#Win_Preferences)

  EndIf
EndProcedure

Procedure ShowWindow_Log()
  If IsWindow(#Win_Log) = 0 And FileSize(AppDataPath_User() + #PrgName + "\" + "Log.txt") > 0
    If OpenWindow(#Win_Log, -1, -1, 320, 240, "Log", #PB_Window_Invisible|#PB_Window_SizeGadget|#PB_Window_SystemMenu, WindowID(#Win_Main))
      ButtonGadget(#G_BN_Log_Clear, 2, 2, 80, 22, "Leeren")
      ListViewGadget(#G_LV_Log_Loging, 0, 26, WindowWidth(#Win_Log), WindowHeight(#Win_Log) - 26)

      ;Read LogFile
      If FileSize(AppDataPath_User() + #PrgName + "\" + "Log.txt") > 0
        Protected iFile.i, sRead.s

        iFile = ReadFile(#PB_Any, AppDataPath_User() + #PrgName + "\" + "Log.txt")
        If iFile <> 0

          While Eof(iFile) = 0
            sTemp = Trim(ReadString(iFile))
            If sTemp <> ""
              AddGadgetItem(#G_LV_Log_Loging, -1, sTemp)
            EndIf
          Wend

          CloseFile(iFile)
        Else
          MsgBox_Exclamation("Datei '" + AppDataPath_User() + #PrgName + "\" + "Log.txt" + "' konnte nicht geöffnet werden")
        EndIf

      EndIf

      WindowBounds(#Win_Log, Window_GetWidth(#Win_Log), Window_GetHeight(#Win_Log), #PB_Ignore, #PB_Ignore)

      If WinSize(#Win_Log)\posx = -1 And WinSize(#Win_Log)\posy = -1
        Window_CenterOnWindow(#Win_Log, #Win_Main)
      Else
        ResizeWindow(#Win_Log, WinSize(#Win_Log)\posx, WinSize(#Win_Log)\posy, WinSize(#Win_Log)\width, WinSize(#Win_Log)\height)
      EndIf
      Window_CheckPos(#Win_Log)
      If Pref\opacity > 0
        Window_SetLayeredStyle(#Win_Log, 1)
        Window_SetOpacity(#Win_Log, Pref\opacityval)
      EndIf
      Window_SetIcon(#Win_Log, ImageList(#ImageList_Search))
      If CountGadgetItems(#G_LV_Log_Loging) > 0
        SetGadgetState(#G_LV_Log_Loging, CountGadgetItems(#G_LV_Log_Loging) - 1)
      EndIf
      lWinID_Log  = WindowID(#Win_Log)
      WndEx_AddWindow(#Win_Log, #WndEx_Magnetic_Desktop|#WndEx_Magnetic_Window)
      HideWindow(#Win_Log, 0)
    Else
      MsgBox_Error("Fenster 'Log' konnte nicht erstellt werden")
    EndIf
  EndIf
EndProcedure

Procedure CloseWindow_Log()
  If IsWindow(#Win_Log)

    WinSize(#Win_Log)\posx   = WindowX(#Win_Log)
    WinSize(#Win_Log)\posy   = WindowY(#Win_Log)
    WinSize(#Win_Log)\width  = WindowWidth(#Win_Log)
    WinSize(#Win_Log)\height = WindowHeight(#Win_Log)

    lWinID_Log = 0

    WndEx_RemoveWindow(#Win_Log)

    CloseWindow(#Win_Log)

  EndIf
EndProcedure

Procedure ShowWindow_MediaLibScan()
  If OpenWindow(#Win_MLScan, -1, -1, 320, 175, "Scanvorgang", #PB_Window_Invisible|#PB_Window_TitleBar, WindowID(#Win_Main))
    TextGadget(#G_TX_MLScan_Process, 10, 10, 270, 15, "")
    Frame3DGadget(#G_FR_MLScan_Gap, 5, 30, 275, 2, "", #PB_Frame3D_Single)
    TextGadget(#G_TX_MLScan_NFiles, 10, 40, 165, 13, "Neue Dateien:")
    TextGadget(#G_TX_MLScan_NFilesC, 180, 40, 100, 13, "", #PB_Text_Center)
    TextGadget(#G_TX_MLScan_RFiles, 10, 54, 165, 13, "Entfernte Dateien:")
    TextGadget(#G_TX_MLScan_RFilesC, 180, 54, 100, 13, "", #PB_Text_Center)
    TextGadget(#G_TX_MLScan_CFiles, 10, 68, 165, 13, "Geänderte Dateien:")
    TextGadget(#G_TX_MLScan_CFilesC, 180, 68, 100, 13, "", #PB_Text_Center)
    TextGadget(#G_TX_MLScan_CFile, 10, 90, 270, 13, "Aktueller Ordner:")
    TextGadget(#G_TX_MLScan_CFileN, 10, 110, 270, 15, "")
    CheckBoxGadget(#G_CH_MLScan_OnlyCheck, 10, 150, 125, 15, "Nur Überprüfen")
    GadgetToolTip(#G_CH_MLScan_OnlyCheck, "Überprüft lediglich auf nicht mehr vorhandene Einträge")
    If ListSize(MediaLibary()) = 0 : DisableGadget(#G_CH_MLScan_OnlyCheck, 1) : EndIf
    ButtonGadget(#G_BN_MLScan_Cancel, 145, 140, 80, 25, "Abbrechen")
    ButtonGadget(#G_BN_MLScan_Pause, 230, 140, 80, 25, "Start")

    If WinSize(#Win_MLScan)\posx = -1 And WinSize(#Win_MLScan)\posy = -1
      Window_CenterOnWindow(#Win_MLScan, #Win_Main)
    Else
      ResizeWindow(#Win_MLScan, WinSize(#Win_MLScan)\posx, WinSize(#Win_MLScan)\posy, #PB_Ignore, #PB_Ignore)
    EndIf
    Window_CheckPos(#Win_MLScan)
    If Pref\opacity > 0
      Window_SetLayeredStyle(#Win_MLScan, 1)
      Window_SetOpacity(#Win_MLScan, Pref\opacityval)
    EndIf
    lWinID_MLScan = WindowID(#Win_MLScan)
    WndEx_AddWindow(#Win_MLScan, #WndEx_Magnetic_Desktop|#WndEx_Magnetic_Window)
    HideWindow(#Win_MLScan, 0)
  Else
    MsgBox_Error("Fenster 'MLScan' konnte nicht erstellt werden")
  EndIf
EndProcedure

Procedure CloseWindow_MediaLibScan()
  If IsWindow(#Win_MLScan)

    WinSize(#Win_MLScan)\posx = WindowX(#Win_MLScan)
    WinSize(#Win_MLScan)\posy = WindowY(#Win_MLScan)

    lWinID_MLScan = 0

    WndEx_RemoveWindow(#Win_MLScan)

    CloseWindow(#Win_MLScan)

  EndIf
EndProcedure

;Zeigt informationen zum Track an
Procedure ShowWindow_TitleInfo()
  If IsWindow(#Win_TitleInfo) = 0
    If OpenWindow(#Win_TitleInfo, -1, -1, 340, 415, "Titelinformation", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Main))
      StringGadget(#G_SR_TitleInfo_Path, 10, 10, 280, 20, "", #PB_String_ReadOnly)
      SetGadgetColor(#G_SR_TitleInfo_Path, #PB_Gadget_BackColor, GetSysColor_(#COLOR_WINDOW))
      SetGadgetColor(#G_SR_TitleInfo_Path, #PB_Gadget_FrontColor, GetSysColor_(#COLOR_WINDOWTEXT))
      ButtonGadget(#G_BN_TitleInfo_Path, 295, 10, 35, 20, "...")
      GadgetToolTip(#G_BN_TitleInfo_Path, "Ordner Öffnen")
      Frame3DGadget(#G_FR_TitleInfo_MetaInfo, 10, 35, 320, 200, "Meta Info")
      TextGadget(#G_TX_TitleInfo_Title, 25, 58, 80, 14, "Titel:")
      StringGadget(#G_SR_TitleInfo_Title, 110, 55, 205, 20, "", #PB_String_ReadOnly)
      SetGadgetColor(#G_SR_TitleInfo_Title, #PB_Gadget_BackColor, GetSysColor_(#COLOR_WINDOW))
      SetGadgetColor(#G_SR_TitleInfo_Title, #PB_Gadget_FrontColor, GetSysColor_(#COLOR_WINDOWTEXT))
      TextGadget(#G_TX_TitleInfo_Artist, 25, 83, 80, 14, "Interpret:")
      StringGadget(#G_SR_TitleInfo_Artist, 110, 80, 205, 20, "", #PB_String_ReadOnly)
      SetGadgetColor(#G_SR_TitleInfo_Artist, #PB_Gadget_BackColor, GetSysColor_(#COLOR_WINDOW))
      SetGadgetColor(#G_SR_TitleInfo_Artist, #PB_Gadget_FrontColor, GetSysColor_(#COLOR_WINDOWTEXT))
      TextGadget(#G_TX_TitleInfo_Album, 25, 108, 80, 14, "Album:")
      StringGadget(#G_SR_TitleInfo_Album, 110, 105, 205, 20, "", #PB_String_ReadOnly)
      SetGadgetColor(#G_SR_TitleInfo_Album, #PB_Gadget_BackColor, GetSysColor_(#COLOR_WINDOW))
      SetGadgetColor(#G_SR_TitleInfo_Album, #PB_Gadget_FrontColor, GetSysColor_(#COLOR_WINDOWTEXT))
      TextGadget(#G_TX_TitleInfo_Number, 25, 133, 80, 14, "Nummer:")
      StringGadget(#G_SR_TitleInfo_Number, 110, 130, 205, 20, "", #PB_String_ReadOnly)
      SetGadgetColor(#G_SR_TitleInfo_Number, #PB_Gadget_BackColor, GetSysColor_(#COLOR_WINDOW))
      SetGadgetColor(#G_SR_TitleInfo_Number, #PB_Gadget_FrontColor, GetSysColor_(#COLOR_WINDOWTEXT))
      TextGadget(#G_TX_TitleInfo_Genre, 25, 158, 80, 14, "Genre:")
      StringGadget(#G_SR_TitleInfo_Genre, 110, 155, 205, 20, "", #PB_String_ReadOnly)
      SetGadgetColor(#G_SR_TitleInfo_Genre, #PB_Gadget_BackColor, GetSysColor_(#COLOR_WINDOW))
      SetGadgetColor(#G_SR_TitleInfo_Genre, #PB_Gadget_FrontColor, GetSysColor_(#COLOR_WINDOWTEXT))
      TextGadget(#G_TX_TitleInfo_Year, 25, 183, 80, 14, "Jahr:")
      StringGadget(#G_SR_TitleInfo_Year, 110, 180, 205, 20, "", #PB_String_ReadOnly)
      SetGadgetColor(#G_SR_TitleInfo_Year, #PB_Gadget_BackColor, GetSysColor_(#COLOR_WINDOW))
      SetGadgetColor(#G_SR_TitleInfo_Year, #PB_Gadget_FrontColor, GetSysColor_(#COLOR_WINDOWTEXT))
      TextGadget(#G_TX_TitleInfo_Comment, 25, 208, 80, 14, "Kommentar:")
      StringGadget(#G_SR_TitleInfo_Comment, 110, 205, 205, 20, "", #PB_String_ReadOnly)
      SetGadgetColor(#G_SR_TitleInfo_Comment, #PB_Gadget_BackColor, GetSysColor_(#COLOR_WINDOW))
      SetGadgetColor(#G_SR_TitleInfo_Comment, #PB_Gadget_FrontColor, GetSysColor_(#COLOR_WINDOWTEXT))
      Frame3DGadget(#G_FR_TitleInfo_TechnicDetails, 10, 240, 320, 130, "Technische Details")
      TextGadget(#G_TX_TitleInfo_Bits, 25, 265, 80, 14, "Bitrate:")
      TextGadget(#G_TX_TitleInfo_BitsC, 110, 265, 205, 15, "")
      TextGadget(#G_TX_TitleInfo_Length, 25, 285, 80, 14, "Länge:")
      TextGadget(#G_TX_TitleInfo_LengthC, 110, 285, 205, 15, "")
      TextGadget(#G_TX_TitleInfo_SamplingRate, 25, 305, 80, 14, "Samplingrate:")
      TextGadget(#G_TX_TitleInfo_SamplingRateC, 110, 305, 205, 15, "")
      TextGadget(#G_TX_TitleInfo_Channels, 25, 325, 80, 14, "Kanäle:")
      TextGadget(#G_TX_TitleInfo_ChannelsC, 110, 325, 205, 15, "")
      TextGadget(#G_TX_TitleInfo_Version, 25, 345, 80, 14, "Version:")
      TextGadget(#G_TX_TitleInfo_VersionC, 110, 345, 205, 15, "")
      ButtonGadget(#G_BN_TitleInfo_Close, WindowWidth(#Win_TitleInfo) - 175, 380, 80, 25, "OK")
      ButtonGadget(#G_BN_TitleInfo_Extended, WindowWidth(#Win_TitleInfo) - 90, 380, 80, 25, "Erweitert")
      ListIconGadget(#G_LI_TitleInfo_Extended, 340, 10, 290, WindowHeight(#Win_TitleInfo) - 20, "Name", 80, #PB_ListIcon_GridLines|#PB_ListIcon_FullRowSelect)
      AddGadgetColumn(#G_LI_TitleInfo_Extended, 1, "Wert", 120)
      AddGadgetColumn(#G_LI_TitleInfo_Extended, 2, "Type", 80)
      HideGadget(#G_LI_TitleInfo_Extended, 1)

      If WinSize(#Win_TitleInfo)\posx = -1 And WinSize(#Win_TitleInfo)\posy = -1
        Window_CenterOnWindow(#Win_TitleInfo, #Win_Main)
      Else
        ResizeWindow(#Win_TitleInfo, WinSize(#Win_TitleInfo)\posx, WinSize(#Win_TitleInfo)\posy, #PB_Ignore, #PB_Ignore)
      EndIf
      Window_CheckPos(#Win_TitleInfo)
      If Pref\opacity > 0
        Window_SetLayeredStyle(#Win_TitleInfo, 1)
        Window_SetOpacity(#Win_TitleInfo, Pref\opacityval)
      EndIf
      SetActiveGadget(#G_BN_TitleInfo_Close)
      Window_SetIcon(#Win_TitleInfo, ImageList(#ImageList_TrackInfo))
      lWinID_TitleInfo = WindowID(#Win_TitleInfo)
      WndEx_AddWindow(#Win_TitleInfo, #WndEx_Magnetic_Desktop|#WndEx_Magnetic_Window)
      HideWindow(#Win_TitleInfo, 0)
    Else
      MsgBox_Error("Fenster 'TitleInformation' konnte nicht erstellt werden")
    EndIf

  Else

    SetGadgetText(#G_SR_TitleInfo_Path, "")
    SetGadgetText(#G_SR_TitleInfo_Title, "")
    SetGadgetText(#G_SR_TitleInfo_Artist, "")
    SetGadgetText(#G_SR_TitleInfo_Album, "")
    SetGadgetText(#G_SR_TitleInfo_Number, "")
    SetGadgetText(#G_SR_TitleInfo_Genre, "")
    SetGadgetText(#G_SR_TitleInfo_Year, "")
    SetGadgetText(#G_SR_TitleInfo_Comment, "")
    SetGadgetText(#G_TX_TitleInfo_BitsC, "")
    SetGadgetText(#G_TX_TitleInfo_LengthC, "")
    SetGadgetText(#G_TX_TitleInfo_SamplingRateC, "")
    SetGadgetText(#G_TX_TitleInfo_ChannelsC, "")
    SetGadgetText(#G_TX_TitleInfo_VersionC, "")
    ClearGadgetItems(#G_LI_TitleInfo_Extended)

  EndIf
EndProcedure

Procedure CloseWindow_TitleInfo()
  If IsWindow(#Win_TitleInfo)
    WinSize(#Win_TitleInfo)\posx = WindowX(#Win_TitleInfo) : WinSize(#Win_TitleInfo)\posy = WindowY(#Win_TitleInfo)
    lWinID_TitleInfo = 0
    WndEx_RemoveWindow(#Win_TitleInfo)
    CloseWindow(#Win_TitleInfo)
  EndIf
EndProcedure

;Öffnet das Shoutcast Fenster
Procedure ShowWindow_Shoutcast(Flags = 0)
  If OpenWindow(#Win_InternetStream, -1, -1, 440, 280, "Internet Stream", #PB_Window_Invisible|#PB_Window_SizeGadget|#PB_Window_SystemMenu, WindowID(#Win_Main))
    StringGadget(#G_SR_InternetStream_URL, 5, 5, 250, 20, "http://")
    ButtonGadget(#G_BN_InternetStream_Connect, 260, 5, 50, 20, "OK")
    ButtonGadget(#G_BN_InternetStream_ServerSave, 5, 30, 80, 24, "Speichern")
    ButtonGadget(#G_BN_InternetStream_ServerDelete, 90, 30, 80, 24, "Löschen")
    ListIconGadget(#G_LI_InternetStream_Server, 5, 60, 305, 160, "Name", 120, #PB_ListIcon_FullRowSelect|#LVS_NOSORTHEADER|#PB_ListIcon_AlwaysShowSelection)
    AddGadgetColumn(#G_LI_InternetStream_Server, 1, "URL", 120)
    SetGadgetItemAttribute(#G_LI_InternetStream_Server, -1, #PB_ListIcon_ColumnWidth, iColumnW1_InternetStream, 0)
    SetGadgetItemAttribute(#G_LI_InternetStream_Server, -1, #PB_ListIcon_ColumnWidth, iColumnW2_InternetStream, 1)
    iLI_InternetStream = GadgetID(#G_LI_InternetStream_Server)

    SortStructuredList(Shoutcast(), #PB_Sort_Ascending, OffsetOf(_Shoutcast\name), #PB_Sort_String)
    ForEach Shoutcast()
      AddGadgetItem(#G_LI_InternetStream_Server, -1, Shoutcast()\name + Chr(10) + Shoutcast()\url)
    Next

  Else
    MsgBox_Error("Fenster 'Shoutcast' konnte nicht erstellt werden")
    ProcedureReturn -1
  EndIf

  WindowBounds(#Win_InternetStream, Window_GetWidth(#Win_InternetStream), Window_GetHeight(#Win_InternetStream), #PB_Ignore, #PB_Ignore)
  If WinSize(#Win_InternetStream)\posx = -1 And WinSize(#Win_InternetStream)\posy = -1
    Window_CenterOnWindow(#Win_InternetStream, #Win_Main)
  Else
    ResizeWindow(#Win_InternetStream, WinSize(#Win_InternetStream)\posx, WinSize(#Win_InternetStream)\posy, WinSize(#Win_InternetStream)\width, WinSize(#Win_InternetStream)\height)
  EndIf
  Window_CheckPos(#Win_InternetStream)
  If Pref\opacity > 0
    Window_SetLayeredStyle(#Win_InternetStream, 1)
    Window_SetOpacity(#Win_InternetStream, Pref\opacityval)
  EndIf
  SetGadgetData(#G_BN_InternetStream_Connect, Flags)
  Window_SetIcon(#Win_InternetStream, ImageList(#ImageList_AddURL))
  SetActiveGadget(#G_SR_InternetStream_URL)
  SendMessage_(GadgetID(#G_SR_InternetStream_URL), #EM_SETSEL, 0, Len(GetGadgetText(#G_SR_InternetStream_URL)))
  lWinID_InternetStream = WindowID(#Win_InternetStream)
  WndEx_AddWindow(#Win_InternetStream, #WndEx_Magnetic_Desktop|#WndEx_Magnetic_Window)
  HideWindow(#Win_InternetStream, 0)
  DisableWindow(#Win_Main, 1)
EndProcedure

Procedure CloseWindow_Shoutcast()
  If IsWindow(#Win_InternetStream)
    WinSize(#Win_InternetStream)\posx = WindowX(#Win_InternetStream) : WinSize(#Win_InternetStream)\posy = WindowY(#Win_InternetStream)
    WinSize(#Win_InternetStream)\width = WindowWidth(#Win_InternetStream) : WinSize(#Win_InternetStream)\height = WindowHeight(#Win_InternetStream)
    iColumnW1_InternetStream = GetGadgetItemAttribute(#G_LI_InternetStream_Server, -1, #PB_ListIcon_ColumnWidth, 0)
    iColumnW2_InternetStream = GetGadgetItemAttribute(#G_LI_InternetStream_Server, -1, #PB_ListIcon_ColumnWidth, 1)
    iLI_InternetStream       = 0
    lWinID_InternetStream    = 0
    WndEx_RemoveWindow(#Win_InternetStream)
    CloseWindow(#Win_InternetStream)
    DisableWindow(#Win_Main, 0)
  EndIf
EndProcedure

;Öffnet das Suchfenster
Procedure ShowWindow_Search()
  If OpenWindow(#Win_Search, -1, -1, 330, 280, "Suche", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Main))
    ComboBoxGadget(#G_CB_Search_SearchIn, 5, 5, 250, 20)
    AddGadgetItem(#G_CB_Search_SearchIn, -1, "Überall")
    AddGadgetItem(#G_CB_Search_SearchIn, -1, "Titel")
    AddGadgetItem(#G_CB_Search_SearchIn, -1, "Interpret")
    AddGadgetItem(#G_CB_Search_SearchIn, -1, "Album")
    AddGadgetItem(#G_CB_Search_SearchIn, -1, "Kommentar")
    SetGadgetState(#G_CB_Search_SearchIn, 0)
    ComboBoxGadget(#G_CB_Search_String, 5, 30, 250, 20, #PB_ComboBox_Editable)
    ForEach PLSearchHistory()
      AddGadgetItem(#G_CB_Search_String, -1, PLSearchHistory()\string)
    Next
    If CountGadgetItems(#G_CB_Search_String) > 0
      SetGadgetState(#G_CB_Search_String, 0)
    EndIf
    ButtonGadget(#G_BN_Search_Start, 260, 30, 65, 20, "Suchen")
    ListViewGadget(#G_LV_Search_Result, 5, 55, 320, 220)

  Else
    MsgBox_Error("Fenster 'ShowSearch' konnte nicht erstellt werden")
    ProcedureReturn -1
  EndIf

  If WinSize(#Win_Search)\posx = -1 And WinSize(#Win_Search)\posy = -1
    Window_CenterOnWindow(#Win_Search, #Win_Main)
  Else
    ResizeWindow(#Win_Search, WinSize(#Win_Search)\posx, WinSize(#Win_Search)\posy, #PB_Ignore, #PB_Ignore)
  EndIf
  Window_CheckPos(#Win_Search)
  If Pref\opacity > 0
    Window_SetLayeredStyle(#Win_Search, 1)
    Window_SetOpacity(#Win_Search, Pref\opacityval)
  EndIf
  Window_SetIcon(#Win_Search, ImageList(#ImageList_Search))
  SetActiveGadget(#G_CB_Search_String)
  HideWindow(#Win_Search, 0)
  lWinID_Search = WindowID(#Win_Search)
  WndEx_AddWindow(#Win_Search, #WndEx_Magnetic_Desktop|#WndEx_Magnetic_Window)
EndProcedure

Procedure CloseWindow_Search()
  If IsWindow(#Win_Search)
    WinSize(#Win_Search)\posx = WindowX(#Win_Search)
    WinSize(#Win_Search)\posy = WindowY(#Win_Search)
    lWinID_Search = 0
    WndEx_RemoveWindow(#Win_Search)
    CloseWindow(#Win_Search)
  EndIf
EndProcedure

Procedure ShowWindow_RndPlaylist()
  Protected iNext.i

  If OpenWindow(#Win_RNDPlaylist, -1, -1, 295, 205, "Wiedergabeliste erzeugen", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Main))
    Frame3DGadget(#G_FR_RNDPlaylist_Amount, 5, 5, 140, 150, "")
    CheckBoxGadget(#G_CH_RNDPlaylist_Amount, 15, 20, 120, 15, "Nach Anzahl")
    SetGadgetState(#G_CH_RNDPlaylist_Amount, 1)
    TextGadget(#G_TX_RNDPlaylist_Amount, 20, 40, 115, 15, "Anzahl")
    StringGadget(#G_SR_RNDPlaylist_Amount, 20, 55, 115, 20, "12")
    CheckBoxGadget(#G_CH_RNDPlaylist_Time, 15, 85, 120, 15, "Nach Zeit")
    TextGadget(#G_TX_RNDPlaylist_Time, 20, 105, 115, 15, "Gesamte Dauer")
    DateGadget(#G_CB_RNDPlaylist_Time, 20, 120, 115, 20, "%hh:%ii", Date(2000,1,1,1,0,0), #PB_Date_UpDown)
    DisableGadget(#G_CB_RNDPlaylist_Time, 1)
    Frame3DGadget(#G_FR_RNDPlaylist_Select, 150, 5, 140, 150, "")
    CheckBoxGadget(#G_CH_RNDPlaylist_Genre, 160, 20, 120, 15, "Genrewahl")
    ListViewGadget(#G_LV_RNDPlaylist_Genre, 160, 36, 120, 80, #PB_ListView_Clickselect)
    For iNext = 0 To #MaxMP3Genre
      AddGadgetItem(#G_LV_RNDPlaylist_Genre, -1, MP3Genre(iNext))
    Next
    DisableGadget(#G_LV_RNDPlaylist_Genre, 1)
    CheckBoxGadget(#G_CH_RNDPlaylist_Played, 160, 120, 120, 15, "Abgespielt")
    GadgetToolTip(#G_CH_RNDPlaylist_Played, "Fügt nur Dateien hinzu die schonmal abgespielt wurden")
    TextGadget(#G_TX_RNDPlaylist_Status, 5, 160, 285, 13, "")
    ButtonGadget(#G_BN_RNDPlaylist_Cancel, 135, 175, 75, 25, "Abbrechen")
    ButtonGadget(#G_BN_RNDPlaylist_Create, 215, 175, 75, 25, "Erzeugen")

    If WinSize(#Win_RNDPlaylist)\posx = -1 And WinSize(#Win_RNDPlaylist)\posy = -1
      Window_CenterOnWindow(#Win_RNDPlaylist, #Win_Main)
    Else
      ResizeWindow(#Win_RNDPlaylist, WinSize(#Win_RNDPlaylist)\posx, WinSize(#Win_RNDPlaylist)\posy, #PB_Ignore, #PB_Ignore)
    EndIf
    Window_CheckPos(#Win_RNDPlaylist)
    If Pref\opacity > 0
      Window_SetLayeredStyle(#Win_RNDPlaylist, 1)
      Window_SetOpacity(#Win_RNDPlaylist, Pref\opacityval)
    EndIf
    Window_SetIcon(#Win_RNDPlaylist, ImageList(#ImageList_PlayList))
    lWinID_RndPlaylist = WindowID(#Win_RNDPlaylist)
    WndEx_AddWindow(#Win_RNDPlaylist, #WndEx_Magnetic_Desktop|#WndEx_Magnetic_Window)
    HideWindow(#Win_RNDPlaylist, 0)
    DisableWindow(#Win_Main, 1)
  Else
    MsgBox_Error("Fenster 'RndPlaylist' konnte nicht geöffnet werden")
  EndIf
EndProcedure

Procedure CloseWindow_RndPlaylist()
  If IsWindow(#Win_RNDPlaylist)
    WinSize(#Win_RNDPlaylist)\posx = WindowX(#Win_RNDPlaylist)
    WinSize(#Win_RNDPlaylist)\posy = WindowY(#Win_RNDPlaylist)
    lWinID_RndPlaylist = 0
    WndEx_RemoveWindow(#Win_RNDPlaylist)
    CloseWindow(#Win_RNDPlaylist)
    DisableWindow(#Win_Main, 0)
  EndIf
EndProcedure

Procedure ShowWindow_MLSearchOptions()
  If OpenWindow(#Win_MLSearchO, 0, 0, 360, 205, "Erweiterte Suche", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Main))
    Frame3DGadget(#G_FR_MLSearchO_Misc, 10, 10, 200, 85, "Weiteres")
    CheckBoxGadget(#G_CH_MLSearchO_CaseS, 20, 30, 180, 15, "Groß/Kleinschreibung beachten")
    CheckBoxGadget(#G_CH_MLSearchO_WholeWord, 20, 50, 180, 15, "Ganze Wörter")
    CheckBoxGadget(#G_CH_MLSearchO_Played, 20, 70, 180, 15, "Bereits abgespielt")
    Frame3DGadget(#G_FR_MLSearchO_Year, 10, 100, 200, 55, "Jahr")
    DateGadget(#G_CB_MLSearchO_Year, 20, 120, 180, 25, "%yyyy", 0, #PB_Date_CheckBox|#PB_Date_UpDown)
    Frame3DGadget(#G_FR_MLSearchO_SearchI, 220, 10, 130, 145, "Suchen in")
    CheckBoxGadget(#G_CH_MLSearchO_Title, 230, 30, 100, 15, "Titel")
    CheckBoxGadget(#G_CH_MLSearchO_Artist, 230, 50, 100, 15, "Interpret")
    CheckBoxGadget(#G_CH_MLSearchO_Album, 230, 70, 100, 15, "Album")
    CheckBoxGadget(#G_CH_MLSearchO_Comment, 230, 90, 100, 15, "Kommentar")
    CheckBoxGadget(#G_CH_MLSearchO_Path, 230, 110, 100, 15, "Pfad")
    CheckBoxGadget(#G_CH_MLSearchO_Filename, 230, 130, 100, 15, "Dateiname")
    ButtonGadget(#G_BN_MLSearchO_Default, 102, 170, 80, 25, "Standard")
    ButtonGadget(#G_BN_MLSearchO_Apply, 186, 170, 80, 25, "OK")
    ButtonGadget(#G_BN_MLScan_Cancel, 270, 170, 80, 25, "Abbrechen")

    If MLSearchO\cases > 0
      SetGadgetState(#G_CH_MLSearchO_CaseS, 1)
    EndIf
    If MLSearchO\wholeword > 0
      SetGadgetState(#G_CH_MLSearchO_WholeWord, 1)
    EndIf
    If MLSearchO\played > 0
      SetGadgetState(#G_CH_MLSearchO_Played, 1)
    EndIf
    SetGadgetState(#G_CB_MLSearchO_Year, MLSearchO\year)
    If MLSearchO\searchin & 2
      SetGadgetState(#G_CH_MLSearchO_Title, 1)
    EndIf
    If MLSearchO\searchin & 4
      SetGadgetState(#G_CH_MLSearchO_Artist, 1)
    EndIf
    If MLSearchO\searchin & 8
      SetGadgetState(#G_CH_MLSearchO_Album, 1)
    EndIf
    If MLSearchO\searchin & 16
      SetGadgetState(#G_CH_MLSearchO_Comment, 1)
    EndIf
    If MLSearchO\searchin & 32
      SetGadgetState(#G_CH_MLSearchO_Path, 1)
    EndIf
    If MLSearchO\searchin & 64
      SetGadgetState(#G_CH_MLSearchO_Filename, 1)
    EndIf

    If WinSize(#Win_MLSearchO)\posx = -1 And WinSize(#Win_MLSearchO)\posy = -1
      Window_CenterOnWindow(#Win_MLSearchO, #Win_Main)
    Else
      ResizeWindow(#Win_MLSearchO, WinSize(#Win_MLSearchO)\posx, WinSize(#Win_MLSearchO)\posy, #PB_Ignore, #PB_Ignore)
    EndIf
    Window_CheckPos(#Win_MLSearchO)
    If Pref\opacity > 0
      Window_SetLayeredStyle(#Win_MLSearchO, 1)
      Window_SetOpacity(#Win_MLSearchO, Pref\opacityval)
    EndIf
    DisableGadget(#G_BN_Main_ML_SearchOptions, 1)
    lWinID_MLSearchO = WindowID(#Win_MLSearchO)
    WndEx_AddWindow(#Win_MLSearchO, #WndEx_Magnetic_Desktop|#WndEx_Magnetic_Window)
    HideWindow(#Win_MLSearchO, 0)
    DisableWindow(#Win_Main, 1)
  Else
    MsgBox_Error("Fenster 'MediaLib SearchOptions' konnte nicht geöffnet werden")
  EndIf
EndProcedure

Procedure CloseWindow_MLSearchOptions()
  If IsWindow(#Win_MLSearchO)
    WinSize(#Win_MLSearchO)\posx = WindowX(#Win_MLSearchO)
    WinSize(#Win_MLSearchO)\posy = WindowY(#Win_MLSearchO)
    lWinID_MLSearchO = 0
    WndEx_RemoveWindow(#Win_MLSearchO)
    CloseWindow(#Win_MLSearchO)
    DisableGadget(#G_BN_Main_ML_SearchOptions, 0)
    DisableWindow(#Win_Main, 0)
  EndIf
EndProcedure

Procedure ShowWindow_Info()
  If IsWindow(#Win_Info) = 0
    If OpenWindow(#Win_Info, 0, 0, 380, 452, "Informationen", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Main))
      ImageGadget(#G_IG_Info_PrgLogo, 0, 0, 380, 139, lImgPrgLogo)
      DisableGadget(#G_IG_Info_PrgLogo, 1)
      Frame3DGadget(#G_FR_Info_Gap, -5, 139, 395, 2, "", #PB_Frame3D_Single)
      PanelGadget(#G_PN_Info_Info, 5, 145, 370, 265)
      AddGadgetItem(#G_PN_Info_Info, -1, "Informationen")
      TextGadget(#G_TX_Info_Info, 5, 5, GetGadgetAttribute(#G_PN_Info_Info, #PB_Panel_ItemWidth) - 10, GetGadgetAttribute(#G_PN_Info_Info, #PB_Panel_ItemHeight) - 10, "", #PB_Text_Center)
      AddGadgetItem(#G_PN_Info_Info, -1, "Geschichte")
      StringGadget(#G_TX_Info_ChangeLog, 5, 5, GetGadgetAttribute(#G_PN_Info_Info, #PB_Panel_ItemWidth) - 10, GetGadgetAttribute(#G_PN_Info_Info, #PB_Panel_ItemHeight) - 10, "", #ES_READONLY|#ES_MULTILINE|#WS_VSCROLL|#WS_HSCROLL)
      SetGadgetColor(#G_TX_Info_ChangeLog, #PB_Gadget_BackColor, GetSysColor_(#COLOR_WINDOW))
      SetGadgetColor(#G_TX_Info_ChangeLog, #PB_Gadget_FrontColor, GetSysColor_(#COLOR_WINDOWTEXT))
      CloseGadgetList()
      ButtonGadget(#G_BN_Info_Close, WindowWidth(#Win_Info)/2 - 40, 420, 80, 25, "OK")

      SetGadgetText(#G_TX_Info_Info, #CR$ + #CR$ + #PrgName + " Version " + StrF(#PrgVers/100, 2) + " - BETA" + #CR$ + "Compilebuild: " + StrF(#PB_Editor_BuildCount/100, 2) + #CR$ + "Copyright©Kai Gartenschläger, 2008" + #CR$ + #CR$ + "dergarty@freenet.de" + #CR$ + "http://purefreak.pu.funpic.de" + #CR$ + #CR$ + "MediaKing ist Freeware!" + #CR$ + #CR$ + "FModEx " + Hex(lFMOD_Version) + #CR$ + "Copyright©2001-2008, Firelight Technologies Ltd." + #CR$ + #CR$ + "http://www.fmod.org")
      SetGadgetText(#G_TX_Info_ChangeLog, "* 0.38" + #CRLF$ + "A Ausgabe der Längenangabe kann nun formatiert werden" + #CRLF$ + "A Einscanen einzelner Ordner" + #CRLF$ + "A Statistikangabe Wiedergabe gestartet und Wiedergabe beendet" + #CRLF$ + "A Einstellung für Prozentwert zum hochzählen des Abspielcounter" + #CRLF$ + "* 0.37" + #CRLF$ + "A Outputrate,Speakermode,ResampleMethod,Streambuffersize kann nun festgelegt werden" + #CRLF$ + "C Komplette FMOD Initialisierung neugeschrieben und optimiert" + #CRLF$ + "C Oberfläche von Einstellungen komplett umgeordnet" + #CRLF$ + "F Wiedergabe wird nun über ein Callback gestartet" + #CRLF$ + "F Wiedergabeliste wird nun gespeichert nachdem ausgewählte Einträge entfernt werden" + #CRLF$ + "F Wiedergabe wird nun fortgesetzt falls man im Pausemodus Wiedergabe drückt" + #CRLF$ + "* 0.36" + #CRLF$ + "A Spaltenausrichtung kann nun eingestelt werden" + #CRLF$ + "A Farbliche Hervorhebung der Zeilen in Medienbibliothek" + #CRLF$ + "A Unter Wiedergabe Einstellungen wird die gesamte Abspielzeit eingeblendet" + #CRLF$ + "* 0.35" + #CRLF$ + "A AutoComplete bei Suchfeld Wiedergabeliste/Medienbibliothek" + #CRLF$ + "F Längen werden nun korekt erkannt" + #CRLF$ + "F Wiedergabeliste erstellen" + #CRLF$ + "* 0.34" + #CRLF$ + "C Informationsfenster" + #CRLF$ + "* 0.33" + #CRLF$ + "A Informationen bei Klick auf Titel im Infobereich" + #CRLF$ + "A Alben in Medienbibliothek werden sortiert" + #CRLF$ + "F Stopzeit bei Medienbibliothek-Scan" + #CRLF$ + "* 0.32" + #CRLF$ + "A Wiedergabeliste als htm-Datei speichern" + #CRLF$ + "A Normalisierung von Spectrum" + #CRLF$ + "A Spaltenreihenfolge von Wiedergabeliste/Medienbibliothek " + #CRLF$ + "A Feedback" + #CRLF$ + "A Magnetische Fenster einstellbar" + #CRLF$ + "A Dateien bei Wiedergabe zur Medienbibliothek hinzufügen" + #CRLF$ + "A Spaltenbreite von Wiedergabeliste/Medienbibliothek automatisch anpassen" + #CRLF$ + "A Datenbanken werden automatisch alle 5 Minuten gespeichert" + #CRLF$ + "C Informationsfenster" + #CRLF$ + "C Oberfläche" + #CRLF$ + "C Interne Speicheroptimierung" + #CRLF$ + "C Verbessertes einscanen der Medienbibliothek" + #CRLF$ + "C Bei Ordner Öffnen wird nun im Explorer die Datei ausgewählt" + #CRLF$ + "F Shortcuts blockieren nicht länger die Programmoberfläche" + #CRLF$ + "F Programm bleibt bei aktivierter Transparenz am Start hängen" + #CRLF$ + "* 0.31" + #CRLF$ + "F Lesezeichen entfernen entfernt sofort Einträge aus Liste" + #CRLF$ + "F Hinzufügen/URL startet Stream-Wiedergabe nicht" + #CRLF$ + "* 0.30" + #CRLF$ + "F Wiedergabe von Programmparameter" + #CRLF$ + "F Initialisierung der Effekte bei Programmstart" + #CRLF$ + "* O.29" + #CRLF$ + "A Medienbibliothek Lesezeichen" + #CRLF$ + "F Pluginübergabe der _CurrPlay Structure" + #CRLF$ + "* 0.28" + #CRLF$ + "A Genre Liste erweitert" + #CRLF$ + "A Plugin Support" + #CRLF$ + "C Neuste fmod-Version" + #CRLF$ + "F Equilizer-Initialisierung bei Programmstart" + #CRLF$ + "* 0.27" + #CRLF$ + "A Such-History für Playlist/Medienbibliothekwerden" + #CRLF$ + "A Einstellungen für Medienbibliothek-Suche" + #CRLF$ + "* 0.26" + #CRLF$ + "A Playlist erstellen" + #CRLF$ + "A Wiedergabeliste/Medienbibliothek Spalte Nummer" + #CRLF$ + "F Font wird nun bei allen Fensterelemente aktuallisiert" + #CRLF$ + "* 0.25" + #CRLF$ + "A Einstellunge für Ausgangstreiber" + #CRLF$ + "* 0.24" + #CRLF$ + "F Interne Optimierung der Fenstergrößenänderung" + #CRLF$ + "* 0.23" + #CRLF$ + "A Wiedergabeliste/Medienbibliothek Spalte Jahr" + #CRLF$ + "F Titelinformationen" + #CRLF$ + "F Logfenster wird sofort aktualisiert" + #CRLF$ + "* 0.22" + #CRLF$ + "A Scan der Medienbibliothek wird gelogt" + #CRLF$ + "F Wiedergabe in Playlist nach Wiedergabeende in Medienbibliothek" + #CRLF$ + "* 0.21" + #CRLF$ + "R MediaKing Log.exe" + #CRLF$ + "C Menü Medienbibliothek" + #CRLF$ + "F Informationsbereich bei veränderung der Fenstergröße" + #CRLF$ + "F Scanvorgang Medienbibliothek" + #CRLF$ + "* 0.20" + #CRLF$ + "C Scanengine für Medienbibliothek" + #CRLF$ + "* 0.19" + #CRLF$ + "A Bei Doppelklick in Medienbibliothek Wiedergabestart" + #CRLF$ + "F Einlesen von MP3 ID3v2 Tags" + #CRLF$ + "* 0.18" + #CRLF$ + "A Standardwerte für Equilizer" + #CRLF$ + "A Medienbibliothek ordnen nach Album" + #CRLF$ + "* 0.17" + #CRLF$ + "A MediaKing Log.exe" + #CRLF$ + "C Datenbanken sind abwärtskompatible" + #CRLF$ + "F Medienbibliothek-Scan Disable Window" + #CRLF$ + "* 0.16" + #CRLF$ + "A MP3 ID3v2 Tags Unterstützung" + #CRLF$ + "* 0.13 (First Release)" + #CRLF$ + #CRLF$ + "A - Hinzugefügt" + #CRLF$ + "R - Entfernt" + #CRLF$ + "C - Geändert" + #CRLF$ + "F - Fehler behoben")

      If WinSize(#Win_Info)\posx = -1 And WinSize(#Win_Info)\posy = -1
        Window_CenterOnWindow(#Win_Info, #Win_Main)
      Else
        ResizeWindow(#Win_Info, WinSize(#Win_Info)\posx, WinSize(#Win_Info)\posy, #PB_Ignore, #PB_Ignore)
      EndIf
      Window_CheckPos(#Win_Info)
      If Pref\opacity > 0
        Window_SetLayeredStyle(#Win_Info, 1)
        Window_SetOpacity(#Win_Info, Pref\opacityval)
      EndIf
      DisableMenuItem(#Menu_SysTray, #Mnu_SysTray_About, 1)
      Window_SetIcon(#Win_Info, ImageList(#ImageList_About))
      lWinID_Info = WindowID(#Win_Info)
      WndEx_AddWindow(#Win_Info, #WndEx_Magnetic_Desktop|#WndEx_Magnetic_Window)
      HideWindow(#Win_Info, 0)
    Else
      MsgBox_Error("Fenster 'Info' konnte nicht geöffnet werden")
    EndIf
  EndIf
EndProcedure

Procedure CloseWindow_Info()
  If IsWindow(#Win_Info)
    WinSize(#Win_Info)\posx = WindowX(#Win_Info) : WinSize(#Win_Info)\posy = WindowY(#Win_Info)
    lWinID_Info = 0
    WndEx_RemoveWindow(#Win_Info)
    DisableMenuItem(#Menu_SysTray, #Mnu_SysTray_About, 0)
    CloseWindow(#Win_Info)
  EndIf
EndProcedure

Procedure ShowWindow_Order()
  If IsWindow(#Win_Order) = 0
    If OpenWindow(#Win_Order, 392, 385, 260, 135, "Aufgaben", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Main))
      TextGadget(#G_TX_Order_Event, 5, 5, 250, 15, "Auslöser")
      ComboBoxGadget(#G_CB_Order_Event, 5, 20, 250, 20)
      AddGadgetItem(#G_CB_Order_Event, -1, "")
      AddGadgetItem(#G_CB_Order_Event, -1, "Wiedergabe beendet")
      AddGadgetItem(#G_CB_Order_Event, -1, "Bildschirmschoner")
      SetGadgetState(#G_CB_Order_Event, 0)
      TextGadget(#G_TX_Order_Order, 5, 45, 250, 15, "Aufgabe")
      ComboBoxGadget(#G_CB_Order_Order, 5, 60, 250, 20)
      AddGadgetItem(#G_CB_Order_Order, -1, "")
      AddGadgetItem(#G_CB_Order_Order, -1, "Program beenden")
      AddGadgetItem(#G_CB_Order_Order, -1, "Computer herunterfahren")
      AddGadgetItem(#G_CB_Order_Order, -1, "Computer abmelden")
      SetGadgetState(#G_CB_Order_Order, 0)
      ButtonGadget(#G_BN_Order_Close, 85, 100, 80, 25, "OK")
      ButtonGadget(#G_BN_Order_Cancel, 170, 100, 80, 25, "Abbrechen")

      If WinSize(#Win_Order)\posx = -1 And WinSize(#Win_Order)\posy = -1
        Window_CenterOnWindow(#Win_Order, #Win_Main)
      Else
        ResizeWindow(#Win_Order, WinSize(#Win_Order)\posx, WinSize(#Win_Order)\posy, #PB_Ignore, #PB_Ignore)
      EndIf
      Window_CheckPos(#Win_Order)
      If Pref\opacity > 0
        Window_SetLayeredStyle(#Win_Order, 1)
        Window_SetOpacity(#Win_Order, Pref\opacityval)
      EndIf
      Window_SetIcon(#Win_Order, ImageList(#ImageList_Watch))
      lWinID_Order = WindowID(#Win_Order)
      WndEx_AddWindow(#Win_Order, #WndEx_Magnetic_Desktop|#WndEx_Magnetic_Window)
      HideWindow(#Win_Order, 0)
    Else
      MsgBox_Error("Fenster 'Order' konnte nicht erstellt werden")
    EndIf
  EndIf
EndProcedure

Procedure CloseWindow_Order()
  If IsWindow(#Win_Order)
    WinSize(#Win_Order)\posx = WindowX(#Win_Order) : WinSize(#Win_Order)\posy = WindowY(#Win_Order)
    lWinID_Order = 0
    WndEx_RemoveWindow(#Win_Order)
    CloseWindow(#Win_Order)
  EndIf
EndProcedure

Procedure CloseAllWindows()
  CloseWindow_Preferences()
  CloseWindow_Log()
  CloseWindow_MediaLibScan()
  CloseWindow_TitleInfo()
  CloseWindow_Shoutcast()
  CloseWindow_Search()
  CloseWindow_RndPlaylist()
  CloseWindow_MLSearchOptions()
  CloseWindow_Info()
  CloseWindow_Order()
EndProcedure

Procedure HideAllWindow()
  Protected iNext.i

  For iNext = #Win_Main To #Win_Last - 1
    If IsWindow(iNext)
      DisableWindow(iNext, 1)
      HideWindow(iNext, 1)
    EndIf
  Next

EndProcedure

Procedure ShowAllWindow()
  Protected iNext.i

  For iNext = #Win_Main To #Win_Last - 1
    If IsWindow(iNext) > 0
      Window_CheckPos(iNext)
      HideWindow(iNext, 0)
      DisableWindow(iNext, 0)
    EndIf
  Next

EndProcedure

;Zeigt Fenster an oder blendet es aus
Procedure SysTray_LeftClick()
  If IsWindowVisible_(lWinID_Main)
    HideAllWindow()
    SetMenuItemText(#Menu_SysTray, #Mnu_SysTray_Show, "Zeigen")
  Else
    ShowAllWindow()
    SetMenuItemText(#Menu_SysTray, #Mnu_SysTray_Show, "Verstecken")
    SetForegroundWindow_(lWinID_Main)
  EndIf
EndProcedure

Procedure Window_ResizeGadgets(Window)
  ;CheckWindow
  If IsWindow(Window) = 0 And IsWindow_(Window) = 0
    ProcedureReturn -1
  EndIf

  ;Resize..
  Select Window
    ;///////////////////
    ; Window Main
    Case -1, #Win_Main, lWinID_Main
      ;Main
      ResizeGadget(#G_CN_Main_IA_Background, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_Main), #PB_Ignore)
      ResizeGadget(#G_TX_Main_IA_TitleC, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_Main) - 275, #PB_Ignore)
      ResizeGadget(#G_TX_Main_IA_ArtistC, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_Main) - 275, #PB_Ignore)
      ResizeGadget(#G_TX_Main_IA_AlbumC, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_Main) - 275, #PB_Ignore)
      ResizeGadget(#G_TX_Main_IA_GenreC, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_Main) - 275, #PB_Ignore)
      ResizeGadget(#G_TX_Main_IA_LengthC, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_Main) - 275, #PB_Ignore)
      ResizeGadget(#G_IG_Main_IA_PrgLogo, WindowWidth(#Win_Main) - 60, #PB_Ignore, #PB_Ignore, #PB_Ignore)
      SetGadgetState(#G_IG_Main_IA_PrgLogo, lImgInfologo)
      ResizeGadget(#G_IG_Main_IA_Spectrum, WindowWidth(#Win_Main) - 210, #PB_Ignore, #PB_Ignore, #PB_Ignore)
      SetGadgetState(#G_IG_Main_IA_Spectrum, ImageID(lImgSpectrum))
      ResizeGadget(#G_FR_Main_IA_Gap, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_Main) + 10, #PB_Ignore)
      ResizeGadget(#G_TB_Main_IA_Position, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_Main), #PB_Ignore)
      ;Playlist
      ResizeGadget(#G_LI_Main_PL_PlayList, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_Main) - 4, WindowHeight(#Win_Main) - GadgetHeight(#G_CN_Main_IA_Background) - GadgetHeight(#G_FR_Main_IA_Gap) - GadgetHeight(#G_TB_Main_IA_Position) - 2 - GadgetHeight(#G_CN_Main_IA_ToolbarLeft) - 5 - GadgetHeight(#G_TX_Main_PL_Playlist) - 4)
      ResizeGadget(#G_TX_Main_PL_Playlist, #PB_Ignore, WindowHeight(#Win_Main) - 15, WindowWidth(#Win_Main) - 4, #PB_Ignore)
      ;MediaLibary
      ResizeGadget(#G_SR_Main_ML_Search, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_Main) - 148, 20)
      ResizeGadget(#G_BN_Main_ML_Search, WindowWidth(#Win_Main) - 144, #PB_Ignore, #PB_Ignore, #PB_Ignore)
      ResizeGadget(#G_BN_Main_ML_SearchOptions, WindowWidth(#Win_Main) - 87, #PB_Ignore, #PB_Ignore, #PB_Ignore)
      ResizeGadget(#G_SP_Main_ML_Horizontal, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_Main) - 4, WindowHeight(#Win_Main) - GadgetHeight(#G_CN_Main_IA_Background) - GadgetHeight(#G_FR_Main_IA_Gap) - GadgetHeight(#G_TB_Main_IA_Position) - 2 - GadgetHeight(#G_CN_Main_IA_ToolbarLeft) - 5 - GadgetHeight(#G_SR_Main_ML_Search) - GadgetHeight(#G_TX_Main_ML_Status) - 6)
      ResizeGadget(#G_TX_Main_ML_Status, #PB_Ignore, WindowHeight(#Win_Main) - 15, WindowWidth(#Win_Main) - 210, #PB_Ignore)
      ResizeGadget(#G_PB_Main_ML_Status, WindowWidth(#Win_Main) - 200, WindowHeight(#Win_Main) - 15, 198, 13)

      ;///////////////////
      ; Window Shoutcast
    Case -1, #Win_InternetStream, lWinID_InternetStream
      ResizeGadget(#G_SR_InternetStream_URL, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_InternetStream) - 65, #PB_Ignore)
      ResizeGadget(#G_BN_InternetStream_Connect, WindowWidth(#Win_InternetStream) - 55, #PB_Ignore, #PB_Ignore, #PB_Ignore)
      ResizeGadget(#G_LI_InternetStream_Server, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_InternetStream) - 10, WindowHeight(#Win_InternetStream) - GadgetHeight(#G_SR_InternetStream_URL) - GadgetHeight(#G_BN_InternetStream_ServerSave) - 20)

      ;///////////////////
      ; Window Log
    Case -1, #Win_Log , lWinID_Log
      ResizeGadget(#G_LV_Log_Loging, #PB_Ignore, #PB_Ignore, WindowWidth(#Win_Log), WindowHeight(#Win_Log) - 26)
      If CountGadgetItems(#G_LV_Log_Loging) > 0
        SetGadgetState(#G_LV_Log_Loging, CountGadgetItems(#G_LV_Log_Loging) - 1)
      EndIf

  EndSelect
EndProcedure

Procedure ChangeCursor(Gadget, Cursor)
  Protected CP.POINT, GR.RECT

  GetCursorPos_(@CP)
  GetWindowRect_(GadgetID(Gadget), GR)
  If PtInRect_(@GR, CP\X | (CP\Y << 32))
    SetCursor_(lCursor_Hand)
  EndIf
EndProcedure

Procedure WindowCallback(hWnd, Msg, wParam, lParam)
  Protected Result.i = #PB_ProcessPureBasicEvents
  Protected WorkR.RECT, *WinR.WINDOWPOS = lParam
  Protected sOpenFile.s, lBytesRead.i

  If Pref\magnetic > 0
    WndEx_Callback(hWnd, Msg, wParam, lParam)
  EndIf

  Select hWnd
    Case lWinID_Main , lWinID_InternetStream , lWinID_TitleInfo , lWinID_Search , lWinID_MLScan , lWinID_Log , lWinID_RndPlaylist , lWinID_MLSearchO , iWinID_Preferences , lWinID_Info , lWinID_Order
      Select Msg

        Case #WM_User_Msg_Init
          lSenderHandle = OpenProcess_(#PROCESS_VM_READ, 0, lParam)
          If lSenderHandle <> 0
            Result = 1
          Else
            Result = 0
          EndIf

        Case #WM_User_Msg_Receive
          sOpenFile = Space(lParam)
          If ReadProcessMemory_(lSenderHandle, wParam, @sOpenFile, lParam, @lBytesRead) <> 0
            If lBytesRead <> lParam
              Result = 0
            Else
              ;If PlayMedia(sOpenFile, 1) = #FMOD_OK
              ;  If IsWindowVisible_(lWinID_Main) = 0
              ;    SysTray_LeftClick()
              ;  EndIf
              ;EndIf
              ;Result = 1
            EndIf
          Else
            Result = 0
          EndIf

        Case #WM_SYSCOMMAND
          If hWnd = lWinID_Main And wParam = #SC_MINIMIZE
            SysTray_LeftClick()
            Result = 0
          EndIf

        Case #WM_LBUTTONDOWN
          ReleaseCapture_()
          SendMessage_(hWnd, #WM_NCLBUTTONDOWN, #HTCAPTION, #Null)

          If hWnd = lWinID_Main
            SetFocus_(lWinID_Main)
          EndIf

        Case #WM_SIZE
          Window_ResizeGadgets(hWnd)

        Case #WM_NOTIFY
          ;CustomDraw ListIconGadget
          Protected *LVCDHeader.NMLVCUSTOMDRAW = lParam

          If *LVCDHeader\nmcd\hdr\hWndFrom = iLI_MediaLib Or *LVCDHeader\nmcd\hdr\hWndFrom = iLI_InternetStream Or *LVCDHeader\nmcd\hdr\hWndFrom = iLI_Plugins
            If *LVCDHeader\nmcd\hdr\code = #NM_CUSTOMDRAW
              Select *LVCDHeader\nmcd\dwDrawStage
                Case #CDDS_PREPAINT
                  Result = #CDRF_NOTIFYITEMDRAW
                Case #CDDS_ITEMPREPAINT
                  Protected Row.l = *LVCDHeader\nmcd\dwItemSpec
                  If Row % 2 = 0 ;(Row/2) * 2 = Row
                    *LVCDHeader\clrText   = GetSysColor_(#COLOR_WINDOWTEXT)
                    *LVCDHeader\clrTextBk = GetSysColor_(#COLOR_WINDOW)
                  Else
                    *LVCDHeader\clrText   = GetSysColor_(#COLOR_WINDOWTEXT)
                    *LVCDHeader\clrTextBk = ColorBright(GetSysColor_(#COLOR_WINDOW), -15)
                  EndIf
                  Result = #CDRF_DODEFAULT
              EndSelect
            EndIf
          EndIf

          ;ListIconGadget ColumnRClick (PopUp Menu)
          Protected HDH.HD_HITTESTINFO
          Protected *NMHR.NMHEADER = lParam

          If *NMHR > 0
            Select *NMHR\hdr\code
              Case #NM_RCLICK
                If *NMHR\hdr\hwndFrom = SendMessage_(GadgetID(#G_LI_Main_PL_PlayList), #LVM_GETHEADER, #Null, #Null) Or *NMHR\hdr\hwndFrom = SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #LVM_GETHEADER, #Null, #Null)
                  GetCursorPos_(@HDH\pt)
                  ScreenToClient_(*NMHR\hdr\hwndFrom, @HDH\pt)
                  SendMessage_(*NMHR\hdr\hwndFrom, #HDM_HITTEST, 0, @HDH)
                  iLastHeaderRClick = *NMHR\hdr\hwndFrom
                  iLastHeaderRClickIndex = HDH\iItem
                  DisplayPopupMenu(#Menu_ListIconGadget, WindowID(#Win_Main), DesktopMouseX(), DesktopMouseY())
                EndIf
              Case #HDN_ITEMCHANGING
                If *NMHR\hdr\hwndFrom = SendMessage_(GadgetID(#G_LI_Main_PL_PlayList), #LVM_GETHEADER, #Null, #Null) Or *NMHR\hdr\hwndFrom = SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #LVM_GETHEADER, #Null, #Null)
                  If *NMHR\iItem = 0 : Result = 1 : EndIf
                EndIf
            EndSelect
          EndIf

      EndSelect
  EndSelect

  ProcedureReturn Result
EndProcedure

;FMOD Callback: Wird aufgerufen sobald die Wiedergabe von einer Datei beendet ist.
Procedure ChannelCallback(channel, type, userdata1, userdata2)
;   Protected iNext.i
; 
;   If type = #FMOD_CHANNEL_CALLBACKTYPE_END
; 
;     ;/////////////////////////////////
;     ;Set MediaLibInfos
;     If Left(LCase(CurrPlay\path), 7) <> "http://"
; 
;       ForEach MediaLibary()
;         If LCase(Trim(CurrPlay\path)) = LCase(Trim(MediaLibary()\path))
; 
;           ;PlayCount
;           If CurrPlay\length = -1
;             MediaLibary()\playcount + 1
;             Pref\playcount_e + 1
;           Else
;             If ((timeGetTime_() - CurrPlay\starttime) * 100) / CurrPlay\length >= Pref\playcountpercent
;               MediaLibary()\playcount + 1
;               Pref\playcount_e + 1
;             EndIf
;           EndIf
; 
;           ;LastPlay
;           MediaLibary()\lastplay  = Date()
; 
;           Save\MediaLibary = 1
;           Break
;         EndIf
;       Next
; 
;     Else
;       Pref\playcount_e + 1
;     EndIf
; 
;     If CurrPlay\starttime > 0
;       Pref\playtime + timeGetTime_() - CurrPlay\starttime
;     EndIf
; 
;     ;/////////////////////////////////
;     ;ResetInterface
;     SetGadgetText(#G_TX_Main_IA_TitleC,    "")
;     SetGadgetText(#G_TX_Main_IA_ArtistC,   "")
;     SetGadgetText(#G_TX_Main_IA_AlbumC,    "")
;     SetGadgetText(#G_TX_Main_IA_GenreC,    "")
;     SetGadgetText(#G_TX_Main_IA_LengthC,   "")
;     SetGadgetState(#G_TB_Main_IA_Position, 0)
;     DisableGadget(#G_TB_Main_IA_Position,  1)
;     SetGadgetState(#G_LI_Main_PL_PlayList, -1)
;     RefreshSpectrum(1)
;     SysTrayIconToolTip(0, #PrgName)
; 
;     CurrPlay\path      = ""
;     CurrPlay\title     = ""
;     CurrPlay\artist    = ""
;     CurrPlay\album     = ""
;     CurrPlay\year      = ""
;     CurrPlay\track     = -1
;     CurrPlay\comment   = ""
;     CurrPlay\genre     = ""
;     CurrPlay\length    = -1
;     CurrPlay\type      = -1
;     CurrPlay\format    = -1
;     CurrPlay\channels  = -1
;     CurrPlay\bits      = -1
;     CurrPlay\bitrate   = -1
;     CurrPlay\frequency = -1
;     CurrPlay\volume    = -1
;     CurrPlay\pan       = -1
;     CurrPlay\priority  = -1
;     CurrPlay\starttime = -1
; 
;     For iNext = 0 To CountGadgetItems(#G_LI_Main_PL_PlayList) - 1
;       If GetGadgetItemColor(#G_LI_Main_PL_PlayList, iNext, #PB_Gadget_BackColor) <> -1
;         SetGadgetItemColor(#G_LI_Main_PL_PlayList, lSelect - 1, #PB_Gadget_BackColor, -1)
;         SetGadgetItemColor(#G_LI_Main_PL_PlayList, lSelect - 1, #PB_Gadget_FrontColor, -1)
;       EndIf
;     Next
; 
;     ;/////////////////////////////////
;     ;PluginSystem
;     If ListSize(Plugin()) > 0
;       ForEach Plugin()
;         If IsLibrary(Plugin()\handle) <> 0
;           If GetFunction(Plugin()\handle, #DLL_FuncStop)
;             CallFunction(Plugin()\handle, #DLL_FuncStop)
;           EndIf
;         EndIf
;       Next
;     EndIf
; 
;     ;/////////////////////////////////
;     ;Close
;     CloseMedia()
; 
;     If iChannelCallback_NextTrack = 0
;       If ListSize(PlayList()) > 0
;         If lSelect <> ListSize(PlayList()) Or GetToolBarButtonState(#Toolbar_Main2, #Mnu_Main_TB2_Random) = 1
;           PlayList_NextTrack()
;         Else
;           If GetToolBarButtonState(#Toolbar_Main2, #Mnu_Main_TB2_Repeat) = 1
;             PlayList_NextTrack()
;           EndIf
;         EndIf
;       EndIf
;     EndIf
; 
;   EndIf
; 
;   ProcedureReturn #FMOD_OK
EndProcedure

Procedure.s CheckSaveString(String$)
  String$ = Trim(String$)
  If FindString(String$, "|", 1) > 0
    String$ = ReplaceString(String$, "|", " ")
  EndIf
  If FindString(String$, #CRLF$, 1) > 0
    String$ = ReplaceString(String$, #CRLF$, " ")
  EndIf
  If FindString(String$, #LFCR$, 1) > 0
    String$ = ReplaceString(String$, #LFCR$, " ")
  EndIf
  If FindString(String$, #CR$, 1) > 0
    String$ = ReplaceString(String$, #CR$, " ")
  EndIf
  If FindString(String$, #LF$, 1) > 0
    String$ = ReplaceString(String$, #LF$, " ")
  EndIf
  ProcedureReturn String$
EndProcedure

;Ermitelt Wiedergabestatus (1, 0)
Procedure.i IsPlaying()

EndProcedure

;Ermitelt Pausestatus (1, 0)
Procedure.i IsPaused()

EndProcedure

;Ermitelt Wiedergabeposition (-1, Pos)
Procedure.i GetPosition()

EndProcedure

Procedure.i GetPaused()

EndProcedure

Procedure.i GetMute()

EndProcedure

Procedure RefreshStatistics()

  Static iTime.i

  If timeGetTime_() - iTime >= 250
    iTime = timeGetTime_()

    If IsGadget(#G_TX_Pref_PlayTimeC)
      If GetGadgetText(#G_TX_Pref_PlayTimeC) <> TimeString(Pref\playtime)
        SetGadgetText(#G_TX_Pref_PlayTimeC, TimeString(Pref\playtime))
      EndIf
    EndIf

    If IsGadget(#G_TX_Pref_PlayedSongs_StartC)
      If GetGadgetText(#G_TX_Pref_PlayedSongs_StartC) <> Str(Pref\playcount_s)
        SetGadgetText(#G_TX_Pref_PlayedSongs_StartC, Str(Pref\playcount_s))
      EndIf
    EndIf

    If IsGadget(#G_TX_Pref_PlayedSongs_EndC)
      If GetGadgetText(#G_TX_Pref_PlayedSongs_EndC) <> Str(Pref\playcount_e)
        SetGadgetText(#G_TX_Pref_PlayedSongs_EndC, Str(Pref\playcount_e))
      EndIf
    EndIf

  EndIf

EndProcedure

;Aktuallisiert Zeitwerte
Procedure RefreshTimes()

  ;Pos
  If lPosChange = 0
    ;Without Time
    If CurrPlay\length <= 0
      If GetGadgetState(#G_TB_Main_IA_Position) <> 0
        SetGadgetState(#G_TB_Main_IA_Position, 0)
      EndIf
    Else
      ;With Time
      Protected lPercent.f

      lPercent = (GetPosition() * 100) / CurrPlay\length
      lPercent = (lPercent * #PosAccuracy) / 100

      If GetGadgetState(#G_TB_Main_IA_Position) <> lPercent
        SetGadgetState(#G_TB_Main_IA_Position, lPercent)

        ;PluginSystem
        ForEach Plugin()
          If IsLibrary(Plugin()\handle) <> 0
            If GetFunction(Plugin()\handle, #DLL_FuncPause)
              CallFunction(Plugin()\handle, #DLL_FuncPause, GetGadgetState(#G_TB_Main_IA_Position))
            EndIf
          EndIf
        Next

      EndIf

    EndIf
  EndIf

  ;Display Length
  Protected sTimeString.s = Pref\lengthformat

  If CurrPlay\length > 0 And sTimeString <> ""
    sTimeString = ReplaceString(sTimeString, "%ptime", TimeString(GetPosition()), #PB_String_NoCase)
    sTimeString = ReplaceString(sTimeString, "%ltime", TimeString(CurrPlay\length - GetPosition()), #PB_String_NoCase)
    sTimeString = ReplaceString(sTimeString, "%ftime", TimeString(CurrPlay\length), #PB_String_NoCase)
    sTimeString = ReplaceString(sTimeString, "%ppercent", Str(GetPosition() * 100 / CurrPlay\length) + "%", #PB_String_NoCase)
    sTimeString = ReplaceString(sTimeString, "%lpercent", Str(100 - (GetPosition() * 100 / CurrPlay\length)) + "%", #PB_String_NoCase)
  Else
    sTimeString = TimeString(GetPosition())
  EndIf

  If sTimeString <> GetGadgetText(#G_TX_Main_IA_LengthC)
    SetGadgetText(#G_TX_Main_IA_LengthC, sTimeString)
    SysTrayIconToolTip(0, CurrPlay\title + " - " + sTimeString)
  EndIf

EndProcedure

;Aktuallisiert das Spectrum
Procedure RefreshSpectrum(IgnoreTime = 0)
  Static lTime.i
  Protected iNext.i, lHeightL.f, lHeightR.f, lHeight.f, lNext2.i, fMaxValueL.f, fMaxValueR.f

  If timeGetTime_() - lTime >= 35 Or IgnoreTime > 0
    lTime = timeGetTime_()

    ;Receive
    If IsPlaying() = 1 And IsPaused() = 0
      ;lFMOD_Result = FMOD_Channel_GetSpectrum(lFMOD_Channel, @Fmod_SpectrumL(), 128, 0, #FMOD_DSP_FFT_WINDOW_TRIANGLE)
      ;lFMOD_Result = FMOD_Channel_GetSpectrum(lFMOD_Channel, @Fmod_SpectrumR(), 128, 1, #FMOD_DSP_FFT_WINDOW_TRIANGLE)
    EndIf

    If IsPlaying() = 0 Or IsPaused() = 1
      For iNext = 0 To 64
        Fmod_SpectrumL(iNext) = 0
        Fmod_SpectrumR(iNext) = 0
      Next
    EndIf

    ;Normalize
    If IsPlaying() = 1 And IsPaused() = 0
      ;Find MaxValue
      For iNext = 0 To 64
        If Fmod_SpectrumL(iNext) > fMaxValueL
          fMaxValueL = Fmod_SpectrumL(iNext)
        EndIf
        If Fmod_SpectrumR(iNext) > fMaxValueR
          fMaxValueR = Fmod_SpectrumR(iNext)
        EndIf
      Next
      ;Calc
      For iNext = 0 To 64
        Fmod_SpectrumL(iNext) = Fmod_SpectrumL(iNext) / fMaxValueL
        Fmod_SpectrumR(iNext) = Fmod_SpectrumR(iNext) / fMaxValueR
      Next
    EndIf

    If StartDrawing(ImageOutput(lImgSpectrum))
      Box(0, 0, 128, 50, Pref\color_ti_bg)

      For iNext = 0 To 64
        Select lFMOD_SpectrumMode

          Case 0
            ;Calc
            lHeight = ((FMOD_SpectrumL(iNext) + FMOD_SpectrumR(iNext)) / 2) * 50
            ;Display
            If lHeight > 0
              Box(iNext * 2, 50 - lHeight, 2, lHeight, Pref\color_ti_tx)
            Else
              Box(iNext * 2, 49, 2, 1, Pref\color_ti_bg)
            EndIf

          Case 1
            ;Calc
            lHeightL = Fmod_SpectrumL(iNext) * 25
            lHeightR = Fmod_SpectrumR(iNext) * 25
            ;Display
            If lHeightL > 0
              Box(iNext * 2, 25 - lHeightL, 2, lHeightL, Pref\color_ti_tx)
            EndIf
            If lHeightR > 0
              Box(iNext * 2, 25, 2, lHeightR, Pref\color_ti_tx)
            EndIf
            If (lHeightL + lHeightR) = 0
              Box(iNext * 2, 25, 2, 1, Pref\color_ti_tx)
            EndIf

          Case 2
            ;Calc
            If iNext%4 = 0 And iNext < 61
              For lNext2 = 0 To 4
                lHeight = ((FMOD_SpectrumL(iNext + lNext2) + FMOD_SpectrumR(iNext + lNext2)) / 2) * 50
              Next lNext2
              ;Display
              If lHeight < 1
                lHeight = 1
              EndIf
              Box(iNext * 2, 50 - lHeight, 7, lHeight, Pref\color_ti_tx)
            EndIf

        EndSelect
      Next

      StopDrawing()

      SetGadgetState(#G_IG_Main_IA_Spectrum, ImageID(lImgSpectrum))
    EndIf

  EndIf
EndProcedure

Procedure Window_ChangeOpacity()
  Protected iNext.i

  If Pref\opacity > 0
    For iNext = #Win_Main To #Win_Last - 1
      If IsWindow(iNext)
        Window_SetLayeredStyle(iNext, 1)
        Window_SetOpacity(iNext, Pref\opacityval)
      EndIf
    Next
  Else
    For iNext = #Win_Main To #Win_Last - 1
      If IsWindow(iNext)
        Window_SetOpacity(iNext, 255)
        Window_SetLayeredStyle(iNext, 0)
      EndIf
    Next
  EndIf
EndProcedure

;GUI - ändert die Farbwerte der Gadgets
Procedure Window_ChangeColor()
  ;InfoArea
  SetGadgetColor(#G_TX_Main_IA_Title, #PB_Gadget_FrontColor, Pref\color_ti_tx)
  SetGadgetColor(#G_TX_Main_IA_Title, #PB_Gadget_BackColor, Pref\color_ti_bg)
  SetGadgetColor(#G_TX_Main_IA_TitleC, #PB_Gadget_FrontColor, Pref\color_ti_tx)
  SetGadgetColor(#G_TX_Main_IA_TitleC, #PB_Gadget_BackColor, Pref\color_ti_bg)
  SetGadgetColor(#G_TX_Main_IA_Artist, #PB_Gadget_FrontColor, Pref\color_ti_tx)
  SetGadgetColor(#G_TX_Main_IA_Artist, #PB_Gadget_BackColor, Pref\color_ti_bg)
  SetGadgetColor(#G_TX_Main_IA_ArtistC, #PB_Gadget_FrontColor, Pref\color_ti_tx)
  SetGadgetColor(#G_TX_Main_IA_ArtistC, #PB_Gadget_BackColor, Pref\color_ti_bg)
  SetGadgetColor(#G_TX_Main_IA_Album, #PB_Gadget_FrontColor, Pref\color_ti_tx)
  SetGadgetColor(#G_TX_Main_IA_Album, #PB_Gadget_BackColor, Pref\color_ti_bg)
  SetGadgetColor(#G_TX_Main_IA_AlbumC, #PB_Gadget_FrontColor, Pref\color_ti_tx)
  SetGadgetColor(#G_TX_Main_IA_AlbumC, #PB_Gadget_BackColor, Pref\color_ti_bg)
  SetGadgetColor(#G_TX_Main_IA_Genre, #PB_Gadget_FrontColor, Pref\color_ti_tx)
  SetGadgetColor(#G_TX_Main_IA_Genre, #PB_Gadget_BackColor, Pref\color_ti_bg)
  SetGadgetColor(#G_TX_Main_IA_GenreC, #PB_Gadget_FrontColor, Pref\color_ti_tx)
  SetGadgetColor(#G_TX_Main_IA_GenreC, #PB_Gadget_BackColor, Pref\color_ti_bg)
  SetGadgetColor(#G_TX_Main_IA_Length, #PB_Gadget_FrontColor, Pref\color_ti_tx)
  SetGadgetColor(#G_TX_Main_IA_Length, #PB_Gadget_BackColor, Pref\color_ti_bg)
  SetGadgetColor(#G_TX_Main_IA_LengthC, #PB_Gadget_FrontColor, Pref\color_ti_tx)
  SetGadgetColor(#G_TX_Main_IA_LengthC, #PB_Gadget_BackColor, Pref\color_ti_bg)
  SetGadgetColor(#G_CN_Main_IA_Background, #PB_Gadget_BackColor, Pref\color_ti_bg)
  If lSelect > 0
    SetGadgetItemColor(#G_LI_Main_PL_PlayList, lSelect - 1, #PB_Gadget_BackColor, Pref\color_sel_bg)
    SetGadgetItemColor(#G_LI_Main_PL_PlayList, lSelect - 1, #PB_Gadget_FrontColor, Pref\color_sel_tx)
  EndIf
  RefreshSpectrum(1)
EndProcedure

;GUI - wechselt denn aktuell angezeigten Bereich, Playlist usw
Procedure Window_ChangeSize(NewSizeType)
  Protected iNext.i

  ;Close CurrArea
  Select iSizeTypeOld

    Case #SizeType_Normal
      If iSizeTypeOld = #SizeType_Normal
        iWinW_Main_Normal = WindowWidth(#Win_Main)
      EndIf

    Case #SizeType_Playlist
      If iSizeTypeOld = #SizeType_Playlist
        iWinW_Main_Second = WindowWidth(#Win_Main)
        iWinH_Main_Second = WindowHeight(#Win_Main)
        HideGadget(#G_TX_Main_PL_Playlist, 1)
        HideGadget(#G_LI_Main_PL_PlayList, 1)
        If NewSizeType = #SizeType_Playlist
          NewSizeType = #SizeType_Normal
        EndIf
      EndIf

    Case #SizeType_MediaLibary
      If iSizeTypeOld = #SizeType_MediaLibary
        iWinW_Main_Second = WindowWidth(#Win_Main)
        iWinH_Main_Second = WindowHeight(#Win_Main)
        lMediaLib_SPSize1 = GetGadgetState(#G_SP_Main_ML_Vertical)
        lMediaLib_SPSize2 = GetGadgetState(#G_SP_Main_ML_Horizontal)
        For iNext = #G_SR_Main_ML_Search To #G_PB_Main_ML_Status
          HideGadget(iNext, 1)
        Next
        If NewSizeType = #SizeType_MediaLibary
          NewSizeType = #SizeType_Normal
        EndIf
      EndIf

  EndSelect

  ;Show NewArea
  Select NewSizeType

    Case #SizeType_Normal
      WindowBounds(#Win_Main, 0, 0, #PB_Ignore, #PB_Ignore)
      Window_ResizeGadgets(#Win_Main)

      If iWinW_Main_Normal > 0
        ResizeWindow(#Win_Main, #PB_Ignore, #PB_Ignore, iWinW_Main_Normal, GadgetHeight(#G_CN_Main_IA_Background) + GadgetHeight(#G_FR_Main_IA_Gap) + GadgetHeight(#G_TB_Main_IA_Position) + 2 + GadgetHeight(#G_CN_Main_IA_ToolbarLeft) + 2)
      Else
        ResizeWindow(#Win_Main, #PB_Ignore, #PB_Ignore, 2 + GadgetWidth(#G_CN_Main_IA_ToolbarLeft) + GadgetWidth(#G_TB_Main_IA_Volume) + GadgetWidth(#G_CN_Main_IA_ToolbarRight) + 2, GadgetHeight(#G_CN_Main_IA_Background) + GadgetHeight(#G_FR_Main_IA_Gap) + GadgetHeight(#G_TB_Main_IA_Position) + 2 + GadgetHeight(#G_CN_Main_IA_ToolbarLeft) + 2)
      EndIf

      WindowBounds(#Win_Main, iWinW_Main_NormalMin, Window_GetHeight(#Win_Main), GetSystemMetrics_(#SM_CXSCREEN), Window_GetHeight(#Win_Main))

    Case #SizeType_Playlist
      WindowBounds(#Win_Main, iWinW_Main_SecondMin, iWinH_Main_SecondMin, GetSystemMetrics_(#SM_CXSCREEN), GetSystemMetrics_(#SM_CYSCREEN))
      ResizeWindow(#Win_Main, #PB_Ignore, #PB_Ignore, iWinW_Main_Second, iWinH_Main_Second)
      Window_ResizeGadgets(#Win_Main)
      HideGadget(#G_TX_Main_PL_Playlist, 0)
      HideGadget(#G_LI_Main_PL_PlayList, 0)

    Case #SizeType_MediaLibary
      WindowBounds(#Win_Main, iWinW_Main_SecondMin, iWinH_Main_SecondMin, GetSystemMetrics_(#SM_CXSCREEN), GetSystemMetrics_(#SM_CYSCREEN))
      ResizeWindow(#Win_Main, #PB_Ignore, #PB_Ignore, iWinW_Main_Second, iWinH_Main_Second)
      Window_ResizeGadgets(#Win_Main)
      SetGadgetText(#G_SR_Main_ML_Search, "")
      DisableGadget(#G_BN_Main_ML_Search, 1)
      MediaLib_RefreshHeader()
      MediaLib_RefreshStatusText()
      SetGadgetState(#G_SP_Main_ML_Vertical,   lMediaLib_SPSize1)
      SetGadgetState(#G_SP_Main_ML_Horizontal, lMediaLib_SPSize2)
      For iNext = #G_SR_Main_ML_Search To #G_PB_Main_ML_Status
        HideGadget(iNext, 0)
      Next

  EndSelect

  iSizeTypeOld = NewSizeType
  Window_CheckPos(#Win_Main)
EndProcedure

;Verändert die Lautstärke
Procedure.i SetVolume()

EndProcedure

;Verändert die Ausrichtung
Procedure.i SetPanel()

EndProcedure

;Verändert die Position
Procedure SetPos()

EndProcedure

;Verändert die abspielgeschwindigkeit
Procedure SetSpeed()

EndProcedure

;Aktuallisiert Equilizerwerte
Procedure SetEquilizer(Panel)

  ;  For lNext = #G_TB_Main_SO_EQ00070 To #G_TB_Main_SO_EQ16000
  ;   If Panel = lNext Or Panel = -1
  ;    Protected fValue.f
  ;
  ;    If GetGadgetState(lNext) = 20
  ;     fValue = 1
  ;    Else
  ;     fValue = GetGadgetState(lNext) * 0.05000000074506
  ;    EndIf
  ;
  ;    GadgetToolTip(lNext, Str(GetGadgetState(lNext) * 100 / 40))
  ;
  ;    If lFMOD_System > 0
  ;     lFMOD_Result = FMOD_DSP_SetParameter(Equilizer(lNext - #G_TB_Main_SO_EQ00070), 2, fValue)
  ;     AddLogEntry("FMOD_DSP_SetParameter(EQ " + Str(lNext - #G_TB_Main_SO_EQ00070) + "): " + FMOD_ErrorString(lFMOD_Result))
  ;    EndIf
  ;
  ;   EndIf
  ;  Next

EndProcedure

Procedure SetEquilizerDefine()
  ;  Protected lSel.i
  ;
  ;  lSel = GetGadgetState(#G_CB_Main_SO_Equilizer)
  ;  If lSel <= 0: lSel = 0: EndIf
  ;
  ;  If ListSize(PreDefEQ()) >= lSel
  ;   SelectElement(PreDefEQ(), lSel)
  ;   SetGadgetState(#G_TB_Main_SO_EQ00070, PreDefEQ()\values[0])
  ;   SetGadgetState(#G_TB_Main_SO_EQ00180, PreDefEQ()\values[1])
  ;   SetGadgetState(#G_TB_Main_SO_EQ00320, PreDefEQ()\values[2])
  ;   SetGadgetState(#G_TB_Main_SO_EQ00600, PreDefEQ()\values[3])
  ;   SetGadgetState(#G_TB_Main_SO_EQ01000, PreDefEQ()\values[4])
  ;   SetGadgetState(#G_TB_Main_SO_EQ03000, PreDefEQ()\values[5])
  ;   SetGadgetState(#G_TB_Main_SO_EQ06000, PreDefEQ()\values[6])
  ;   SetGadgetState(#G_TB_Main_SO_EQ12000, PreDefEQ()\values[7])
  ;   SetGadgetState(#G_TB_Main_SO_EQ14000, PreDefEQ()\values[8])
  ;   SetGadgetState(#G_TB_Main_SO_EQ16000, PreDefEQ()\values[9])
  ;
  ;   SetEquilizer(-1)
  ;  EndIf
EndProcedure

;Hält die Wiedergabe an
Procedure SetPause(Bool)

EndProcedure

;Startet die Wiedergabe
Procedure SetPlay()

EndProcedure

;Stopt die Wiedergabe
Procedure.i SetStop()

EndProcedure

;Aktiviert/Deaktiviert Equilizer
Procedure EnableEquilizer()
  ;  Protected Bool.i, lActive.i
  ;
  ;  Bool = GetGadgetState(#G_CH_Main_SO_Equilizer)
  ;  If Bool >= 1
  ;
  ;   ;Enabled
  ;   For lNext = #G_TB_Main_SO_EQ00070 To #G_TB_Main_SO_EQ16000
  ;
  ;    If lFMOD_System > 0
  ;     lFMOD_Result = FMOD_System_AddDSP(lFMOD_System, Equilizer(lNext - #G_TB_Main_SO_EQ00070), 0)
  ;     AddLogEntry("FMOD_System_AddDSP(EQ " + Str(lNext - #G_TB_Main_SO_EQ00070) + "): " + FMOD_ErrorString(lFMOD_Result))
  ;    Else
  ;     lFMOD_Result = #FMOD_OK
  ;    EndIf
  ;
  ;    If lFMOD_Result = #FMOD_OK
  ;     Select lNext
  ;      Case 0: lTemp = 70
  ;      Case 1: lTemp = 180
  ;      Case 2: lTemp = 320
  ;      Case 3: lTemp = 600
  ;      Case 4: lTemp = 1000
  ;      Case 5: lTemp = 3000
  ;      Case 6: lTemp = 6000
  ;      Case 7: lTemp = 12000
  ;      Case 8: lTemp = 14000
  ;      Case 9: lTemp = 16000
  ;     EndSelect
  ;
  ;     If lFMOD_System > 0
  ;      lFMOD_Result = FMOD_DSP_SetParameter(Equilizer(lNext - #G_TB_Main_SO_EQ00070), 0, lTemp)
  ;      AddLogEntry("FMOD_DSP_SetParameter(EQ " + Str(lNext - #G_TB_Main_SO_EQ00070) + "): " + FMOD_ErrorString(lFMOD_Result))
  ;     Else
  ;      lFMOD_Result = #FMOD_OK
  ;     EndIf
  ;     If lFMOD_Result <> #FMOD_OK
  ;      MsgBox_Error("Equilizer konnte nicht initialisiert werden")
  ;      Bool = 0
  ;     EndIf
  ;
  ;     DisableGadget(lNext, 0)
  ;
  ;    Else
  ;     MsgBox_Error("Fehler beim einrichten des Equiliserpanels " + Str(lNext - #G_TB_Main_SO_EQ00070))
  ;     Bool = 0
  ;    EndIf
  ;
  ;   Next
  ;
  ;   DisableGadget(#G_CB_Main_SO_Equilizer, 0)
  ;
  ;
  ;  Else
  ;
  ;   ;Disabled
  ;   For lNext = #G_TB_Main_SO_EQ00070 To #G_TB_Main_SO_EQ16000
  ;
  ;    If lFMOD_System > 0
  ;     lFMOD_Result = FMOD_DSP_GetActive(Equilizer(lNext - #G_TB_Main_SO_EQ00070), @lActive)
  ;     AddLogEntry("FMOD_DSP_GetActive(EQ " + Str(lNext - #G_TB_Main_SO_EQ00070) + "): " + FMOD_ErrorString(lFMOD_Result))
  ;     If lFMOD_Result = #FMOD_OK
  ;      If lActive
  ;       lFMOD_Result = FMOD_DSP_Remove(Equilizer(lNext - #G_TB_Main_SO_EQ00070))
  ;       AddLogEntry("FMOD_DSP_Remove(EQ " + Str(lNext - #G_TB_Main_SO_EQ00070) + "): " + FMOD_ErrorString(lFMOD_Result))
  ;      EndIf
  ;     EndIf
  ;    EndIf
  ;
  ;    DisableGadget(lNext, 1)
  ;
  ;   Next
  ;
  ;   DisableGadget(#G_CB_Main_SO_Equilizer, 1)
  ;   SetGadgetState(#G_CH_Main_SO_Equilizer, 0)
  ;
  ;  EndIf
EndProcedure

;Verändert Effekte
Procedure ChangeEffects(Type, State)
  ;
  ;  If lFMOD_System > 0
  ;
  ;   Protected lActive.i
  ;
  ;   Select Type
  ;    ;HighPass
  ;    Case #G_CH_Main_SO_HPass
  ;     If State > 0
  ;      lFMOD_Result = FMOD_System_AddDSP(lFMOD_System, lFMOD_EffHPass, 0)
  ;      AddLogEntry("FMOD_System_AddDSP(lFMOD_EffHPass): " + FMOD_ErrorString(lFMOD_Result))
  ;      If lFMOD_Result <> #FMOD_OK : SetGadgetState(#G_CH_Main_SO_HPass, 0) : EndIf
  ;     Else
  ;      lFMOD_Result = FMOD_DSP_Remove(lFMOD_EffHPass)
  ;      AddLogEntry("FMOD_DSP_Remove(lFMOD_EffHPass): " + FMOD_ErrorString(lFMOD_Result))
  ;      If lFMOD_Result <> #FMOD_OK : SetGadgetState(#G_CH_Main_SO_HPass, 1) : EndIf
  ;     EndIf
  ;    ;LowPass
  ;    Case #G_CH_Main_SO_LPass
  ;     If State > 0
  ;      lFMOD_Result = FMOD_System_AddDSP(lFMOD_System, lFMOD_EffLPass, 0)
  ;      AddLogEntry("FMOD_System_AddDSP(lFMOD_EffLPass): " + FMOD_ErrorString(lFMOD_Result))
  ;      If lFMOD_Result <> #FMOD_OK : SetGadgetState(#G_CH_Main_SO_LPass, 0) : EndIf
  ;     Else
  ;      lFMOD_Result = FMOD_DSP_Remove(lFMOD_EffLPass)
  ;      AddLogEntry("FMOD_DSP_Remove(lFMOD_EffLPass): " + FMOD_ErrorString(lFMOD_Result))
  ;      If lFMOD_Result <> #FMOD_OK : SetGadgetState(#G_CH_Main_SO_LPass, 1) : EndIf
  ;     EndIf
  ;    ;Echo
  ;    Case #G_CH_Main_SO_Echo
  ;     If State > 0
  ;      lFMOD_Result = FMOD_System_AddDSP(lFMOD_System, lFMOD_EffEcho, 0)
  ;      AddLogEntry("FMOD_System_AddDSP(lFMOD_EffEcho): " + FMOD_ErrorString(lFMOD_Result))
  ;      If lFMOD_Result <> #FMOD_OK : SetGadgetState(#G_CH_Main_SO_Echo, 0) : EndIf
  ;     Else
  ;      lFMOD_Result = FMOD_DSP_Remove(lFMOD_EffEcho)
  ;      AddLogEntry("FMOD_DSP_Remove(lFMOD_EffEcho): " + FMOD_ErrorString(lFMOD_Result))
  ;      If lFMOD_Result <> #FMOD_OK : SetGadgetState(#G_CH_Main_SO_Echo, 1) : EndIf
  ;     EndIf
  ;    ;Flange
  ;    Case #G_CH_Main_SO_Flange
  ;     If State > 0
  ;      lFMOD_Result = FMOD_System_AddDSP(lFMOD_System, lFMOD_EffFlange, 0)
  ;      AddLogEntry("FMOD_System_AddDSP(lFMOD_EffFlange): " + FMOD_ErrorString(lFMOD_Result))
  ;      If lFMOD_Result <> #FMOD_OK : SetGadgetState(#G_CH_Main_SO_Flange, 0) : EndIf
  ;     Else
  ;      lFMOD_Result = FMOD_DSP_Remove(lFMOD_EffFlange)
  ;      AddLogEntry("FMOD_DSP_Remove(lFMOD_EffFlange): " + FMOD_ErrorString(lFMOD_Result))
  ;      If lFMOD_Result <> #FMOD_OK : SetGadgetState(#G_CH_Main_SO_Flange, 1) : EndIf
  ;     EndIf
  ;    ;Disortion
  ;    Case #G_CH_Main_SO_Distortion
  ;     If State > 0
  ;      lFMOD_Result = FMOD_System_AddDSP(lFMOD_System, lFMOD_EffDistortion, 0)
  ;      AddLogEntry("FMOD_System_AddDSP(lFMOD_EffDisortion): " + FMOD_ErrorString(lFMOD_Result))
  ;      If lFMOD_Result <> #FMOD_OK : SetGadgetState(#G_CH_Main_SO_Distortion, 0) : EndIf
  ;     Else
  ;      lFMOD_Result = FMOD_DSP_Remove(lFMOD_EffDistortion)
  ;      AddLogEntry("FMOD_DSP_Remove(lFMOD_EffDisortion): " + FMOD_ErrorString(lFMOD_Result))
  ;      If lFMOD_Result <> #FMOD_OK : SetGadgetState(#G_CH_Main_SO_Distortion, 1) : EndIf
  ;     EndIf
  ;    ;Chorus
  ;    Case #G_CH_Main_SO_Chorus
  ;     If State > 0
  ;      lFMOD_Result = FMOD_System_AddDSP(lFMOD_System, lFMOD_EffChorus, 0)
  ;      AddLogEntry("FMOD_System_AddDSP(lFMOD_EffChorus): " + FMOD_ErrorString(lFMOD_Result))
  ;      If lFMOD_Result <> #FMOD_OK : SetGadgetState(#G_CH_Main_SO_Chorus, 0) : EndIf
  ;     Else
  ;      lFMOD_Result = FMOD_DSP_Remove(lFMOD_EffChorus)
  ;      AddLogEntry("FMOD_DSP_Remove(lFMOD_EffChorus): " + FMOD_ErrorString(lFMOD_Result))
  ;      If lFMOD_Result <> #FMOD_OK : SetGadgetState(#G_CH_Main_SO_Chorus, 1) : EndIf
  ;     EndIf
  ;
  ;   EndSelect
  ;
  ;  EndIf
  ;
EndProcedure

Procedure.s TagType(Type)

EndProcedure

;Liest einen Tag String aus
Procedure.s ReadTagData(*TagData, TagLen, TagType)

EndProcedure

;Liest einen FMOD Tag ein
Procedure.i ReadTagEx(Sound)

EndProcedure

Procedure RefreshTags()

EndProcedure

;Schließe die Datei und beendet die Wiedergabe
Procedure CloseMedia()

EndProcedure

Procedure.i PlayMedia_StartTimer()

EndProcedure

;Öffnet und startet die Wiedergabe einer Datei
Procedure.i PlayMedia(File$, ErrorMessage = 0)

EndProcedure

Procedure CurrPlay_Information()

EndProcedure

;######################################################################################################################################
; Playlist
;######################################################################################################################################
;Reset der Liste der bereits abgespielten Sounds
Procedure.i PlayList_ResetRandoms()
  Protected LastIndex.i = ListIndex(PlayList())
  Protected Reset.i = 1

  ForEach PlayList()
    If PlayList()\random = 0
      Reset = 0
      Break
    EndIf
  Next
  If Reset = 1
    ForEach PlayList()
      PlayList()\random = 0
    Next
  EndIf

  If LastIndex <> -1
    SelectElement(PlayList(), LastIndex)
  EndIf
EndProcedure

Procedure PlayList_GetLength()
  If ListSize(PlayList()) > 0
    Protected lFullTime.i

    ForEach PlayList()
      If PlayList()\length > 0
        lFullTime + PlayList()\length
      EndIf
    Next

    ProcedureReturn lFullTime
  EndIf
EndProcedure

Procedure PlayList_RefreshHeader()
  Protected iNext.i

  If Pref\autoclnw_pl > 0
    For iNext = 1 To #ColumnCount_PL - 1
      SendMessage_(GadgetID(#G_LI_Main_PL_PlayList), #LVM_SETCOLUMNWIDTH, iNext, #LVSCW_AUTOSIZE_USEHEADER)
    Next
  EndIf
EndProcedure

Procedure PlayList_AddItem(Title$, Artist$, Album$, Track, Length, Year$, Sel = -1)
  If Sel = -1
    AddGadgetItem(#G_LI_Main_PL_PlayList, -1, "")
    Sel = CountGadgetItems(#G_LI_Main_PL_PlayList) - 1
  EndIf
  If CountGadgetItems(#G_LI_Main_PL_PlayList) >= Sel
    ;Title
    SetGadgetItemText(#G_LI_Main_PL_PlayList, Sel, Trim(Title$), 1)
    ;Artist
    SetGadgetItemText(#G_LI_Main_PL_PlayList, Sel, Trim(Artist$), 2)
    ;Album
    SetGadgetItemText(#G_LI_Main_PL_PlayList, Sel, Trim(Album$), 3)
    ;Track
    If Track > -1
      SetGadgetItemText(#G_LI_Main_PL_PlayList, Sel, Str(Track), 4)
    Else
      SetGadgetItemText(#G_LI_Main_PL_PlayList, Sel, "", 4)
    EndIf
    ;Length
    If PlayList()\length > 0
      SetGadgetItemText(#G_LI_Main_PL_PlayList, Sel, TimeString(Length), 5)
    Else
      SetGadgetItemText(#G_LI_Main_PL_PlayList, Sel, "", 5)
    EndIf
    ;Year
    SetGadgetItemText(#G_LI_Main_PL_PlayList, Sel, Trim(Year$), 6)
  EndIf
EndProcedure

Procedure PlayList_Sort(Type)
  If ListSize(PlayList()) > 1
    ;SaveLastSel
    If ListSize(PlayList()) >= lSelect And lSelect <> 0
      SelectElement(PlayList(), lSelect - 1)
      PlayList()\path = "cp_" + PlayList()\path
      SetGadgetItemColor(#G_LI_Main_PL_PlayList, lSelect - 1, #PB_Gadget_BackColor, -1)
      SetGadgetItemColor(#G_LI_Main_PL_PlayList, lSelect - 1, #PB_Gadget_FrontColor, -1)
    EndIf

    ;Sort
    Select Type
      Case #Mnu_PlayList_SortArtist
        SortStructuredList(PlayList(), #PB_Sort_Ascending, OffsetOf(_PlayList\artist), #PB_Sort_String)
      Case #Mnu_PlayList_SortAlbum
        SortStructuredList(PlayList(), #PB_Sort_Ascending, OffsetOf(_PlayList\album), #PB_Sort_String)
      Case #Mnu_PlayList_SortTitle
        SortStructuredList(PlayList(), #PB_Sort_Ascending, OffsetOf(_PlayList\title), #PB_Sort_String)
      Case #Mnu_PlayList_SortTrack
        SortStructuredList(PlayList(), #PB_Sort_Ascending, OffsetOf(_PlayList\track), #PB_Sort_Long)
      Case #Mnu_PlayList_SortLength
        SortStructuredList(PlayList(), #PB_Sort_Ascending, OffsetOf(_PlayList\length), #PB_Sort_Long)
      Case #Mnu_PlayList_SortYear
        SortStructuredList(PlayList(), #PB_Sort_Descending, OffsetOf(_PlayList\year), #PB_Sort_String)
    EndSelect

    ForEach PlayList()
      PlayList_AddItem(PlayList()\title, PlayList()\artist, PlayList()\album, PlayList()\track, PlayList()\length, PlayList()\year, ListIndex(PlayList()))

      ;SelLastSel
      If Left(PlayList()\path, 3) = "cp_"
        PlayList()\path = Right(PlayList()\path, Len(PlayList()\path) - 3)
        lSelect = ListIndex(PlayList()) + 1
        SetGadgetItemColor(#G_LI_Main_PL_PlayList, lSelect - 1, #PB_Gadget_BackColor, Pref\color_sel_bg)
        SetGadgetItemColor(#G_LI_Main_PL_PlayList, lSelect - 1, #PB_Gadget_FrontColor, Pref\color_sel_tx)
      EndIf
    Next

    PlayList_RefreshHeader()

    Save\Playlist = 1
  EndIf
EndProcedure

Procedure PlayList_Search()
  Protected sSearch.s = Trim(GetGadgetText(#G_CB_Search_String)), lAddBool.i

  If ListSize(PlayList()) > 0 And Trim(sSearch) <> ""
    DisableGadget(#G_BN_Search_Start, 1)

    ClearGadgetItems(#G_LV_Search_Result)
    ClearList(SearchResult())

    ForEach PlayList()
      lAddBool = 0

      ;Title
      If GetGadgetState(#G_CB_Search_SearchIn) = 0 Or GetGadgetState(#G_CB_Search_SearchIn) = 1
        If FindString(LCase(PlayList()\title), sSearch, 1) > 0
          lAddBool = 1
        EndIf
      EndIf
      ;Artist
      If GetGadgetState(#G_CB_Search_SearchIn) = 0 Or GetGadgetState(#G_CB_Search_SearchIn) = 2
        If FindString(LCase(PlayList()\artist), sSearch, 1) > 0
          lAddBool = 1
        EndIf
      EndIf
      ;Album
      If GetGadgetState(#G_CB_Search_SearchIn) = 0 Or GetGadgetState(#G_CB_Search_SearchIn) = 3
        If FindString(LCase(PlayList()\album), sSearch, 1) > 0
          lAddBool = 1
        EndIf
      EndIf
      ;Comment
      If GetGadgetState(#G_CB_Search_SearchIn) = 0 Or GetGadgetState(#G_CB_Search_SearchIn) = 4
        If FindString(LCase(PlayList()\comment), sSearch, 1) > 0
          lAddBool = 1
        EndIf
      EndIf

      If lAddBool > 0
        AddElement(SearchResult())
        SearchResult()\index = ListIndex(PlayList())
        SearchResult()\name  = PlayList()\title
        AddGadgetItem(#G_LV_Search_Result, -1, SearchResult()\name)
      EndIf

      While WindowEvent(): Wend
    Next

    ;History
    If CountGadgetItems(#G_LV_Search_Result) > 0
      While ListSize(PLSearchHistory()) > #MaxSearchH
        LastElement(PLSearchHistory())
        DeleteElement(PLSearchHistory())
      Wend
      lAddBool = 1
      ForEach PLSearchHistory()
        If LCase(Trim(PLSearchHistory()\string)) = LCase(Trim(sSearch))
          lAddBool = 0
        EndIf
      Next
      If lAddBool >= 1
        FirstElement(PLSearchHistory())
        InsertElement(PLSearchHistory())
        PLSearchHistory()\string = sSearch
        AddGadgetItem(#G_CB_Search_String, 0, sSearch)
      EndIf

      SetActiveGadget(#G_LV_Search_Result)
    EndIf

    SetGadgetText(#G_CB_Search_String, "")
    DisableGadget(#G_BN_Search_Start, 0)
  EndIf
EndProcedure

Procedure.i PlayList_Save(Path$, Overwrite = -1)
  Protected lFileID.i

  If Path$ = ""
    Path$ = SaveFileRequester("Speichern", GetCurrentDirectory(), "Playlist (*.m3u)|*.m3u|Playlist (*.pls)|*.pls|HTM Datei (*.htm)|*.htm|Alle Dateien|*.*", 0)
  EndIf

  If Path$ <> ""
    ;AddExtension
    If SelectedFilePattern() = 0 And GetExtensionPart(Path$) = "": Path$ + ".m3u": EndIf
    If SelectedFilePattern() = 1 And GetExtensionPart(Path$) = "": Path$ + ".pls": EndIf
    If SelectedFilePattern() = 2 And GetExtensionPart(Path$) = "": Path$ + ".htm": EndIf

    ;File Overwrite
    If FileSize(Path$) > 0 And Overwrite <> -1
      If MessageRequester("Überschreiben", "Datei '" + Path$ + "' existiert bereits," + #CRLF$ + "soll die Datei überschrieben werden?", #MB_YESNO|#MB_ICONEXCLAMATION) = #IDNO
        ProcedureReturn 0
      EndIf
    EndIf

    ;Save..
    lFileID = CreateFile(#PB_Any, Path$)
    If lFileID <> 0
      Select SelectedFilePattern()

        Case 0 , 3 ;M3U
          WriteStringN(lFileID, "#EXTM3U")
          ForEach PlayList()
            WriteStringN(lFileID, "#EXTINF:" + Str(PlayList()\length / 1000) + "," + PlayList()\title)
            WriteStringN(lFileID, PlayList()\path)
          Next

        Case 1 ;PLS
          WriteStringN(lFileID, "[playlist]")
          ForEach PlayList()
            WriteStringN(lFileID, "File" + Str(ListIndex(PlayList()) + 1) + "=" + PlayList()\path)
            WriteStringN(lFileID, "Title" + Str(ListIndex(PlayList()) + 1) + "=" + PlayList()\title)
            WriteStringN(lFileID, "Length" + Str(ListIndex(PlayList()) + 1) + "=" + Str(PlayList()\length / 1000))
          Next
          WriteStringN(lFileID, "NumberOfEntries=" + Str(ListSize(PlayList())))
          WriteStringN(lFileID, "Version=2")

        Case 2 ;HTML
          WriteStringN(lFileID, "<!DOCTYPE HTML PUBLIC " + Chr(34) + "-//W3C//DTD HTML 4.01 Transitional//EN" + Chr(34) + ">")
          WriteStringN(lFileID, "<html>")
          WriteStringN(lFileID, " <head>")
          WriteStringN(lFileID, "  <meta http-equiv=" + Chr(34) + "Content-Type" + Chr(34) + " content=" + Chr(34) + "text/html; charset=iso-8859-1" + Chr(34) + ">")
          WriteStringN(lFileID, "  <title>MediaKing - Wiedergabeliste</title>")
          WriteStringN(lFileID, "  <style TYPE=" + Chr(34) + "text/css" + Chr(34) + ">")
          WriteStringN(lFileID, "   <!--BODY { background: #161823; }")
          WriteStringN(lFileID, "   .title1 { margin-top: 15px; margin-left: 15px; margin-right: 50px; font-family: " + Chr(34) + "font1, Arial Black" + Chr(34) + "; font-size: 50px; line-height: 40px; text-align: left; color: #004080; }")
          WriteStringN(lFileID, "   .title2 { margin-top: -42px; margin-left: 145px; margin-right: 10px; font-family: " + Chr(34) + "font2, Arial" + Chr(34) + "; font-size: 30px; line-height: 35px; text-align: left; color: #E1E1E1; }")
          WriteStringN(lFileID, "   -->")
          WriteStringN(lFileID, "  </style>")
          WriteStringN(lFileID, "  <!-- Generated by MediaKing -->")
          WriteStringN(lFileID, "  </head>")
          WriteStringN(lFileID, "  <body>")
          WriteStringN(lFileID, "  <div Class=" + Chr(34) + "title1" + Chr(34) + " align=" + Chr(34) + "center" + Chr(34) + "><p>MediaKing</p></div>")
          WriteStringN(lFileID, "  <div Class=" + Chr(34) + "title2" + Chr(34) + " align=" + Chr(34) + "center" + Chr(34) + "><p>Wiedergabeliste</p></div>")
          WriteStringN(lFileID, "  <hr align=" + Chr(34) + "left" + Chr(34) + " width=" + Chr(34) + "90%" + Chr(34) + " noshade size=" + Chr(34) + "1" + Chr(34) + " color=" + Chr(34) + "#FFBF00" + Chr(34) + ">")
          WriteStringN(lFileID, "  <font face=" + Chr(34) + "Arial" + Chr(34) + " color=" + Chr(34) + "#FFBF00" + Chr(34) + ">" + Str(ListSize(PlayList())) + "</font>")
          WriteStringN(lFileID, "  <font color=" + Chr(34) + "#409FFF" + Chr(34) + "face=" + Chr(34) + "Arial" + Chr(34) + "> Einträge, Dauer: </font><font face=" + Chr(34) + "Arial" + Chr(34) + " color=" + Chr(34) + "#FFBF00" + Chr(34) + ">" + TimeString(PlayList_GetLength()) + "</font><br><br>")
          WriteStringN(lFileID, "  <font color=" + Chr(34) + "#FFBF00" + Chr(34) + " face=" + Chr(34) + "Arial" + Chr(34) + ">Einträge:</font><br><br>")
          WriteStringN(lFileID, "  <ul><font face=" + Chr(34) + "Arial" + Chr(34) + " color=" + Chr(34) + "#FFFFFF" + Chr(34) + "><small>")
          ForEach PlayList()
            WriteString(lFileID, "  " + RSet(Str(ListIndex(PlayList()) + 1), 2, "0") + ". ")
            If PlayList()\artist <> ""
              WriteString(lFileID, PlayList()\artist + " - ")
            EndIf
            WriteString(lFileID, PlayList()\title)
            If PlayList()\length > 0
              WriteString(lFileID, " (" + TimeString(PlayList()\length) + ")")
            EndIf
            WriteStringN(lFileID, "<br>")
          Next
          WriteStringN(lFileID, "  </font></ul></small>")
          WriteStringN(lFileID, "  <hr align=" + Chr(34) + "left" + Chr(34) + " width=" + Chr(34) + "90%" + Chr(34) + " noshade size=" + Chr(34) + "1" + Chr(34) + " color=" + Chr(34) + "#FFBF00" + Chr(34) + ">")
          WriteStringN(lFileID, " </body>")
          WriteStringN(lFileID, "</html>")

      EndSelect
      CloseFile(lFileID)
    Else
      MsgBox_Exclamation("PlayList konnte nicht gespeichert werden")
    EndIf

  EndIf
EndProcedure

;Startet die Wiedergabe von einen Playlisteintrag
Procedure.i PlayList_ChangeSelect(Sel, ErrorMessage = 0)

EndProcedure

Procedure.i PlayList_BackTrack()

EndProcedure

Procedure.i PlayList_NextTrack()

EndProcedure

Procedure PlayList_RefreshAllTimes()
  Protected lFullLength.i, sString.s

  ForEach PlayList()
    If PlayList()\length > 0
      lFullLength + PlayList()\length
    EndIf
  Next

  If lFullLength > 0
    If ListSize(PlayList()) = 1
      sString = "1 Eintrag (" + TimeString(lFullLength) + ")"
    Else
      sString = Str(ListSize(PlayList())) + " Einträge (" + TimeString(lFullLength) + ")"
    EndIf
  Else
    If ListSize(PlayList()) = 1
      sString = "1 Eintrag"
    Else
      sString = Str(ListSize(PlayList())) + " Einträge"
    EndIf
  EndIf

  SetGadgetText(#G_TX_Main_PL_Playlist, sString)
EndProcedure

Procedure PlayList_Remove(Sel)
  If Sel < 0
    ;Remove All
    ClearList(PlayList())
    ClearGadgetItems(#G_LI_Main_PL_PlayList)

    lSelect       = 0
    Save\Playlist = 1

    Playlist_RefreshAllTimes()
  Else
    ;Remove Sel
    Protected iNext.i, iMax.i = CountGadgetItems(#G_LI_Main_PL_PlayList) - 1

    For iNext = 0 To iMax
      If GetGadgetItemState(#G_LI_Main_PL_PlayList, iMax - iNext) = 1
        SelectElement(PlayList(), iMax - iNext)
        DeleteElement(PlayList())
        RemoveGadgetItem(#G_LI_Main_PL_PlayList, iMax - iNext)

        Save\Playlist = 1

        If iMax - iNext < lSelect: lSelect - 1: EndIf

        Playlist_RefreshAllTimes()
      EndIf

      While WindowEvent(): Wend
    Next
  EndIf
EndProcedure

Procedure PlayList_AddFile(Path$)

EndProcedure

Procedure PlayList_AddDrop(Files$)
  Protected *C._Char = @Files$
  Protected lNext.i, lSize.i = Len(Files$)
  Protected sCurrFile.s

  If *C <> 0
    For lNext = 0 To lSize
      If *C\c = #LF Or *C\c = #Null
        PlayList_AddFile(sCurrFile)
        While WindowEvent(): Wend
        sCurrFile = ""
      Else
        sCurrFile + *C\s
      EndIf
      *C + SizeOf(Character)
    Next
  EndIf
EndProcedure

Procedure PlayList_CreateRNDList()
  If lFMOD_System > 0 And ListSize(MediaLibary()) > 0
    Protected iAmount.i, iTime.i, qFullTime.q
    Protected iCurrTime.i, iAddBool.i, iNext.i

    ;Max Entries
    iAmount = Val(GetGadgetText(#G_SR_RNDPlaylist_Amount))
    ;Max Time
    iTime   = (((Hour(GetGadgetState(#G_CB_RNDPlaylist_Time)) * 60) + Minute(GetGadgetState(#G_CB_RNDPlaylist_Time))) * 60) * 1000

    ;Check Input
    If GetGadgetState(#G_CH_RNDPlaylist_Amount) = 1 And iAmount < 1
      MsgBox_Exclamation("Ungültige Eingabe bei 'Anzahl'" + #CR$ + "Gültiger Bereich: 1 - Anzahl")
      ProcedureReturn -1
    EndIf
    If GetGadgetState(#G_CH_RNDPlaylist_Time) = 1 And iTime < 1
      MsgBox_Exclamation("Ungültige Eingabe bei 'Gesamte Dauer'" + #CR$ + "Gültiger Bereich: 00:01 - 23:59")
      ProcedureReturn -2
    EndIf

    SetGadgetText(#G_TX_RNDPlaylist_Status, "Erstelle Wiedergabeliste..")

    ;Create
    ForEach MediaLibary()
      iAddBool = 0

      If GetGadgetState(#G_CH_RNDPlaylist_Genre) = 0 And GetGadgetState(#G_CH_RNDPlaylist_Played) = 0
        iAddBool = 1
      EndIf

      ;With Genre
      If GetGadgetState(#G_CH_RNDPlaylist_Genre) = 1 And iAddBool = 0
        For iNext = 0 To #MaxMP3Genre
          If GetGadgetItemState(#G_LV_RNDPlaylist_Genre, iNext) = 1
            If Trim(LCase(MP3Genre(iNext))) = Trim(LCase(MediaLibary()\genre)) : iAddBool = 1 : EndIf
          EndIf
        Next
        If iAddBool = 0 : Continue : EndIf
      EndIf

      ;Only Played Tracks
      If GetGadgetState(#G_CH_RNDPlaylist_Played) = 1 And iAddBool = 0
        If MediaLibary()\playcount > 0
          iAddBool = 1
        Else
          Continue
        EndIf
      EndIf

      ;Add
      If iAddBool > 0
        AddElement(RndPlayList())
        RndPlayList()\index = ListIndex(MediaLibary())
        RndPlayList()\value = Random(1000)
        qFullTime           + MediaLibary()\length
      EndIf

      While WindowEvent(): Wend
    Next

    SortStructuredList(RndPlayList(), #PB_Sort_Ascending, OffsetOf(_RndPlayList\value), #PB_Sort_Long)

    If ListSize(RndPlayList()) < 1
      MsgBox_Exclamation("Keine Gültigen Einträge gefunden")
      ProcedureReturn -3
    Else

      ;Amount
      If GetGadgetState(#G_CH_RNDPlaylist_Amount) = 1
        If ListSize(RndPlayList()) < iAmount
          MsgBox_Exclamation("Zu wenig Einträge gefunden")
          ClearList(RndPlayList())
          ProcedureReturn -4
        Else
          ClearList(PlayList())
          ClearGadgetItems(#G_LI_Main_PL_PlayList)
          ForEach RndPlayList()
            If ListSize(PlayList()) < iAmount
              If ListSize(MediaLibary()) >= RndPlayList()\index
                SelectElement(MediaLibary(), RndPlayList()\index)
                PlayList_AddFile(MediaLibary()\path)
                While WindowEvent(): Wend
              EndIf
            Else
              ClearList(RndPlayList())
              ProcedureReturn 1
            EndIf
          Next
          Save\Playlist = 1
        EndIf
      EndIf

      ;Time
      If GetGadgetState(#G_CH_RNDPlaylist_Time) = 1
        If qFullTime < iTime
          MsgBox_Exclamation("Zu wenig Einträge gefunden")
          ClearList(RndPlayList())
          ProcedureReturn -5
        Else
          ClearList(PlayList())
          ClearGadgetItems(#G_LI_Main_PL_PlayList)
          ForEach RndPlayList()
            If iCurrTime < iTime
              If ListSize(MediaLibary()) >= RndPlayList()\index
                SelectElement(MediaLibary(), RndPlayList()\index)
                PlayList_AddFile(MediaLibary()\path)
                iCurrTime + MediaLibary()\length
                While WindowEvent(): Wend
              EndIf
            Else
              ClearList(RndPlayList())
              ProcedureReturn 1
            EndIf
          Next
          Save\Playlist = 1
        EndIf
      EndIf

    EndIf

  EndIf
EndProcedure

Procedure PlayList_Informationen()

EndProcedure

;######################################################################################################################################
; MediaLibary
;######################################################################################################################################
Procedure MediaLib_RefreshStatusText()
  If CountGadgetItems(#G_LI_Main_ML_MediaLib) < 1
    SetGadgetText(#G_TX_Main_ML_Status, "0 Einträge")
  EndIf
  If CountGadgetItems(#G_LI_Main_ML_MediaLib) = 1
    SetGadgetText(#G_TX_Main_ML_Status, "1 Eintrag")
  EndIf
  If CountGadgetItems(#G_LI_Main_ML_MediaLib) > 1
    SetGadgetText(#G_TX_Main_ML_Status, Str(CountGadgetItems(#G_LI_Main_ML_MediaLib)) + " Einträge")
  EndIf
EndProcedure

Procedure MediaLib_RefreshHeader()
  If Pref\autoclnw_ml > 0
    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #LVM_SETCOLUMNWIDTH, 0, #LVSCW_AUTOSIZE_USEHEADER)
    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #LVM_SETCOLUMNWIDTH, 1, #LVSCW_AUTOSIZE_USEHEADER)
    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #LVM_SETCOLUMNWIDTH, 2, #LVSCW_AUTOSIZE_USEHEADER)
    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #LVM_SETCOLUMNWIDTH, 3, #LVSCW_AUTOSIZE_USEHEADER)
    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #LVM_SETCOLUMNWIDTH, 4, #LVSCW_AUTOSIZE_USEHEADER)
    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #LVM_SETCOLUMNWIDTH, 5, #LVSCW_AUTOSIZE_USEHEADER)
    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #LVM_SETCOLUMNWIDTH, 6, #LVSCW_AUTOSIZE_USEHEADER)
    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #LVM_SETCOLUMNWIDTH, 7, #LVSCW_AUTOSIZE_USEHEADER)
  EndIf
EndProcedure

Procedure MediaLib_AddItem(Title$, Artist$, Album$, Track, Length, Year$, PlayCount, LastPlay, Sel = -1)
  If Sel = -1
    AddGadgetItem(#G_LI_Main_ML_MediaLib, -1, "")
    Sel = CountGadgetItems(#G_LI_Main_ML_MediaLib) - 1
  EndIf
  If CountGadgetItems(#G_LI_Main_ML_MediaLib) >= Sel
    ;Title
    SetGadgetItemText(#G_LI_Main_ML_MediaLib, Sel, Trim(Title$), 1)
    ;Artist
    SetGadgetItemText(#G_LI_Main_ML_MediaLib, Sel, Trim(Artist$), 2)
    ;Album
    SetGadgetItemText(#G_LI_Main_ML_MediaLib, Sel, Trim(Album$), 3)
    ;Track
    If Track > -1
      SetGadgetItemText(#G_LI_Main_ML_MediaLib, Sel, Str(Track), 4)
    Else
      SetGadgetItemText(#G_LI_Main_ML_MediaLib, Sel, "", 4)
    EndIf
    ;Length
    If Length > 0
      SetGadgetItemText(#G_LI_Main_ML_MediaLib, Sel, TimeString(Length), 5)
    Else
      SetGadgetItemText(#G_LI_Main_ML_MediaLib, Sel, "", 5)
    EndIf
    ;Year
    SetGadgetItemText(#G_LI_Main_ML_MediaLib, Sel, Trim(Year$), 6)
    ;PlayCount
    If PlayCount > 0
      SetGadgetItemText(#G_LI_Main_ML_MediaLib, Sel, Str(PlayCount), 7)
    Else
      SetGadgetItemText(#G_LI_Main_ML_MediaLib, Sel, "", 7)
    EndIf
    ;LastPlay
    If LastPlay > 0
      SetGadgetItemText(#G_LI_Main_ML_MediaLib, Sel, FormatDate("%dd.%mm.%yy %hh:%ii:%ss", LastPlay), 8)
    Else
      SetGadgetItemText(#G_LI_Main_ML_MediaLib, Sel, "", 8)
    EndIf
  EndIf
EndProcedure

Structure LVFINDINFO
  flags.l
  psz.s
  lParam.l
  pt.point
  vkDirection.l
EndStructure

Procedure MediaLib_AddAlbum(Album$)
  Album$ = Trim(Album$)


  If Album$ <> ""
    ForEach MediaLibaryAlbum()
      If Trim(LCase(MediaLibaryAlbum()\name)) = LCase(Album$)
        ProcedureReturn -1
      EndIf
    Next

    AddElement(MediaLibaryAlbum())
    MediaLibaryAlbum()\name = Album$
    AddGadgetItem(#G_LV_Main_ML_Album, -1, MediaLibary()\Album)
  EndIf

EndProcedure

Procedure MediaLib_SortAlbum()
  If ListSize(MediaLibaryAlbum()) > 0
    SortStructuredList(MediaLibaryAlbum(), #PB_Sort_Ascending, OffsetOf(_MediaLibaryAlbum\name), #PB_Sort_String)
    ForEach MediaLibaryAlbum()
      If CountGadgetItems(#G_LV_Main_ML_Album) >= ListIndex(MediaLibaryAlbum())
        SetGadgetItemText(#G_LV_Main_ML_Album, ListIndex(MediaLibaryAlbum()), MediaLibaryAlbum()\name)
      EndIf
    Next
  EndIf
EndProcedure

Procedure.i MediaLib_SearchString(String$, Search$)
  If String$ <> "" And Search$ <> ""
    Protected iNext.i
    Protected iCount.i
    Protected sSearch.s
    Protected iResult.i

    iCount = CountString(Search$, " ") + 1
    For iNext = 1 To iCount
      sSearch = StringField(Search$, iNext, " ")

      If MLSearchO\cases < 1
        String$ = LCase(String$)
        sSearch = LCase(sSearch)
      EndIf

      If MLSearchO\wholeword > 0
        If String$ = sSearch Or FindString(String$, sSearch + " ", 1) > 0 Or FindString(String$, " " + sSearch, 1) > 0 Or FindString(String$, " " + sSearch + " ", 1) > 0
          iResult = 1
        Else
          iResult = 0 : Break
        EndIf
      Else
        If FindString(String$, sSearch, 1) > 0
          iResult = 1
        Else
          iResult = 0 : Break
        EndIf
      EndIf

      While WindowEvent(): Wend
    Next iNext

  EndIf

  ProcedureReturn iResult
EndProcedure

Procedure MediaLib_Search()
  If ListSize(MediaLibary()) > 0
    Protected sSearch.s, lFound.i, lAddBool.i, lNext.i, sTemp.s

    sSearch = Trim(GetGadgetText(#G_SR_Main_ML_Search))

    If sSearch <> ""
      SetGadgetText(#G_TX_Main_ML_Status, "Suche..")
      DisableWindow(#Win_Main, 1)

      ClearList(MediaLibarySearch())
      ClearList(MediaLibaryAlbum())
      ClearGadgetItems(#G_LI_Main_ML_MediaLib)
      ClearGadgetItems(#G_LV_Main_ML_Album)

      ;Search
      ForEach MediaLibary()
        lFound = 0

        ;Title
        If MLSearchO\searchin & 2
          If MediaLib_SearchString(MediaLibary()\title, sSearch) > 0 : lFound + 1 : EndIf
        EndIf
        ;Artist
        If MLSearchO\searchin & 4
          If MediaLib_SearchString(MediaLibary()\artist, sSearch) > 0 : lFound + 1 : EndIf
        EndIf
        ;Interpret
        If MLSearchO\searchin & 8
          If MediaLib_SearchString(MediaLibary()\album, sSearch) > 0 : lFound + 1 : EndIf
        EndIf
        ;Comment
        If MLSearchO\searchin & 16
          If MediaLib_SearchString(MediaLibary()\comment, sSearch) > 0 : lFound + 1 : EndIf
        EndIf
        ;Path
        If MLSearchO\searchin & 32
          If MediaLib_SearchString(MediaLibary()\path, sSearch) > 0 : lFound + 1 : EndIf
        EndIf
        ;Filename
        If MLSearchO\searchin & 64
          If MediaLib_SearchString(GetFileNamePart(MediaLibary()\path), sSearch) > 0 : lFound + 1 : EndIf
        EndIf

        ;OnlyPlayed
        If MLSearchO\played >= 1 And MediaLibary()\playcount <= 0
          lFound = 0
        EndIf
        ;Year
        If MLSearchO\year <> 0 And Val(MediaLibary()\year) <> Year(MLSearchO\year)
          lFound = 0
        EndIf

        If lFound > 0
          AddElement(MediaLibarySearch())
          MediaLibarySearch()\index = ListIndex(MediaLibary())
        EndIf
      Next

      ;Display Result
      SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #WM_SETREDRAW, 0, 0)

      ForEach MediaLibarySearch()
        If ListSize(MediaLibary()) >= MediaLibarySearch()\index
          SelectElement(MediaLibary(), MediaLibarySearch()\index)

          MediaLib_AddItem(MediaLibary()\title, MediaLibary()\artist, MediaLibary()\album, MediaLibary()\track, MediaLibary()\length, MediaLibary()\year, MediaLibary()\playcount, MediaLibary()\lastplay, -1)
          MediaLib_AddAlbum(MediaLibary()\album)

          While WindowEvent(): Wend
        EndIf
      Next

      SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #WM_SETREDRAW, 1, 0)

      ;History
      If ListSize(MediaLibarySearch()) > 0
        While CountGadgetItems(#G_SR_Main_ML_Search) > #MaxSearchH
          RemoveGadgetItem(#G_SR_Main_ML_Search, CountGadgetItems(#G_SR_Main_ML_Search) - 1)
        Wend
        lAddBool = 1
        For lNext = 0 To CountGadgetItems(#G_SR_Main_ML_Search) - 1
          If LCase(Trim(GetGadgetItemText(#G_SR_Main_ML_Search, lNext))) = LCase(Trim(sSearch))
            lAddBool = 0
          EndIf
        Next
        If lAddBool >= 1
          AddGadgetItem(#G_SR_Main_ML_Search, 0, sSearch)
        EndIf
      EndIf

      MediaLib_RefreshStatusText()
      MediaLib_RefreshHeader()
      MediaLib_SortAlbum()
      SetGadgetText(#G_SR_Main_ML_Search, "")
      DisableGadget(#G_BN_Main_ML_Search, 1)
      DisableWindow(#Win_Main, 0)
      SetGadgetState(#G_LV_Main_ML_Category, -1)
      SetGadgetState(#G_LV_Main_ML_Album, -1)

      lMediaLibary_LastSearch    = #ML_Search_Search
      lMediaLibary_LastSearchSub = -1
    EndIf
  EndIf
EndProcedure

Procedure MediaLib_Show()
  If ListSize(MediaLibary()) > 0 And lMediaLibary_LastSearch <> #ML_Search_Show
    Protected iPercent.i

    DisableWindow(#Win_Main, 1)

    ClearList(MediaLibarySearch())
    ClearList(MediaLibaryAlbum())
    ClearGadgetItems(#G_LI_Main_ML_MediaLib)
    ClearGadgetItems(#G_LV_Main_ML_Album)

    SetGadgetText(#G_TX_Main_ML_Status, "Suche..")
    SetGadgetState(#G_PB_Main_ML_Status, 0)

    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #WM_SETREDRAW, 0, 0)

    ForEach MediaLibary()
      MediaLib_AddItem(MediaLibary()\title, MediaLibary()\artist, MediaLibary()\album, MediaLibary()\track, MediaLibary()\length, MediaLibary()\year, MediaLibary()\playcount, MediaLibary()\lastplay, -1)
      MediaLib_AddAlbum(MediaLibary()\album)

      iPercent = ((ListIndex(MediaLibary()) + 1) * 100) / ListSize(MediaLibary())
      If GetGadgetState(#G_PB_Main_ML_Status) <> iPercent And iPercent <> 0
        SetGadgetState(#G_PB_Main_ML_Status, iPercent)
      EndIf

      While WindowEvent(): Wend
    Next

    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #WM_SETREDRAW, 1, 0)

    MediaLib_RefreshHeader()
    MediaLib_SortAlbum()
    MediaLib_RefreshStatusText()

    SetGadgetState(#G_PB_Main_ML_Status, 0)

    DisableWindow(#Win_Main, 0)

    lMediaLibary_LastSearch    = #ML_Search_Show
    lMediaLibary_LastSearchSub = -1
  EndIf
EndProcedure

Procedure MediaLib_ShowMostPlay()
  If ListSize(MediaLibary()) > 0 And lMediaLibary_LastSearch <> #ML_Search_MostPlay
    Protected lFound.i, iPercent.i

    DisableWindow(#Win_Main, 1)

    SetGadgetText(#G_TX_Main_ML_Status, "Suche..")
    SetGadgetState(#G_PB_Main_ML_Status, 0)

    ClearList(MediaLibarySearch())
    ClearList(MediaLibaryAlbum())
    ClearGadgetItems(#G_LI_Main_ML_MediaLib)
    ClearGadgetItems(#G_LV_Main_ML_Album)

    ;Search
    ForEach MediaLibary()
      lFound = 0
      If MediaLibary()\playcount > 0
        lFound = 1
      EndIf
      If lFound > 0
        AddElement(MediaLibarySearch())
        MediaLibarySearch()\index = ListIndex(MediaLibary())
        MediaLibarySearch()\flags = MediaLibary()\playcount
      EndIf
    Next

    ;Sort
    SortStructuredList(MediaLibarySearch(), #PB_Sort_Descending, OffsetOf(_MediaLibarySearch\flags), #PB_Sort_Long)

    ;Display Result
    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #WM_SETREDRAW, 0, 0)

    ForEach MediaLibarySearch()
      If ListSize(MediaLibary()) >= MediaLibarySearch()\index
        SelectElement(MediaLibary(), MediaLibarySearch()\index)

        MediaLib_AddItem(MediaLibary()\title, MediaLibary()\artist, MediaLibary()\album, MediaLibary()\track, MediaLibary()\length, MediaLibary()\year, MediaLibary()\playcount, MediaLibary()\lastplay, -1)
        MediaLib_AddAlbum(MediaLibary()\album)

        iPercent = ((ListIndex(MediaLibary()) + 1) * 100) / ListSize(MediaLibary())
        If GetGadgetState(#G_PB_Main_ML_Status) <> iPercent And iPercent <> 0
          SetGadgetState(#G_PB_Main_ML_Status, iPercent)
        EndIf

        While WindowEvent(): Wend
      EndIf
    Next

    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #WM_SETREDRAW, 1, 0)

    MediaLib_RefreshStatusText()
    MediaLib_RefreshHeader()
    MediaLib_SortAlbum()

    SetGadgetText(#G_SR_Main_ML_Search, "")
    DisableGadget(#G_BN_Main_ML_Search, 1)

    SetGadgetState(#G_PB_Main_ML_Status, 0)

    DisableWindow(#Win_Main, 0)

    lMediaLibary_LastSearch    = #ML_Search_MostPlay
    lMediaLibary_LastSearchSub = -1
  EndIf
EndProcedure

Procedure MediaLib_ShowLastPlay()
  If ListSize(MediaLibary()) > 0 And lMediaLibary_LastSearch <> #ML_Search_LastPlay
    Protected lFound.i, iPercent.i

    DisableWindow(#Win_Main, 1)

    SetGadgetText(#G_TX_Main_ML_Status, "Suche..")
    SetGadgetState(#G_PB_Main_ML_Status, 0)

    ClearList(MediaLibarySearch())
    ClearList(MediaLibaryAlbum())
    ClearGadgetItems(#G_LI_Main_ML_MediaLib)
    ClearGadgetItems(#G_LV_Main_ML_Album)

    ;Search
    ForEach MediaLibary()
      lFound = 0
      If MediaLibary()\lastplay > 0
        lFound = 1
      EndIf
      If lFound > 0
        AddElement(MediaLibarySearch())
        MediaLibarySearch()\index = ListIndex(MediaLibary())
        MediaLibarySearch()\flags = MediaLibary()\lastplay
      EndIf
    Next

    ;Sort
    SortStructuredList(MediaLibarySearch(), #PB_Sort_Descending, OffsetOf(_MediaLibarySearch\flags), #PB_Sort_Long)

    ;Display Result
    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #WM_SETREDRAW, 0, 0)

    ForEach MediaLibarySearch()
      If ListSize(MediaLibary()) >= MediaLibarySearch()\index
        SelectElement(MediaLibary(), MediaLibarySearch()\index)

        MediaLib_AddItem(MediaLibary()\title, MediaLibary()\artist, MediaLibary()\album, MediaLibary()\track, MediaLibary()\length, MediaLibary()\year, MediaLibary()\playcount, MediaLibary()\lastplay, -1)
        MediaLib_AddAlbum(MediaLibary()\album)

        iPercent = ((ListIndex(MediaLibary()) + 1) * 100) / ListSize(MediaLibary())
        If GetGadgetState(#G_PB_Main_ML_Status) <> iPercent And iPercent <> 0
          SetGadgetState(#G_PB_Main_ML_Status, iPercent)
        EndIf

        While WindowEvent(): Wend
      EndIf
    Next

    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #WM_SETREDRAW, 1, 0)

    MediaLib_RefreshStatusText()
    MediaLib_RefreshHeader()
    MediaLib_SortAlbum()

    SetGadgetText(#G_SR_Main_ML_Search, "")
    DisableGadget(#G_BN_Main_ML_Search, 1)

    SetGadgetState(#G_PB_Main_ML_Status, 0)

    DisableWindow(#Win_Main, 0)

    lMediaLibary_LastSearch    = #ML_Search_LastPlay
    lMediaLibary_LastSearchSub = -1
  EndIf
EndProcedure

Procedure MediaLib_ShowNeverPlay()
  If ListSize(MediaLibary()) > 0 And lMediaLibary_LastSearch <> #ML_Search_NeverPlay
    Protected lFound.i, iPercent.i

    DisableWindow(#Win_Main, 1)

    SetGadgetText(#G_TX_Main_ML_Status, "Suche..")

    ClearList(MediaLibarySearch())
    ClearList(MediaLibaryAlbum())
    ClearGadgetItems(#G_LI_Main_ML_MediaLib)
    ClearGadgetItems(#G_LV_Main_ML_Album)

    ;Search
    ForEach MediaLibary()
      lFound = 0
      If MediaLibary()\lastplay = 0 Or MediaLibary()\playcount = 0
        lFound = 1
      EndIf
      If lFound > 0
        AddElement(MediaLibarySearch())
        MediaLibarySearch()\index = ListIndex(MediaLibary())
        MediaLibarySearch()\flags = MediaLibary()\lastplay
      EndIf
    Next

    ;Display Result
    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #WM_SETREDRAW, 0, 0)

    ForEach MediaLibarySearch()
      If ListSize(MediaLibary()) >= MediaLibarySearch()\index
        SelectElement(MediaLibary(), MediaLibarySearch()\index)

        MediaLib_AddItem(MediaLibary()\title, MediaLibary()\artist, MediaLibary()\album, MediaLibary()\track, MediaLibary()\length, MediaLibary()\year, MediaLibary()\playcount, MediaLibary()\lastplay, -1)
        MediaLib_AddAlbum(MediaLibary()\album)

        iPercent = ((ListIndex(MediaLibary()) + 1) * 100) / ListSize(MediaLibary())
        If GetGadgetState(#G_PB_Main_ML_Status) <> iPercent And iPercent <> 0
          SetGadgetState(#G_PB_Main_ML_Status, iPercent)
        EndIf

        While WindowEvent(): Wend
      EndIf
    Next

    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #WM_SETREDRAW, 1, 0)

    MediaLib_RefreshStatusText()
    MediaLib_RefreshHeader()
    MediaLib_SortAlbum()

    SetGadgetText(#G_SR_Main_ML_Search, "")
    DisableGadget(#G_BN_Main_ML_Search, 1)

    SetGadgetState(#G_PB_Main_ML_Status, 0)

    DisableWindow(#Win_Main, 0)

    lMediaLibary_LastSearch    = #ML_Search_NeverPlay
    lMediaLibary_LastSearchSub = -1
  EndIf
EndProcedure

Procedure MediaLib_ShowBookmark()
  If ListSize(MediaLibary()) > 0 And lMediaLibary_LastSearch <> #ML_Search_Bookmark
    Protected iPercent.i

    DisableWindow(#Win_Main, 1)

    SetGadgetText(#G_TX_Main_ML_Status, "Suche..")
    SetGadgetState(#G_PB_Main_ML_Status, 0)

    ClearList(MediaLibarySearch())
    ClearList(MediaLibaryAlbum())
    ClearGadgetItems(#G_LI_Main_ML_MediaLib)
    ClearGadgetItems(#G_LV_Main_ML_Album)

    ;Search
    ForEach MediaLibary()
      If MediaLibary()\flags & #MediaLib_Flag_Bookmark
        AddElement(MediaLibarySearch())
        MediaLibarySearch()\index = ListIndex(MediaLibary())
      EndIf
    Next

    ;Display Result
    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #WM_SETREDRAW, 0, 0)

    ForEach MediaLibarySearch()
      If ListSize(MediaLibary()) >= MediaLibarySearch()\index
        SelectElement(MediaLibary(), MediaLibarySearch()\index)

        MediaLib_AddItem(MediaLibary()\title, MediaLibary()\artist, MediaLibary()\album, MediaLibary()\track, MediaLibary()\length, MediaLibary()\year, MediaLibary()\playcount, MediaLibary()\lastplay, -1)
        MediaLib_AddAlbum(MediaLibary()\album)

        iPercent = ((ListIndex(MediaLibary()) + 1) * 100) / ListSize(MediaLibary())
        If GetGadgetState(#G_PB_Main_ML_Status) <> iPercent And iPercent <> 0
          SetGadgetState(#G_PB_Main_ML_Status, iPercent)
        EndIf

        While WindowEvent(): Wend
      EndIf
    Next

    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #WM_SETREDRAW, 1, 0)

    MediaLib_RefreshStatusText()
    MediaLib_RefreshHeader()
    MediaLib_SortAlbum()

    SetGadgetText(#G_SR_Main_ML_Search, "")
    DisableGadget(#G_BN_Main_ML_Search, 1)

    SetGadgetState(#G_PB_Main_ML_Status, 0)

    DisableWindow(#Win_Main, 0)

    lMediaLibary_LastSearch    = #ML_Search_Bookmark
    lMediaLibary_LastSearchSub = -1
  EndIf
EndProcedure

Procedure MediaLib_Album()
  If GetGadgetState(#G_LV_Main_ML_Album) <> -1 And (lMediaLibary_LastSearch <> #ML_Search_Album Or lMediaLibary_LastSearchSub <> GetGadgetState(#G_LV_Main_ML_Album))

    If ListSize(MediaLibaryAlbum()) >= GetGadgetState(#G_LV_Main_ML_Album)
      SelectElement(MediaLibaryAlbum(), GetGadgetState(#G_LV_Main_ML_Album))
      Protected sAlbum.s

      sAlbum = Trim(LCase(MediaLibaryAlbum()\name))

      ClearList(MediaLibarySearch())
      ClearGadgetItems(#G_LI_Main_ML_MediaLib)

      DisableWindow(#Win_Main, 1)
      SetGadgetText(#G_TX_Main_ML_Status, "Suche..")


      ;Suche..
      ForEach MediaLibary()

        If Trim(LCase(MediaLibary()\album)) = sAlbum
          AddElement(MediaLibarySearch())
          MediaLibarySearch()\index = ListIndex(MediaLibary())
        EndIf

        While WindowEvent(): Wend
      Next

      ;DisplayResult
      ForEach MediaLibarySearch()
        If ListSize(MediaLibary()) >= MediaLibarySearch()\index
          SelectElement(MediaLibary(), MediaLibarySearch()\index)

          MediaLib_AddItem(MediaLibary()\title, MediaLibary()\artist, MediaLibary()\album, MediaLibary()\track, MediaLibary()\length, MediaLibary()\year, MediaLibary()\playcount, MediaLibary()\lastplay, -1)

          While WindowEvent(): Wend
        EndIf
      Next

      MediaLib_RefreshStatusText()
      MediaLib_RefreshHeader()
      DisableWindow(#Win_Main, 0)

      SetGadgetState(#G_LV_Main_ML_Category, -1)

      lMediaLibary_LastSearch    = #ML_Search_Album
      lMediaLibary_LastSearchSub = GetGadgetState(#G_LV_Main_ML_Album)
    EndIf
  EndIf
EndProcedure

Procedure MediaLib_Bookmark()
  Protected iNext.i

  DisableWindow(#Win_Main, 1)

  If ListSize(MediaLibarySearch()) = 0
    ;Database
    For iNext = 0 To CountGadgetItems(#G_LI_Main_ML_MediaLib) - 1
      If GetGadgetItemState(#G_LI_Main_ML_MediaLib, iNext) = 1
        If ListSize(MediaLibary()) >= iNext
          SelectElement(MediaLibary(), iNext)
          MediaLibary()\flags | #MediaLib_Flag_Bookmark
        EndIf
      EndIf
    Next
  Else
    ;SearchResult
    For iNext = 0 To CountGadgetItems(#G_LI_Main_ML_MediaLib) - 1
      If GetGadgetItemState(#G_LI_Main_ML_MediaLib, iNext) = 1
        If ListSize(MediaLibarySearch()) >= iNext
          SelectElement(MediaLibarySearch(), iNext)
          If ListSize(MediaLibary()) >= MediaLibarySearch()\index
            SelectElement(MediaLibary(), MediaLibarySearch()\index)
            MediaLibary()\flags | #MediaLib_Flag_Bookmark
          EndIf
        EndIf
      EndIf
    Next
  EndIf

  Save\Medialibary = 1
  DisableWindow(#Win_Main, 0)
EndProcedure

Procedure MediaLib_RemoveBookmark()
  Protected iNext.i

  DisableWindow(#Win_Main, 1)

  ;SearchResult
  For iNext = CountGadgetItems(#G_LI_Main_ML_MediaLib) - 1 To 0 Step -1
    If GetGadgetItemState(#G_LI_Main_ML_MediaLib, iNext) & #PB_ListIcon_Selected

      ;Remove
      If ListSize(MediaLibarySearch()) >= iNext
        SelectElement(MediaLibarySearch(), iNext)

        If ListSize(MediaLibary()) >= MediaLibarySearch()\index
          SelectElement(MediaLibary(), MediaLibarySearch()\index)
          If MediaLibary()\flags & #MediaLib_Flag_Bookmark
            MediaLibary()\flags &~ #MediaLib_Flag_Bookmark
          EndIf
        EndIf

        If lMediaLibary_LastSearch = #ML_Search_Bookmark
          DeleteElement(MediaLibarySearch())
          RemoveGadgetItem(#G_LI_Main_ML_MediaLib, iNext)
        EndIf
      EndIf

    EndIf
  Next

  Save\Medialibary = 1
  DisableWindow(#Win_Main, 0)
EndProcedure

Procedure MediaLib_AddToPlaylist(Type, ClearPL = 0)
  Protected lNext.i, sStatusText.s

  sStatusText = GetGadgetText(#G_TX_Main_ML_Status)

  SetGadgetText(#G_TX_Main_ML_Status, "Füge zur Playlist hinzu..")
  DisableWindow(#Win_Main, 1)

  If ClearPL > 0
    PlayList_Remove(-1)
    lSelect = 0
  EndIf

  If ListSize(MediaLibarySearch()) = 0
    ;Database
    For lNext = 0 To CountGadgetItems(#G_LI_Main_ML_MediaLib) - 1
      If GetGadgetItemState(#G_LI_Main_ML_MediaLib, lNext) = 1 Or Type = 1
        If ListSize(MediaLibary()) >= lNext
          SelectElement(MediaLibary(), lNext)
          PlayList_AddFile(MediaLibary()\path)
        EndIf
      EndIf
    Next
  Else
    ;SearchResult
    For lNext = 0 To CountGadgetItems(#G_LI_Main_ML_MediaLib) - 1
      If GetGadgetItemState(#G_LI_Main_ML_MediaLib, lNext) = 1 Or Type = 1
        If ListSize(MediaLibarySearch()) >= lNext
          SelectElement(MediaLibarySearch(), lNext)
          If ListSize(MediaLibary()) >= MediaLibarySearch()\index
            SelectElement(MediaLibary(), MediaLibarySearch()\index)
            PlayList_AddFile(MediaLibary()\path)
          EndIf
        EndIf
      EndIf
    Next
  EndIf

  SetGadgetText(#G_TX_Main_ML_Status, sStatusText)
  DisableWindow(#Win_Main, 0)
EndProcedure

Procedure MediaLib_Play()

  If lFMOD_System > 0  And GetGadgetState(#G_LI_Main_ML_MediaLib) <> -1
    Protected lPlayFlag.i

    If ListSize(MediaLibarySearch()) <= 0
      ;Database
      If ListSize(MediaLibary()) >= CountGadgetItems(#G_LI_Main_ML_MediaLib)
        SelectElement(MediaLibary(), GetGadgetState(#G_LI_Main_ML_MediaLib))
        lPlayFlag = 1
      EndIf
    Else
      ;SearchResult
      If ListSize(MediaLibarySearch()) >= GetGadgetState(#G_LI_Main_ML_MediaLib)
        SelectElement(MediaLibarySearch(), GetGadgetState(#G_LI_Main_ML_MediaLib))
        If ListSize(MediaLibary()) >= MediaLibarySearch()\index
          SelectElement(MediaLibary(), MediaLibarySearch()\index)
          lPlayFlag = 1
        EndIf
      EndIf
    EndIf

    If lPlayFlag > 0
      iChannelCallback_NextTrack = 1
      ;If PlayMedia(MediaLibary()\path, 1) = #FMOD_OK
      ;  ProcedureReturn #FMOD_OK
      ;EndIf
    EndIf

  EndIf

EndProcedure

Procedure MediaLib_Informationen()
  Protected sPath.s

  If lMediaLibary_LastSearch = #ML_Search_Show
    ;Database
    If ListSize(MediaLibary()) >= GetGadgetState(#G_LI_Main_ML_MediaLib)
      SelectElement(MediaLibary(), GetGadgetState(#G_LI_Main_ML_MediaLib))
      sPath = MediaLibary()\path
    EndIf
  Else
    ;SearchResult
    If ListSize(MediaLibarySearch()) >= GetGadgetState(#G_LI_Main_ML_MediaLib)
      SelectElement(MediaLibarySearch(), GetGadgetState(#G_LI_Main_ML_MediaLib))
      If ListSize(MediaLibary()) >= MediaLibarySearch()\index
        SelectElement(MediaLibary(), MediaLibarySearch()\index)
        sPath = MediaLibary()\path
      EndIf
    EndIf
  EndIf

  If lFMOD_System > 0 And FileSize(sPath) > 0

;     lFmod_Result = FMOD_System_CreateSound(lFMOD_System, @sPath, #FMOD_SOFTWARE|#FMOD_CREATESTREAM|#FMOD_2D|#FMOD_OPENONLY, 0, @lFMOD_SoundTemp)
;     If lFmod_Result = #FMOD_OK
;       ShowWindow_TitleInfo()
; 
;       ReadTagEx(lFMOD_SoundTemp)
; 
;       SetGadgetText(#G_SR_TitleInfo_Path,    sPath)
;       GadgetToolTip(#G_SR_TitleInfo_Path,    sPath)
; 
;       If Trim(ReadTag\title) = ""
;         ReadTag\title = GetFileNamePart(sPath)
;       EndIf
;       SetGadgetText(#G_SR_TitleInfo_Title,   ReadTag\title)
;       GadgetToolTip(#G_SR_TitleInfo_Title,   ReadTag\title)
; 
;       SetGadgetText(#G_SR_TitleInfo_Title,   ReadTag\title)
;       GadgetToolTip(#G_SR_TitleInfo_Title,   ReadTag\title)
;       SetGadgetText(#G_SR_TitleInfo_Artist,  ReadTag\artist)
;       GadgetToolTip(#G_SR_TitleInfo_Artist,  ReadTag\artist)
;       SetGadgetText(#G_SR_TitleInfo_Album,   ReadTag\album)
;       GadgetToolTip(#G_SR_TitleInfo_Album,   ReadTag\album)
;       If ReadTag\track > 0
;         SetGadgetText(#G_SR_TitleInfo_Number,  Str(ReadTag\track))
;         GadgetToolTip(#G_SR_TitleInfo_Number,  Str(ReadTag\track))
;       EndIf
;       SetGadgetText(#G_SR_TitleInfo_Genre,   ReadTag\genre)
;       GadgetToolTip(#G_SR_TitleInfo_Genre,   ReadTag\genre)
;       SetGadgetText(#G_SR_TitleInfo_Year,    ReadTag\year)
;       GadgetToolTip(#G_SR_TitleInfo_Year,    ReadTag\year)
;       SetGadgetText(#G_SR_TitleInfo_Comment, ReadTag\comment)
;       GadgetToolTip(#G_SR_TitleInfo_Comment, ReadTag\comment)
;       If ReadTag\bitrate > 0
;         SetGadgetText(#G_TX_TitleInfo_BitsC, Str(ReadTag\bitrate))
;       EndIf
;       If ReadTag\length > 0
;         SetGadgetText(#G_TX_TitleInfo_LengthC, TimeString(ReadTag\length))
;       EndIf
;       If ReadTag\frequency > 0
;         SetGadgetText(#G_TX_TitleInfo_SamplingRateC, Str(ReadTag\frequency))
;       EndIf
;       If ReadTag\channels > 0
;         SetGadgetText(#G_TX_TitleInfo_ChannelsC, Str(ReadTag\channels))
;       EndIf
;       If ReadTag\type > -1 And ReadTag\type <= #MaxSoundType
;         SetGadgetText(#G_TX_TitleInfo_VersionC, SoundType(ReadTag\type))
;       EndIf
;       SortStructuredList(Tag(), #PB_Sort_Ascending, OffsetOf(_Tag\name), #PB_Sort_String)
;       ForEach Tag()
;         AddGadgetItem(#G_LI_TitleInfo_Extended, -1, Tag()\name + Chr(10) + Tag()\string + Chr(10) + TagType(Tag()\type))
;       Next
; 
;       FMOD_Sound_Release(lFMOD_SoundTemp)
;     EndIf

  EndIf

EndProcedure

Procedure MediaLib_SOApply()
  ;Check
  If GetGadgetState(#G_CH_MLSearchO_Title) = 0 And GetGadgetState(#G_CH_MLSearchO_Artist) = 0 And GetGadgetState(#G_CH_MLSearchO_Album) = 0 And GetGadgetState(#G_CH_MLSearchO_Comment) = 0 And GetGadgetState(#G_CH_MLSearchO_Path) = 0 And GetGadgetState(#G_CH_MLSearchO_Filename) = 0 And GetGadgetState(#G_CB_MLSearchO_Year) = 0
    MsgBox_Exclamation("Sie haben alle Felder bei 'Suchen in' sowie 'Jahr' deaktiviert," + #CR$ + "Sie müssen jedoch minsestens eine Quelle angeben.")
    ProcedureReturn -1
  EndIf

  ;Apply..
  MLSearchO\cases     = GetGadgetState(#G_CH_MLSearchO_CaseS)
  MLSearchO\wholeword = GetGadgetState(#G_CH_MLSearchO_WholeWord)
  MLSearchO\played    = GetGadgetState(#G_CH_MLSearchO_Played)
  MLSearchO\year      = GetGadgetState(#G_CB_MLSearchO_Year)
  MLSearchO\searchin  = 0

  If GetGadgetState(#G_CH_MLSearchO_Title)
    MLSearchO\searchin | 2
  EndIf
  If GetGadgetState(#G_CH_MLSearchO_Artist)
    MLSearchO\searchin | 4
  EndIf
  If GetGadgetState(#G_CH_MLSearchO_Album)
    MLSearchO\searchin | 8
  EndIf
  If GetGadgetState(#G_CH_MLSearchO_Comment)
    MLSearchO\searchin | 16
  EndIf
  If GetGadgetState(#G_CH_MLSearchO_Path)
    MLSearchO\searchin | 32
  EndIf
  If GetGadgetState(#G_CH_MLSearchO_Filename)
    MLSearchO\searchin | 64
  EndIf

  CloseWindow_MLSearchOptions()
EndProcedure

Procedure MediaLib_SODefault()
  If IsWindow(#Win_MLSearchO)
    SetGadgetState(#G_CH_MLSearchO_CaseS, 0)
    SetGadgetState(#G_CH_MLSearchO_WholeWord, 0)
    SetGadgetState(#G_CH_MLSearchO_Played, 0)
    SetGadgetState(#G_CB_MLSearchO_Year, Date())
    SetGadgetState(#G_CB_MLSearchO_Year, 0)
    SetGadgetState(#G_CH_MLSearchO_Title, 1)
    SetGadgetState(#G_CH_MLSearchO_Artist, 1)
    SetGadgetState(#G_CH_MLSearchO_Album, 1)
    SetGadgetState(#G_CH_MLSearchO_Comment, 1)
    SetGadgetState(#G_CH_MLSearchO_Path, 1)
    SetGadgetState(#G_CH_MLSearchO_Filename, 0)
  EndIf
EndProcedure

;Fenstercallback während des Scanvorganges
Procedure MediaLib_ScanCallback()
  Protected lWindowEvent.i
  Static lRTime.i

  ;WindowLoop
  Repeat
    ;Refresh GUI
    If timeGetTime_() - lRTime >= 200 And IsWindow(#Win_MLScan) > 0
      lRTime = timeGetTime_()

      If lMediaLib_ScanStatus <> -1 And lMediaLib_ScanStatus <> 2
        If GetWindowTitle(#Win_MLScan) <> "Scanvorgang (" + TimeString(timeGetTime_() - lMediaLib_StartTime) + ")"
          SetWindowTitle(#Win_MLScan, "Scanvorgang (" + TimeString(timeGetTime_() - lMediaLib_StartTime) + ")")
        EndIf
      EndIf

      If GetGadgetText(#G_TX_MLScan_NFilesC) <> Str(lMediaLib_NFileCounter)
        SetGadgetText(#G_TX_MLScan_NFilesC, Str(lMediaLib_NFileCounter))
      EndIf
      If GetGadgetText(#G_TX_MLScan_RFilesC) <> Str(lMediaLib_IFileCounter)
        SetGadgetText(#G_TX_MLScan_RFilesC, Str(lMediaLib_IFileCounter))
      EndIf
      If GetGadgetText(#G_TX_MLScan_CFilesC) <> Str(lMediaLib_CFileCounter)
        SetGadgetText(#G_TX_MLScan_CFilesC, Str(lMediaLib_CFileCounter))
      EndIf
      If GetGadgetText(#G_TX_MLScan_CFileN) <> sMediaLib_CFile
        SetGadgetText(#G_TX_MLScan_CFileN, sMediaLib_CFile)
      EndIf
    EndIf

    lWindowEvent = WindowEvent()
    If lWindowEvent <> 0

      If lWindowEvent = #PB_Event_Gadget
        Select EventGadget()
          Case #G_BN_MLScan_Cancel
            lMediaLib_ScanStatus = 2
            CloseWindow_MediaLibScan()
            HideWindow(#Win_Main, 0)
            ShowWindow_Preferences()
            ProcedureReturn 0
          Case #G_BN_MLScan_Pause
            Select lMediaLib_ScanStatus
              Case -1 ;Start
                DisableGadget(#G_CH_MLScan_OnlyCheck, 1)
                SetGadgetText(#G_BN_MLScan_Pause, "Pause")
                lMediaLib_ScanStatus = 1
                lMediaLib_StartTime  = timeGetTime_()
                AddLogEntry("Begin Scan..")
              Case 0 ;Pause
                SetGadgetText(#G_BN_MLScan_Pause, "Pause")
                lMediaLib_ScanStatus = 1
              Case 1 ;Normal
                SetGadgetText(#G_BN_MLScan_Pause, "Weiter")
                lMediaLib_ScanStatus = 0
              Case 2 ;Fertig
                CloseWindow_MediaLibScan()
                HideWindow(#Win_Main, 0)
                ProcedureReturn 0
            EndSelect
        EndSelect
      EndIf

    Else
      If lMediaLib_ScanStatus <> 1: Delay(1): EndIf
    EndIf

    If lMediaLib_ScanStatus = 2 And IsWindow(#Win_MLScan) = 0
      ProcedureReturn 0
    EndIf

  Until lWindowEvent = 0 And lMediaLib_ScanStatus = 1

  ProcedureReturn 1
EndProcedure

;Fügt eine Datei zum Medienbibliothek hinzu
Procedure MediaLib_AddFile(File$)
  If lFMOD_System > 0

    Protected lFileExist.i, sExt.s, lType.i, lChange.i, iLength.i

    ForEach MediaLibary()
      If LCase(File$) = LCase(MediaLibary()\path)
        lFileExist = ListIndex(MediaLibary()) + 1
      EndIf
    Next

    sMediaLib_CFile = GetPathPart(File$)

;     lFmod_Result = FMOD_System_CreateSound(lFMOD_System, @File$, #FMOD_SOFTWARE|#FMOD_2D|#FMOD_CREATESTREAM|#FMOD_OPENONLY, 0, @lFMOD_SoundTemp)
;     If lFmod_Result = #FMOD_OK
;       lFMOD_Result = FMOD_Sound_GetFormat(lFMOD_SoundTemp, @lType, 0, 0, 0)
;       If lFMOD_Result = #FMOD_OK
; 
;         If lType <> #FMOD_SOUND_TYPE_PLAYLIST And lType <> #FMOD_SOUND_TYPE_UNKNOWN
; 
;           If lFileExist = 0
;             ;Add
;             lMediaLib_NFileCounter + 1
;             LastElement(MediaLibary())
;             AddElement(MediaLibary())
; 
;             ReadTagEx(lFMOD_SoundTemp)
; 
;             ;Title
;             MediaLibary()\title    = ReadTag\title
;             If Trim(MediaLibary()\title) = ""
;               MediaLibary()\title = GetFileNamePart(File$)
;             EndIf
;             ;Artist
;             MediaLibary()\artist   = ReadTag\artist
;             ;Album
;             MediaLibary()\album    = ReadTag\album
;             ;Year
;             MediaLibary()\year     = ReadTag\year
;             ;Track
;             MediaLibary()\track    = ReadTag\track
;             ;Comment
;             MediaLibary()\comment  = ReadTag\comment
;             ;Genre
;             MediaLibary()\genre    = ReadTag\genre
;             ;Path
;             MediaLibary()\path     = File$
;             ;Length
;             lFmod_Result = FMOD_Sound_GetLength(lFMOD_SoundTemp, @MediaLibary()\length, #FMOD_TIMEUNIT_MS)
;             If lFMOD_Result <> #FMOD_OK
;               MediaLibary()\length = -1
;             EndIf
; 
;             Save\Medialibary = 1
;           Else
;             ;Select
;             If ListSize(MediaLibary()) >= lFileExist - 1
;               SelectElement(MediaLibary(), lFileExist - 1)
; 
;               ReadTagEx(lFMOD_SoundTemp)
; 
;               ;Title
;               If ReadTag\title <> ""
;                 If MediaLibary()\title <> ReadTag\title
;                   MediaLibary()\title = ReadTag\title
;                   lChange + 1
;                 EndIf
;               Else
;                 If MediaLibary()\title <> GetFileNamePart(File$)
;                   MediaLibary()\title = GetFileNamePart(File$)
;                   lChange + 1
;                 EndIf
;               EndIf
;               ;Artist
;               If MediaLibary()\artist <> ReadTag\artist
;                 MediaLibary()\artist = ReadTag\artist
;                 lChange + 1
;               EndIf
;               ;Album
;               If MediaLibary()\album <> ReadTag\album
;                 MediaLibary()\album = ReadTag\album
;                 lChange + 1
;               EndIf
;               ;Year
;               If MediaLibary()\year <> ReadTag\year
;                 MediaLibary()\year = ReadTag\year
;                 lChange + 1
;               EndIf
;               ;Track
;               If MediaLibary()\track <> ReadTag\track
;                 MediaLibary()\track = ReadTag\track
;                 lChange + 1
;               EndIf
;               ;Comment
;               If MediaLibary()\comment <> ReadTag\comment
;                 MediaLibary()\comment = ReadTag\comment
;                 lChange + 1
;               EndIf
;               ;Genre
;               If MediaLibary()\genre <> ReadTag\genre
;                 MediaLibary()\genre = ReadTag\genre
;                 lChange + 1
;               EndIf
;               ;Length
;               lFmod_Result = FMOD_Sound_GetLength(lFMOD_SoundTemp, @iLength, #FMOD_TIMEUNIT_MS)
;               If lFMOD_Result <> #FMOD_OK
;                 If MediaLibary()\length <> -1
;                   MediaLibary()\length = -1
;                   lChange + 1
;                 EndIf
;               Else
;                 If MediaLibary()\length <> iLength
;                   MediaLibary()\length = iLength
;                   lChange + 1
;                 EndIf
;               EndIf
; 
;               If lChange > 0
;                 lMediaLib_CFileCounter + 1
;                 Save\Medialibary = 1
;               EndIf
; 
;             EndIf
;           EndIf
; 
;         EndIf
;       EndIf
; 
;       FMOD_Sound_Release(lFMOD_SoundTemp)
;     EndIf

  EndIf
EndProcedure

;Scannt einen Ordner
Procedure MediaLib_ScanFolder(Folder$)
  If Trim(Folder$) <> ""
    Protected hFolder.i, sEntry.s, sExtension.s

    PathAddBackslash_(Folder$)

    lMediaLib_ScanCounter + 1

    hFolder = ExamineDirectory(#PB_Any, Folder$, "*.*")
    If hFolder <> 0
      While NextDirectoryEntry(hFolder)
        sEntry     = DirectoryEntryName(hFolder)
        sExtension = GetExtensionPart(sEntry)

        Select DirectoryEntryType(hFolder)
          Case #PB_DirectoryEntry_File
            MediaLib_AddFile(Folder$ + sEntry)
          Case #PB_DirectoryEntry_Directory
            If Left(sEntry, 1) <> "."
              MediaLib_ScanFolder(Folder$ + sEntry)
            EndIf
        EndSelect

        If MediaLib_ScanCallback() = 0 : ProcedureReturn 0 : EndIf
      Wend

      FinishDirectory(hFolder)
    EndIf

    lMediaLib_ScanCounter - 1

    ;Complete
    If lMediaLib_ScanCounter <= 0
      lMediaLib_ScanStatus = 2
      ProcedureReturn 1
    EndIf

  EndIf
EndProcedure

;Scannt nach ungültigen Dateien
Procedure MediaLib_ScanInvFiles()
  ForEach MediaLibary()
    sMediaLib_CFile = GetPathPart(MediaLibary()\path)

    ;Invalid File Found
    If FileSize(MediaLibary()\path) < 1
      lMediaLib_IFileCounter + 1
      DeleteElement(MediaLibary())
    EndIf

    If MediaLib_ScanCallback() = 0 : ProcedureReturn 0 : EndIf
  Next

  ProcedureReturn 1
EndProcedure

;Startet denn Scanvorgang
Procedure MediaLib_StartScan(Folder$)
  Protected sMainFolder.s, iNext.i

  sMainFolder = Trim(Folder$)
  If sMainFolder <> ""

    ;Check MainFolder
    If sMainFolder = ""
      MsgBox_Exclamation("Sie müssen zuerst den Hauptordner der Medienbibliothek festlegen")
      ProcedureReturn -1
    ElseIf FileSize(sMainFolder) <> -2
      MsgBox_Exclamation("Ungültiger Ordner" + #CR$ + "'" + sMainFolder + "'")
      ProcedureReturn -1
    EndIf

    ;StopMedia
    If IsPlaying() <> 0 : SetStop() : EndIf

    ;GUI
    If IsWindow(#Win_Main): HideWindow(#Win_Main, 1): EndIf
    CloseAllwindows()
    ShowWindow_MediaLibScan()

    ;Reset
    lMediaLib_StartTime      = timeGetTime_() ;Zeitberechnung
    lMediaLib_ScanCounter    = 0              ;Menge aktuell vorhandener FolderScan Prozeduren
    lMediaLib_ScanStatus     = -1             ;Status
    lMediaLib_IFileCounter   = 0              ;Ungültige Dateien
    lMediaLib_NFileCounter   = 0              ;Neue Dateien
    lMediaLib_CFileCounter   = 0              ;Geänderte Dateien
    sMediaLib_CFile          = ""             ;Aktuelle Datei
    Save\Medialibary         = 1              ;Speicherflag für MediaBibliothek

    ;Scan
    SetGadgetText(#G_TX_MLScan_Process, "Klicken Sie auf 'Start' um fortzusetzen")
    If MediaLib_ScanCallback() = 0 : ProcedureReturn 0 : EndIf

    AddLogEntry("Scan for Invalid Entries..")
    SetGadgetText(#G_TX_MLScan_Process, "Suche nach ungültige Dateien..")
    If MediaLib_ScanInvFiles() = 0 : ProcedureReturn 0 : EndIf

    If GetGadgetState(#G_CH_MLScan_OnlyCheck) < 1
      AddLogEntry("Scan for New Entries..")
      SetGadgetText(#G_TX_MLScan_Process, "Suche nach neuen Dateien..")
      If MediaLib_ScanFolder(sMainFolder) = 0 : ProcedureReturn 0 : EndIf
    EndIf

    AddLogEntry("Scan Complete")
    SetGadgetText(#G_TX_MLScan_NFilesC, Str(lMediaLib_NFileCounter))
    SetGadgetText(#G_TX_MLScan_RFilesC, Str(lMediaLib_IFileCounter))
    SetGadgetText(#G_TX_MLScan_CFilesC, Str(lMediaLib_CFileCounter))
    lMediaLib_ScanStatus = 2
    SetGadgetText(#G_TX_MLScan_Process, "Fertig")
    sMediaLib_CFile = ""
    SetGadgetText(#G_TX_MLScan_CFileN, "")
    SetGadgetText(#G_BN_MLScan_Pause, "OK")
    SetWindowTitle(#Win_MLScan, "Scanvorgang (" + TimeString(timeGetTime_() - lMediaLib_StartTime) + ")")
    DisableGadget(#G_BN_MLScan_Cancel, 1)
    MediaLib_ScanCallback()
    ProcedureReturn 1
  Else
    MsgBox_Exclamation("Ungültiger Stammordner")
  EndIf
EndProcedure

Procedure MediaLib_StartScanDefinedFolder()

  Protected sFolder.s, sResult.s

  sFolder = Trim(Pref\medialibpath)
  If sFolder <> "" And FileSize(sFolder) = -2

    sResult = PathRequester("Ordner scanen", sFolder)
    If sResult <> ""
      If sFolder = Left(sResult, Len(sFolder))
        MediaLib_StartScan(sResult)
      Else
        MsgBox_Exclamation("Ungültige Ordnerangabe, Ordner muss sich innerhalb des Stammordners befinden.")
      EndIf
    EndIf

  Else
    MsgBox_Exclamation("Ungültiger Stammordner")
  EndIf

EndProcedure

Procedure MediaLib_ChangePath()
  Protected sResult.s = Trim(Pref\medialibpath)

  If FileSize(sResult) <> -2 : sResult = GetCurrentDirectory() : EndIf

  sResult = PathRequester("Pfad zur Medienbibliothek:", sResult)
  If FileSize(sResult) = -2 And LCase(Trim(Pref\medialibpath)) <> LCase(sResult)
    SetGadgetText(#G_SR_Pref_MediaLibPath, sResult)
  EndIf
EndProcedure

Procedure MediaLib_AutoComplete()
  Protected iItem.i, iItemCount.i, sInput.s, iInputLen.i
  Static iInputLenSave.i

  sInput    = UCase(GetGadgetText(#G_SR_Main_ML_Search))
  iInputLen = Len(sInput)

  If iInputLen <= iInputLenSave
    iInputLenSave = iInputLen
  ElseIf iInputLen
    ForEach MediaLibary()
      If sInput = UCase(Left(MediaLibary()\title, iInputLen))
        SetGadgetText(#G_SR_Main_ML_Search, MediaLibary()\title)
        SendMessage_(GadgetID(#G_SR_Main_ML_Search), #EM_SETSEL, iInputLen, -1)
        iInputLenSave = iInputLen
        Break
      ElseIf sInput = UCase(Left(MediaLibary()\artist, iInputLen))
        SetGadgetText(#G_SR_Main_ML_Search, MediaLibary()\artist)
        SendMessage_(GadgetID(#G_SR_Main_ML_Search), #EM_SETSEL, iInputLen, -1)
        iInputLenSave = iInputLen
        Break
      ElseIf sInput = UCase(Left(MediaLibary()\album, iInputLen))
        SetGadgetText(#G_SR_Main_ML_Search, MediaLibary()\album)
        SendMessage_(GadgetID(#G_SR_Main_ML_Search), #EM_SETSEL, iInputLen, -1)
        iInputLenSave = iInputLen
        Break
      EndIf

    Next
  EndIf
EndProcedure

Procedure.i InternetStream_ServerCheck()

  If IsWindow(#Win_InternetStream)

    Protected iDisable.i, sShoutCastURL.s

    sShoutCastURL = Trim(LCase(GetGadgetText(#G_SR_InternetStream_URL)))

    If sShoutCastURL <> "" And Len(sShoutCastURL) > 7 And Left(LCase(sShoutCastURL), 7) = "http://"

      ForEach Shoutcast()
        If LCase(Trim(Shoutcast()\url)) = sShoutCastURL
          iDisable = 1
          Break
        EndIf
      Next

    Else

      iDisable = 1

    EndIf

    DisableGadget(#G_BN_InternetStream_ServerSave, iDisable)

    If GetGadgetState(#G_LI_InternetStream_Server) > -1 And ListSize(Shoutcast()) >= GetGadgetState(#G_LI_InternetStream_Server)
      DisableGadget(#G_BN_InternetStream_ServerDelete, 0)
    Else
      DisableGadget(#G_BN_InternetStream_ServerDelete, 1)
    EndIf

  EndIf

EndProcedure

Procedure.i InternetStream_ServerSave()

  Protected iSave.i, sShoutCastURL.s

  sShoutCastURL  = Trim(LCase(GetGadgetText(#G_SR_InternetStream_URL)))
  iSave          = 1

  ForEach Shoutcast()
    If LCase(Trim(Shoutcast()\url)) = sShoutCastURL
      iSave = 0
      Break
    EndIf
  Next

  If iSave = 1

    LastElement(Shoutcast())
    AddElement(Shoutcast())
    Shoutcast()\name = "Unbekannt"
    Shoutcast()\url  = sShoutCastURL
    AddGadgetItem(#G_LI_InternetStream_Server, -1, Shoutcast()\name + Chr(10) + Shoutcast()\url)

    Save\Shoutcast = 1
  EndIf

EndProcedure

Procedure.i InternetStream_ServerDelete()

  Protected iSel.i

  iSel = GetGadgetState(#G_LI_InternetStream_Server)
  If ListSize(Shoutcast()) >= iSel
    SelectElement(Shoutcast(), iSel)

    If MessageRequester("Server löschen", "Server '" + Shoutcast()\url + "' wirklich löschen?", #MB_ICONQUESTION|#MB_YESNO|#MB_DEFBUTTON2) = #IDYES
      DeleteElement(Shoutcast())
      RemoveGadgetItem(#G_LI_InternetStream_Server, iSel)
      Save\Shoutcast = 1
    EndIf

  EndIf

EndProcedure

Procedure.i Plugin_Reload()
  If FileSize(ExePath() + #Folder_Plugins) = -2
    Protected hDir.i, sEntry.s, hDLL.i

    ;Generate Pluginlist
    hDir = ExamineDirectory(#PB_Any, ExePath() + #Folder_Plugins, "*.dll")
    If hDir <> 0

      While NextDirectoryEntry(hDir)
        If DirectoryEntryType(hDir) = #PB_DirectoryEntry_File
          sEntry = ExePath() + #Folder_Plugins + DirectoryEntryName(hDir)

          ;OpenPlugin
          hDLL = OpenLibrary(#PB_Any, sEntry)
          If hDLL <> 0
            If GetFunction(hDLL, #DLL_FuncCheck)
              Protected *P._DLLPlugin = CallFunction(hDLL, #DLL_FuncCheck, lWinID_Main)
              If *P
                If *P\size = SizeOf(_DLLPlugin) And *P\stable >= #PrgVers
                  AddElement(Plugin())
                  Plugin()\file        = sEntry
                  Plugin()\autor       = *P\autor
                  Plugin()\version     = *P\version
                  plugin()\description = *P\description
                EndIf
              EndIf
            EndIf
            CloseLibrary(hDLL)
          EndIf

        EndIf
      Wend

      FinishDirectory(hDir)
    EndIf

  EndIf
EndProcedure

Procedure WinCallback(hWnd, Msg, lParam, wParam)

  Protected iResult.i = #PB_ProcessPureBasicEvents



  ProcedureReturn iResult

EndProcedure

Procedure Plugin_Enable(File$)
  If FileSize(ExePath() + #Folder_Plugins + File$) > 0
    ForEach Plugin()

      If LCase(Trim(GetFilePart(Plugin()\file))) = LCase(Trim(GetFilePart(File$)))
        Plugin()\handle = OpenLibrary(#PB_Any, Plugin()\file)
        If Plugin()\handle = 0
          SetGadgetItemState(#G_LI_Pref_Plugins, ListIndex(Plugin()), 0)
        Else

          If GetFunction(Plugin()\handle, #DLL_FuncOpen)
            If CallFunction(Plugin()\handle, #DLL_FuncOpen, lWinID_Main, CurrPlay) <> 1
              CloseLibrary(Plugin()\handle)
              Plugin()\handle = 0
            EndIf
          Else
            CloseLibrary(Plugin()\handle)
            Plugin()\handle = 0
          EndIf

        EndIf
      EndIf

    Next
  EndIf
EndProcedure

Procedure Preferences_ChangeArea()
  Protected iNext.i, iHideS.i, iHideE.i
  Static iLArea.i

  ;DefaultArea
  If GetGadgetState(#G_TR_Pref_Menu) = -1
    iLArea = -1
    SetGadgetState(#G_TR_Pref_Menu, iLPercentArea)
  EndIf

  If GetGadgetState(#G_TR_Pref_Menu) <> iLArea

    ;HideAll
    For iNext = #G_PrefS To #G_PrefE
      If IsGadget(iNext)
        HideGadget(iNext, 1)
      Else
        Debug "ERROR: Gadget " + Str(iNext) + " not initialized"
      EndIf
    Next

    ;Show
    Select GetGadgetState(#G_TR_Pref_Menu)
      Case 0 ;fmod
        iHideS = #G_TX_Pref_OutputMode
        iHideE = #G_BN_Pref_DefaultFMODEX
      Case 1 ;Playing
        iHideS = #G_FR_Pref_Equilizer
        iHideE = #G_BN_Pref_SpeedNormal
      Case 2 ;Windows
        iHideS = #G_CH_Pref_OnTop
        iHideE = #G_CB_Pref_LengthFormat
      Case 3 ;MediaLib
        iHideS = #G_TX_Pref_MediaLibPath
        iHideE = #G_SP_Pref_PlayCounterPercent
      Case 4 ;Misc
        iHideS = #G_CH_Pref_Loging
        iHideE = #G_CH_Pref_EndQuestion
      Case 5 ;Plugins
        iHideS = #G_LI_Pref_Plugins
        iHideE = #G_LI_Pref_Plugins
      Case 6 ;Statics
        iHideS = #G_TX_Pref_PlayTime
        iHideE = #G_BN_Pref_ResetStatistics
    EndSelect
    For iNext = iHideS To iHideE
      If IsGadget(iNext)
        HideGadget(iNext, 0)
      Else
        Debug "ERROR: Gadget " + Str(iNext) + " not initialized"
      EndIf
    Next

    iLArea = GetGadgetState(#G_TR_Pref_Menu)
  EndIf

  SetActiveGadget(#G_TR_Pref_Menu)

EndProcedure

Procedure Preferences_InitWindow()

  ;fmod
  SetGadgetState(#G_CB_Pref_OutputMode, Pref\outputmode)
  ClearGadgetItems(#G_CB_Pref_OutputDriver)
  ForEach Driver()
    AddGadgetItem(#G_CB_Pref_OutputDriver, -1, Driver())
  Next
  SetGadgetState(#G_CB_Pref_OutputDriver, Pref\outputdriver)
  SetGadgetState(#G_CB_Pref_OutputRate, Pref\outputrate)
  SetGadgetState(#G_CB_Pref_ResamplingMethod, Pref\interpolation)
  SetGadgetState(#G_CB_Pref_SpeakerMode, Pref\speakermode)
  SetGadgetText(#G_CB_Pref_StreamBufferSize, Str(Pref\streambuffer))

  ;MediaLib
  SetGadgetText(#G_SR_Pref_MediaLibPath, Pref\medialibpath)
  SetGadgetState(#G_CH_Pref_AddPlayFiles, Pref\addplayfiles)
  SetGadgetState(#G_SP_Pref_PlayCounterPercent, Pref\playcountpercent)

  ;Windows
  SetGadgetState(#G_CH_Pref_OnTop, Pref\ontop)

  SetGadgetState(#G_CH_Pref_Opacity, Pref\opacity)
  SetGadgetState(#G_TB_Pref_Opacity, Pref\opacityval)

  SetGadgetState(#G_CH_Pref_Magnetic, Pref\magnetic)
  SetGadgetState(#G_TB_Pref_MagneticVal, Pref\magneticval)

  SetGadgetState(#G_CH_Pref_AutoClmnwPL, Pref\autoclnw_pl)
  SetGadgetState(#G_CH_Pref_AutoClmnwML, Pref\autoclnw_ml)

  SetGadgetText(#G_CB_Pref_LengthFormat, Pref\lengthformat)

  SetGadgetItemData(#G_LV_Pref_Layout, 0, Pref\color_ti_bg)
  SetGadgetItemData(#G_LV_Pref_Layout, 1, Pref\color_ti_tx)
  SetGadgetItemData(#G_LV_Pref_Layout, 2, Pref\color_sel_bg)
  SetGadgetItemData(#G_LV_Pref_Layout, 3, Pref\color_sel_tx)

  ;Misc
  SetGadgetState(#G_CH_Pref_Loging, Pref\loging)
  SetGadgetState(#G_CH_Pref_LogingDelStart, Pref\logingdelstart)
  SetGadgetState(#G_CH_Pref_Clipboard, Pref\clipboard)
  SetGadgetState(#G_CH_Pref_AutoPlayList, Pref\pl_auto)

  SetGadgetState(#G_CH_Pref_AutoSavePf, Pref\autosave_pf)
  SetGadgetState(#G_CH_Pref_AutoSaveIS, Pref\autosave_is)
  SetGadgetState(#G_CH_Pref_AutoSavePL, Pref\autosave_pl)
  SetGadgetState(#G_CH_Pref_AutoSaveML, Pref\autosave_ml)
  SetGadgetState(#G_SP_Pref_AutoSaveIntervall, ((Pref\autosave_intervall / 1000) / 60))

  SetGadgetState(#G_CH_Pref_EndQuestion, Pref\endquestion)

  ;Plugins
  ForEach Plugin()
    AddGadgetItem(#G_LI_Pref_Plugins, -1, GetFilePart(Plugin()\file) + Chr(10) + Plugin()\autor + Chr(10) + StrF(Plugin()\version/100, 2) + Chr(10) + Plugin()\description)
    If Plugin()\handle > 0
      SetGadgetItemState(#G_LI_Pref_Plugins, ListIndex(Plugin()), #PB_ListIcon_Checked)
    EndIf
  Next

  ;Statics
  SetGadgetText(#G_TX_Pref_PlayTimeC, TimeString(Pref\playtime))
  SetGadgetText(#G_TX_Pref_PlayedSongs_StartC, Str(Pref\playcount_s))
  SetGadgetText(#G_TX_Pref_PlayedSongs_EndC, Str(Pref\playcount_e))

  Preferences_CheckButtons()

EndProcedure

Procedure Preferences_Apply()

  ;fmod
  Pref\outputmode    = GetGadgetState(#G_CB_Pref_OutputMode)
  Pref\outputdriver  = GetGadgetState(#G_CB_Pref_OutputDriver)
  Pref\outputrate    = GetGadgetState(#G_CB_Pref_OutputRate)
  Pref\interpolation = GetGadgetState(#G_CB_Pref_ResamplingMethod)
  Pref\speakermode   = GetGadgetState(#G_CB_Pref_SpeakerMode)
  Pref\streambuffer  = Val(GetGadgetText(#G_CB_Pref_StreamBufferSize))

  If lFMOD_System = 0
    ;FM_InitSystem()
  EndIf

  ;MediaLib
  If Pref\medialibpath <> GetGadgetText(#G_SR_Pref_MediaLibPath)
    If ListSize(MediaLibary()) > 0
      If MessageRequester(#PrgName, "Sie haben denn Stammordner der Medienbibliothek verändert," + #CR$ + "möchten Sie alte Einträge entfernen?", #MB_YESNO|#MB_DEFBUTTON2|#MB_ICONQUESTION) = #IDYES
        ClearList(MediaLibary())
      EndIf
    EndIf
  EndIf
  Pref\medialibpath = Trim(GetGadgetText(#G_SR_Pref_MediaLibPath))
  Pref\addplayfiles = GetGadgetState(#G_CH_Pref_AddPlayFiles)
  Pref\playcountpercent = GetGadgetState(#G_SP_Pref_PlayCounterPercent)

  ;Windows
  Pref\ontop = GetGadgetState(#G_CH_Pref_OnTop)
  StickyWindow(#Win_Main, Pref\ontop)
  Pref\opacity = GetGadgetState(#G_CH_Pref_Opacity)
  Pref\opacityval = GetGadgetState(#G_TB_Pref_Opacity)
  Window_ChangeOpacity()
  Pref\magnetic = GetGadgetState(#G_CH_Pref_Magnetic)
  Pref\magneticval = GetGadgetState(#G_TB_Pref_MagneticVal)
  Pref\autoclnw_pl = GetGadgetState(#G_CH_Pref_AutoClmnwPL)
  PlayList_RefreshHeader()
  Pref\autoclnw_ml = GetGadgetState(#G_CH_Pref_AutoClmnwML)
  MediaLib_RefreshHeader()
  Pref\lengthformat = GetGadgetText(#G_CB_Pref_LengthFormat)
  Pref\color_ti_bg  = GetGadgetItemData(#G_LV_Pref_Layout, 0)
  Pref\color_ti_tx  = GetGadgetItemData(#G_LV_Pref_Layout, 1)
  Pref\color_sel_bg = GetGadgetItemData(#G_LV_Pref_Layout, 2)
  Pref\color_Sel_tx = GetGadgetItemData(#G_LV_Pref_Layout, 3)
  Window_ChangeColor()
  Pref\lengthformat = Trim(GetGadgetText(#G_CB_Pref_LengthFormat))

  ;Misc
  Pref\loging         = GetGadgetState(#G_CH_Pref_Loging)
  Pref\logingdelstart = GetGadgetState(#G_CH_Pref_LogingDelStart)
  Pref\clipboard      = GetGadgetState(#G_CH_Pref_Clipboard)
  Pref\pl_auto        = GetGadgetState(#G_CH_Pref_AutoPlayList)

  Pref\autosave_pf        = GetGadgetState(#G_CH_Pref_AutoSavePf)
  Pref\autosave_is        = GetGadgetState(#G_CH_Pref_AutoSaveIS)
  Pref\autosave_pl        = GetGadgetState(#G_CH_Pref_AutoSavePL)
  Pref\autosave_ml        = GetGadgetState(#G_CH_Pref_AutoSaveML)
  Pref\autosave_intervall = ((GetGadgetState(#G_SP_Pref_AutoSaveIntervall) * 1000) * 60)

  Save\Preferences_Time = timeGetTime_()
  Save\PlayList_Time    = timeGetTime_() + 10000
  Save\Medialibary_Time = timeGetTime_() + 20000
  Save\Shoutcast_Time   = timeGetTime_() + 30000

  Pref\endquestion = GetGadgetState(#G_CH_Pref_EndQuestion)

  ;Plugins
  ForEach Plugin()
    If GetGadgetItemState(#G_LI_Pref_Plugins, ListIndex(Plugin())) & #PB_ListIcon_Checked

      ;Enable
      If Plugin()\handle = 0
        Plugin()\handle = OpenLibrary(#PB_Any, Plugin()\file)
        If Plugin()\handle > 0
          If GetFunction(Plugin()\handle, #DLL_FuncOpen)
            If CallFunction(Plugin()\handle, #DLL_FuncOpen, lWinID_Main, CurrPlay) <> 1
              CloseLibrary(Plugin()\handle)
              Plugin()\handle = 0
              SetGadgetItemState(#G_LI_Pref_Plugins, ListIndex(Plugin()), 0)
            EndIf
          Else
            CloseLibrary(Plugin()\handle)
            Plugin()\handle = 0
          EndIf
        EndIf
      EndIf

    Else

      ;Disable
      If IsLibrary(Plugin()\handle)
        If GetFunction(Plugin()\handle, #DLL_FuncClose) : CallFunction(Plugin()\handle, #DLL_FuncClose) : EndIf
        CloseLibrary(Plugin()\handle)
        Plugin()\handle = 0
      EndIf

    EndIf
  Next

  Save\Preferences = 1

  Preferences_CheckButtons()

EndProcedure

Procedure Preferences_CheckButtons()
  If IsWindow(#Win_Preferences)
    Protected iEnable.i = 1

    ;fmod
    If lFMOD_System = 0
      iEnable = 0
    EndIf

    ;MediaLib
    If Pref\medialibpath <> GetGadgetText(#G_SR_Pref_MediaLibPath)
      iEnable = 0
    EndIf
    If Pref\addplayfiles <> GetGadgetState(#G_CH_Pref_AddPlayFiles)
      iEnable = 0
    EndIf
    If Pref\playcountpercent <> GetGadgetState(#G_SP_Pref_PlayCounterPercent)
      iEnable = 0
    EndIf

    ;Windows
    If Pref\ontop <> GetGadgetState(#G_CH_Pref_OnTop)
      iEnable = 0
    EndIf
    If Pref\opacity <> GetGadgetState(#G_CH_Pref_Opacity) Or Pref\opacityval <> GetGadgetState(#G_TB_Pref_Opacity)
      iEnable = 0
    EndIf
    If Pref\magnetic <> GetGadgetState(#G_CH_Pref_Magnetic)
      iEnable = 0
    EndIf
    If Pref\magneticval <> GetGadgetState(#G_TB_Pref_MagneticVal)
      iEnable = 0
    EndIf

    If Pref\color_ti_bg <> GetGadgetItemData(#G_LV_Pref_Layout, 0) Or Pref\color_ti_tx <> GetGadgetItemData(#G_LV_Pref_Layout, 1)
      iEnable = 0
    EndIf
    If Pref\color_sel_bg <> GetGadgetItemData(#G_LV_Pref_Layout, 2) Or Pref\color_sel_tx <> GetGadgetItemData(#G_LV_Pref_Layout, 3)
      iEnable = 0
    EndIf

    If Pref\autoclnw_pl <> GetGadgetState(#G_CH_Pref_AutoClmnwPL) Or Pref\autoclnw_ml <> GetGadgetState(#G_CH_Pref_AutoClmnwML)
      iEnable = 0
    EndIf

    If Pref\lengthformat <> GetGadgetText(#G_CB_Pref_LengthFormat)
      iEnable = 0
    EndIf

    ;Misc
    If GetGadgetState(#G_CH_Pref_Loging) <> Pref\loging
      iEnable = 0
    EndIf
    If GetGadgetState(#G_CH_Pref_LogingDelStart) <> Pref\logingdelstart
      iEnable = 0
    EndIf
    If GetGadgetState(#G_CH_Pref_Clipboard) <> Pref\clipboard
      iEnable = 0
    EndIf
    If GetGadgetState(#G_CH_Pref_AutoPlayList) <> Pref\pl_auto
      iEnable = 0
    EndIf

    If Pref\autosave_pf <> GetGadgetState(#G_CH_Pref_AutoSavePf)
      iEnable = 0
    EndIf
    If Pref\autosave_is <> GetGadgetState(#G_CH_Pref_AutoSaveIS)
      iEnable = 0
    EndIf
    If Pref\autosave_pl <> GetGadgetState(#G_CH_Pref_AutoSavePL)
      iEnable = 0
    EndIf
    If Pref\autosave_ml <> GetGadgetState(#G_CH_Pref_AutoSaveML)
      iEnable = 0
    EndIf
    If Pref\autosave_intervall <> ((GetGadgetState(#G_SP_Pref_AutoSaveIntervall) * 1000) * 60)
      iEnable = 0
    EndIf

    If Pref\endquestion <> GetGadgetState(#G_CH_Pref_EndQuestion)
      iEnable = 0
    EndIf

    ;Plugins
    ForEach Plugin()
      If Plugin()\handle = 0 And GetGadgetItemState(#G_LI_Pref_Plugins, ListIndex(Plugin())) & #PB_ListIcon_Checked
        iEnable = 0
      EndIf
      If Plugin()\handle > 0 And GetGadgetItemState(#G_LI_Pref_Plugins, ListIndex(Plugin())) & #PB_ListIcon_Checked = 0
        iEnable = 0
      EndIf
    Next

    DisableGadget(#G_BN_Pref_Apply, iEnable)
  EndIf
EndProcedure

Procedure.i Order_InitWindow()

  SetGadgetState(#G_CB_Order_Event, Order\event)
  SetGadgetState(#G_CB_Order_Order, Order\order)

EndProcedure

Procedure.i Order_Apply()

  Protected iResult.i

  Order\event = GetGadgetState(#G_CB_Order_Event)
  Order\order = GetGadgetState(#G_CB_Order_Order)

  If Order\event = 0
    Order\order = 0
  EndIf
  If Order\order = 0
    Order\event = 0
  EndIf

  ProcedureReturn iResult

EndProcedure

Procedure.i Order_Run()

  Select Order\order

    Case 2 ; End

    Case 3 ; Shutdown

    Case 4 ; Unsubscribe

  EndSelect

EndProcedure

Procedure ListIconGadget_ChangeColumnAlign(Align)
  If iLastHeaderRClick > 0 And iLastHeaderRClickIndex > 0
    Protected iAccept.i, iGadget.i

    Select iLastHeaderRClick
      ;PlayList
      Case SendMessage_(GadgetID(#G_LI_Main_PL_PlayList), #LVM_GETHEADER, #Null, #Null)
        iAccept = 1
        iGadget = #G_LI_Main_PL_PlayList
        ;MediaLibary
      Case SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #LVM_GETHEADER, #Null, #Null)
        iAccept = 1
        iGadget = #G_LI_Main_ML_MediaLib
    EndSelect

    If iAccept > 0 And IsGadget(iGadget)
      Select Align
        Case #Mnu_ListIconGadget_AlignL : ListIconGadget_SetColumnAlign(iGadget, iLastHeaderRClickIndex, #LVCFMT_LEFT)
        Case #Mnu_ListIconGadget_AlignC : ListIconGadget_SetColumnAlign(iGadget, iLastHeaderRClickIndex, #LVCFMT_CENTER)
        Case #Mnu_ListIconGadget_AlignR : ListIconGadget_SetColumnAlign(iGadget, iLastHeaderRClickIndex, #LVCFMT_RIGHT)
      EndSelect
    EndIf

  EndIf
EndProcedure

Procedure Open_File(Play = 0, Clear = 0)
  Protected sFile.s, sLength.s{128}, lFileID.i, lTagMem.i, lType.i

  sFile = OpenFileRequester("Öffnen", GetCurrentDirectory(), "Alle Unterstützen Formate|" + #AllTypes + "|Playlist (" + #PlayLTypes + ")|" + #PlayLTypes + "|Audio (" + #AudioTypes + ")|" + #AudioTypes + "|Alle Dateien|*.*", 0, #PB_Requester_MultiSelection)
  If sFile <> ""
    SetCurrentDirectory(GetPathPart(sFile))

    If Clear >= 1
      Playlist_Remove(-1)
    EndIf

    While sFile
      Playlist_AddFile(sFile)
      While WindowEvent(): Wend
      sFile = NextSelectedFileName()
    Wend

    If ListSize(PlayList()) > 0 And iSizeTypeOld <> #SizeType_Playlist
      Window_ChangeSize(#Mnu_Main_TB2_PlayList)
    EndIf

    If ListSize(PlayList()) > 0 And Play >= 1
      PlayList_ChangeSelect(0)
    EndIf

  EndIf
EndProcedure

Procedure Open_Folder(Play = 0, Clear = 0)
  Protected sPath.s, lFolder.i, sFile.s, sExt.s

  sPath = PathRequester("Ordnerauswahl", GetCurrentDirectory())
  If sPath <> "" And FileSize(sPath) = -2
    SetCurrentDirectory(sPath)

    DisableWindow(#Win_Main, 1)

    lFolder = ExamineDirectory(#PB_Any, sPath, "*.*")
    If lFolder <> 0

      If Clear >= 1
        Playlist_Remove(-1)
      EndIf

      While NextDirectoryEntry(lFolder)
        If DirectoryEntryType(lFolder) = #PB_DirectoryEntry_File
          sFile = DirectoryEntryName(lFolder)
          sExt  = GetExtensionPart(sFile)

          Select LCase(sExt)
            Case "wma" , "mp2" , "mp3" , "wav" , "asf" , "mod" , "xm" , "xma" , "ogg" , "mid" , "flac" , "aiff" , "dls" , "fsb" , "it" , "raw" , "s3m" , "vag"
              PathAddBackslash_(@sPath)
              Playlist_AddFile(sPath + sFile)
          EndSelect
          While WindowEvent(): Wend
        EndIf
      Wend

      FinishDirectory(lFolder)

      If ListSize(PlayList()) > 0 And iSizeTypeOld <> #SizeType_Playlist
        Window_ChangeSize(#Mnu_Main_TB2_PlayList)
      EndIf

      If ListSize(PlayList()) > 0 And Play >= 1
        PlayList_ChangeSelect(0)
      EndIf

      DisableWindow(#Win_Main, 0)
    Else
      MsgBox_Exclamation("Ordner '" + sPath + "' konnte nicht initialisiert werden")
    EndIf
  EndIf

EndProcedure

Procedure Open_NetStream(Flags)

EndProcedure

Procedure Update()
  Protected hFile.i, sTempFile.s, lNewVers.i, lResult.i, sVers.s

  If lInitNetwork = 0
    lResult = 0
  Else
    AddLogEntry("UpdateCheck..")

    sTempFile = GetTemporaryDirectory() + "~" + Str(Date()) + "-mk-" + Str(Random(1000)) + ".tmp"
    If ReceiveHTTPFile(#URLUpdateC, sTempFile) <> 0
      If OpenPreferences(sTempFile) <> 0
        PreferenceGroup("version")
        lNewVers = ReadPreferenceLong("version", -1)
        If lNewVers = -1 Or lNewVers = 0
          lResult = 0
        Else
          sVers = "Aktuellste Version: " + StrF(lNewVers/100, 2) + #CRLF$
          sVers + "Installierte Version: " + StrF(#PrgVers/100, 2) + #CRLF$ + #CRLF$
          If lNewVers > #PrgVers
            If MessageRequester("Update", sVers + "Eine neue Version ist verfügbar, Updateseite öffnen?", #MB_YESNO|#MB_ICONQUESTION) = #IDYES
              RunProgram(#URLUpdateS)
            EndIf
          Else
            MessageRequester("Update", sVers + "Glückwunsch, Sie haben bereits die neuste Version!", #MB_OK|#MB_ICONINFORMATION)
          EndIf
          lResult = 1
        EndIf
        ClosePreferences()
        DeleteFile(sTempFile)
        AddLogEntry("UpdateCheck: Complete")
      Else
        AddLogEntry("UpdateCheck: OpenPreferences Failed")
        lResult = 0
      EndIf
    Else
      AddLogEntry("UpdateCheck: ReceiveHTTPFile Failed")
      lResult = 0
    EndIf
  EndIf

  ProcedureReturn lResult
EndProcedure

Procedure Save_Preferences(Msg)

  Protected iNext.i

  AddLogEntry("Save Preferences")

  If CreatePreferences(AppDataPath_User() + #PrgName + "\" + #File_Pref)

    ;Group WinSize
    PreferenceGroup("WinSize")
    For iNext = 0 To #Win_Last - 1
      WritePreferenceInteger("X_" + Str(iNext), WinSize(iNext)\posx)
      WritePreferenceInteger("Y_" + Str(iNext), WinSize(iNext)\posy)
      WritePreferenceInteger("W_" + Str(iNext), WinSize(iNext)\width)
      WritePreferenceInteger("H_" + Str(iNext), WinSize(iNext)\height)
    Next

    ;Group WinSize_Main
    PreferenceGroup("WinSize_Main")
    WritePreferenceInteger("SizeType", iSizeTypeOld)
    If iSizeTypeOld = #SizeType_Normal
      WritePreferenceInteger("WinW_Second", iWinW_Main_Second)
      WritePreferenceInteger("WinH_Second", iWinH_Main_Second)
      WritePreferenceInteger("WinW_Normal", WindowWidth(#Win_Main))
    Else
      WritePreferenceInteger("WinW_Second", WindowWidth(#Win_Main))
      WritePreferenceInteger("WinH_Second", WindowHeight(#Win_Main))
      WritePreferenceInteger("WinW_Normal", iWinW_Main_Normal)
    EndIf
    If iSizeTypeOld = #SizeType_MediaLibary
      WritePreferenceLong("MediaLibSP1", GetGadgetState(#G_SP_Main_ML_Vertical))
      WritePreferenceLong("MediaLibSP2", GetGadgetState(#G_SP_Main_ML_Horizontal))
    Else
      WritePreferenceLong("MediaLibSP1", lMediaLib_SPSize1)
      WritePreferenceLong("MediaLibSP2", lMediaLib_SPSize2)
    EndIf

    ;Group FMOD
    PreferenceGroup("FMOD")
    WritePreferenceInteger("OutputMode", Pref\outputmode)
    WritePreferenceInteger("OutputDriver", Pref\outputdriver)
    WritePreferenceInteger("OutputRate", Pref\outputrate)
    WritePreferenceInteger("ResamplingMethod", Pref\interpolation)
    WritePreferenceInteger("SpeakerMode", Pref\speakermode)
    If Pref\streambuffer > 0
      WritePreferenceInteger("StreamBufferSize", Pref\streambuffer)
    EndIf

    ;Group Statistics
    PreferenceGroup("Statistics")
    WritePreferenceQuad("FullPlayTime", Pref\playtime)
    WritePreferenceQuad("PlaySongStart", Pref\playcount_s)
    WritePreferenceQuad("PlaySongEnd", Pref\playcount_e)

    ;Group Main
    PreferenceGroup("Main")

    ;InfoArea
    WritePreferenceLong("SpectrumType", lFMOD_SpectrumMode)
    WritePreferenceString("LengthFormat", Pref\lengthformat)
    WritePreferenceLong("Volume", GetGadgetState(#G_TB_Main_IA_Volume))
    WritePreferenceLong("Repeat", GetToolBarButtonState(#Toolbar_Main2, #Mnu_Main_TB2_Repeat))
    WritePreferenceLong("Random", GetToolBarButtonState(#Toolbar_Main2, #Mnu_Main_TB2_Random))

    ;SoundOptions
    WritePreferenceLong("Guidance", Pref\panel)
    WritePreferenceLong("Speed", Pref\speed)
    WritePreferenceLong("HighPass", Pref\hpass)
    WritePreferenceLong("LowPass", Pref\lpass)
    WritePreferenceLong("Echo", Pref\echo)
    WritePreferenceLong("Flange", Pref\flange)
    WritePreferenceLong("Distortation", Pref\distortation)
    WritePreferenceLong("Chorus", Pref\chorus)
    ;WritePreferenceLong("Equilizer", GetGadgetState(#G_CH_Main_SO_Equilizer))
    ;WritePreferenceLong("EquilizerDef", GetGadgetState(#G_CB_Main_SO_Equilizer))
    ;For iNext = #G_TB_Main_SO_EQ00070 To #G_TB_Main_SO_EQ16000
    ; WritePreferenceLong("EQ_" + Str(iNext - #G_TB_Main_SO_EQ00070), GetGadgetState(iNext))
    ;Next

    WritePreferenceInteger("PlayCountPercent", Pref\playcountpercent)

    ;Playlist (ListIconGadget)
    SendMessage_(GadgetID(#G_LI_Main_PL_PlayList), #LVM_GETCOLUMNORDERARRAY, #ColumnCount_PL, @ColumnOrderArray_PL())
    For iNext = 0 To #ColumnCount_PL - 1
      WritePreferenceInteger("CMNW_PL_" + Str(iNext), GetGadgetItemAttribute(#G_LI_Main_PL_PlayList, -1, #PB_ListIcon_ColumnWidth, iNext))
      WritePreferenceInteger("CMNI_PL_" + Str(iNext), ColumnOrderArray_PL(iNext))
      WritePreferenceInteger("CMNA_PL_" + Str(iNext), ListIconGadget_GetColumnAlign(#G_LI_Main_PL_PlayList, iNext))
    Next

    ;MediaLibary (ListIconGadget)
    SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #LVM_GETCOLUMNORDERARRAY, #ColumnCount_ML, @ColumnOrderArray_ML())
    For iNext = 0 To #ColumnCount_ML - 2
      WritePreferenceInteger("CMNW_ML_" + Str(iNext), GetGadgetItemAttribute(#G_LI_Main_ML_MediaLib, -1, #PB_ListIcon_ColumnWidth, iNext))
      WritePreferenceInteger("CMNI_ML_" + Str(iNext), ColumnOrderArray_ML(iNext))
      WritePreferenceInteger("CMNA_ML_" + Str(iNext), ListIconGadget_GetColumnAlign(#G_LI_Main_ML_MediaLib, iNext))
    Next

    ;Autosave
    WritePreferenceInteger("AutoSave_PF", Pref\autosave_pf)
    WritePreferenceInteger("AutoSave_IS", Pref\autosave_is)
    WritePreferenceInteger("AutoSave_PL", Pref\autosave_pl)
    WritePreferenceInteger("AutoSave_ML", Pref\autosave_ml)
    WritePreferenceInteger("AutoSave_IV", Pref\autosave_intervall)

    WritePreferenceInteger("EndQuestion", Pref\endquestion)

    ;Preferences
    WritePreferenceLong("AlwaysOnTop", Pref\ontop)
    WritePreferenceLong("Opacity", Pref\opacity)
    WritePreferenceLong("OpacityValue", Pref\opacityval)
    WritePreferenceLong("Magnetic", Pref\magnetic)
    WritePreferenceInteger("MagneticValue", Pref\magneticval)
    WritePreferenceLong("AutoColumnWidthPL", Pref\autoclnw_pl)
    WritePreferenceLong("AutoColumnWidthML", Pref\autoclnw_ml)
    WritePreferenceLong("ColorB", Pref\color_ti_bg)
    WritePreferenceLong("ColorF", Pref\color_ti_tx)
    WritePreferenceLong("ColorSB", Pref\color_sel_bg)
    WritePreferenceLong("ColorST", Pref\color_sel_tx)
    WritePreferenceString("MediaLibPath", Pref\medialibpath)
    WritePreferenceLong("AddPlayFiles", Pref\addplayfiles)
    WritePreferenceLong("Loging", Pref\loging)
    WritePreferenceLong("LogingDelStart", Pref\logingdelstart)
    WritePreferenceLong("Clipboard", Pref\clipboard)
    WritePreferenceLong("AutoPlayList", Pref\pl_auto)

    ;Group SearchHistory
    PreferenceGroup("SearchHistory")
    If ListSize(PLSearchHistory()) > 0
      ;PlayList
      WritePreferenceLong("PLSHAmount", ListSize(PLSearchHistory()))
      ForEach PLSearchHistory()
        WritePreferenceString("PLSH_" + Str(ListIndex(PLSearchHistory())), PLSearchHistory()\string)
      Next
    EndIf

    ;Group Plugins
    PreferenceGroup("Plugins")
    iTemp = 0
    ForEach Plugin()
      If IsLibrary(Plugin()\handle) : iTemp + 1 : EndIf
    Next
    If iTemp > 0
      WritePreferenceLong("PluginAmount", iTemp)
      iTemp = -1
      ForEach Plugin()
        If IsLibrary(Plugin()\handle)
          iTemp + 1
          WritePreferenceString("Plugin_" + Str(iTemp), GetFilePart(Plugin()\file))
        EndIf
      Next
    EndIf

    ;Group MLSearchOptions
    PreferenceGroup("MLSearchOptions")
    WritePreferenceLong("CaseS", MLSearchO\cases)
    WritePreferenceLong("WholeWord", MLSearchO\wholeword)
    WritePreferenceLong("Played", MLSearchO\played)
    WritePreferenceLong("Year", MLSearchO\year)
    WritePreferenceLong("SearchIn", MLSearchO\searchin)

    ;Group InternetStream
    PreferenceGroup("InternetStream")
    WritePreferenceLong("CLMNW_SC_0", iColumnW1_InternetStream)
    WritePreferenceLong("CLMNW_SC_1", iColumnW2_InternetStream)

    ClosePreferences()

  Else

    AddLogEntry("Save Preferences Failed")

    If Msg > 0
      MsgBox_Error("Einstellungen konnten nicht gespeichert werden" + #CR$ + AppDataPath_User() + #PrgName + "\" + #File_Pref + "'")
    EndIf

  EndIf

EndProcedure

Procedure Save_PlayList(Msg)
  If Pref\pl_auto > 0 And Save\Playlist > 0
    Protected lFile.i

    lFile = CreateFile(#PB_Any, AppDataPath_User() + #PrgName + "\" + #File_PlayL)
    If lFile <> 0
      AddLogEntry("Save Playlist")

      WriteStringN(lFile, #FileCheckString + "-PLV1")

      ForEach PlayList()
        If FileSize(PlayList()\path) > 0 Or Left(UCase(PlayList()\path), 7) = "HTTP://"
          ;Korektur
          PlayList()\path    = CheckSaveString(PlayList()\path)
          PlayList()\title   = CheckSaveString(PlayList()\title)
          PlayList()\artist  = CheckSaveString(PlayList()\artist)
          PlayList()\album   = CheckSaveString(PlayList()\album)
          PlayList()\year    = CheckSaveString(PlayList()\year)
          PlayList()\comment = CheckSaveString(PlayList()\comment)
          PlayList()\genre   = CheckSaveString(PlayList()\genre)
          ;Schreiben
          WriteString(lFile, "ETY:")
          WriteString(lFile, PlayList()\path               + "|")
          WriteString(lFile, PlayList()\title              + "|")
          WriteString(lFile, PlayList()\artist             + "|")
          WriteString(lFile, PlayList()\album              + "|")
          WriteString(lFile, Str(PlayList()\length)        + "|")
          WriteString(lFile, PlayList()\year               + "|")
          WriteString(lFile, PlayList()\comment            + "|")
          WriteString(lFile, Str(PlayList()\track)         + "|")
          WriteString(lFile, PlayList()\genre              + #CRLF$)
        EndIf
      Next

      CloseFile(lFile)

    Else
      AddLogEntry("Save Playlist Failed")
      If Msg > 0
        MsgBox_Error("Playlist konnte nicht gespeichert werden")
      EndIf
    EndIf
  EndIf
EndProcedure

Procedure Save_MediaLibary(Msg)
  If ListSize(MediaLibary()) > 0 And Save\Medialibary > 0
    Protected lFile.i

    lFile = CreateFile(#PB_Any, AppDataPath_User() + #PrgName + "\" + #File_MLib)
    If lFile <> 0
      AddLogEntry("Save MediaLibary")

      WriteStringN(lFile, #FileCheckString + "-MLV1")

      ForEach MediaLibary()
        ;Korektur
        MediaLibary()\path    = CheckSaveString(MediaLibary()\path)
        MediaLibary()\title   = CheckSaveString(MediaLibary()\title)
        MediaLibary()\artist  = CheckSaveString(MediaLibary()\artist)
        MediaLibary()\album   = CheckSaveString(MediaLibary()\album)
        MediaLibary()\year    = CheckSaveString(MediaLibary()\year)
        MediaLibary()\comment = CheckSaveString(MediaLibary()\comment)
        MediaLibary()\genre   = CheckSaveString(MediaLibary()\genre)
        ;Schreiben
        WriteString(lFile, "ETY:")
        WriteString(lFile, MediaLibary()\path              + "|")
        WriteString(lFile, MediaLibary()\title             + "|")
        WriteString(lFile, Str(MediaLibary()\length)       + "|")
        WriteString(lFile, MediaLibary()\artist            + "|")
        WriteString(lFile, MediaLibary()\album             + "|")
        WriteString(lFile, MediaLibary()\year              + "|")
        WriteString(lFile, MediaLibary()\comment           + "|")
        WriteString(lFile, Str(MediaLibary()\track)        + "|")
        WriteString(lFile, MediaLibary()\genre             + "|")
        WriteString(lFile, "|")
        WriteString(lFile, Str(MediaLibary()\lastplay)     + "|")
        WriteString(lFile, Str(MediaLibary()\playcount)    + "|")
        WriteString(lFile, Str(MediaLibary()\flags)        + #CRLF$)
      Next

      CloseFile(lFile)

    Else
      AddLogEntry("Save MediaLibary Failed")
      If Msg > 0
        MsgBox_Error("MediaLibary konnte nicht gespeichert werden")
      EndIf
    EndIf
  EndIf
EndProcedure

Procedure Save_Shoutcast(Msg)
  If ListSize(Shoutcast()) > 0
    Protected lFile.i

    lFile = CreateFile(#PB_Any, AppDataPath_User() + #PrgName + "\" + #File_Shout)
    If lFile <> 0
      AddLogEntry("Save Shoutcast")

      WriteStringN(lFile, #FileCheckString + "-SCV1")

      ForEach Shoutcast()
        ;Korektur
        Shoutcast()\name = CheckSaveString(Shoutcast()\name)
        Shoutcast()\url  = CheckSaveString(Shoutcast()\url)
        ;Schreiben
        WriteString(lFile, "ETY:")
        WriteString(lFile, Shoutcast()\name     + "|")
        WriteString(lFile, Shoutcast()\url      + #CRLF$)
      Next

      CloseFile(lFile)

    Else
      AddLogEntry("Save Shoutcast Failed")
      If Msg > 0
        MsgBox_Error("Shoutcast Liste konnte nicht gespeichert werden")
      EndIf
    EndIf
  EndIf
EndProcedure

Procedure Open_Preferences()
  Protected iNext.i, iTemp.i

  OpenPreferences(AppDataPath_User() + #PrgName + "\" + #File_Pref)

  ;Group WinSize
  PreferenceGroup("WinSize")
  For iNext = 0 To #Win_Last - 1
    WinSize(iNext)\posx   = ReadPreferenceInteger("X_" + Str(iNext), -1)
    WinSize(iNext)\posy   = ReadPreferenceInteger("Y_" + Str(iNext), -1)
    WinSize(iNext)\width  = ReadPreferenceInteger("W_" + Str(iNext), 0)
    WinSize(iNext)\height = ReadPreferenceInteger("H_" + Str(iNext), 0)
  Next

  ;Group WinSize_Main
  PreferenceGroup("WinSize_Main")
  iTemp             = ReadPreferenceInteger("SizeType", #SizeType_Normal)
  iWinW_Main_Normal = ReadPreferenceInteger("WinW_Normal", 0)
  iWinW_Main_Second = ReadPreferenceInteger("WinW_Second", 0)
  iWinH_Main_Second = ReadPreferenceInteger("WinH_Second", 0)
  lMediaLib_SPSize1 = ReadPreferenceInteger("MediaLibSP1", 0)
  lMediaLib_SPSize2 = ReadPreferenceInteger("MediaLibSP2", 0)

  If WinSize(#Win_Main)\posx = -1 And WinSize(#Win_Main)\posy = -1
    ResizeWindow(#Win_Main, GetSystemMetrics_(#SM_CXSCREEN)/2 - Window_GetWidth(#Win_Main)/2, GetSystemMetrics_(#SM_CYSCREEN)/2 - Window_GetHeight(#Win_Main)/2, #PB_Ignore, #PB_Ignore)
  Else
    ResizeWindow(#Win_Main, WinSize(#Win_Main)\posx, WinSize(#Win_Main)\posy, #PB_Ignore, #PB_Ignore)
  EndIf

  iSizeTypeOld = -1

  Window_ChangeSize(iTemp)

  ;Group FMOD
  PreferenceGroup("FMOD")
  Pref\outputmode = ReadPreferenceInteger("OutputMode", 0)
  ;FM_RefreshDriverList()
  Pref\outputdriver = ReadPreferenceInteger("OutputDriver", 0)
  Pref\outputrate = ReadPreferenceInteger("OutputRate", 0)
  Pref\interpolation = ReadPreferenceInteger("ResamplingMethod", 1)
  Pref\speakermode = ReadPreferenceInteger("SpeakerMode", 1)
  Pref\streambuffer = ReadPreferenceInteger("StreamBufferSize", 16384)

  ;Group Statistics
  PreferenceGroup("Statistics")
  Pref\playtime    = ReadPreferenceQuad("FullPlayTime", 0)
  Pref\playcount_s = ReadPreferenceQuad("PlaySongStart", 0)
  Pref\playcount_e = ReadPreferenceQuad("PlaySongEnd", 0)

  ;Group Main
  PreferenceGroup("Main")
  Protected lHCount.i

  ;PlayList (ListIconGadget)
  SetGadgetItemAttribute(#G_LI_Main_PL_PlayList, -1, #PB_ListIcon_ColumnWidth, ReadPreferenceLong("CMNW_PL_1", 100), 1)
  SetGadgetItemAttribute(#G_LI_Main_PL_PlayList, -1, #PB_ListIcon_ColumnWidth, ReadPreferenceLong("CMNW_PL_2", 80),  2)
  SetGadgetItemAttribute(#G_LI_Main_PL_PlayList, -1, #PB_ListIcon_ColumnWidth, ReadPreferenceLong("CMNW_PL_3", 80),  3)
  SetGadgetItemAttribute(#G_LI_Main_PL_PlayList, -1, #PB_ListIcon_ColumnWidth, ReadPreferenceLong("CMNW_PL_4", 80),  4)
  SetGadgetItemAttribute(#G_LI_Main_PL_PlayList, -1, #PB_ListIcon_ColumnWidth, ReadPreferenceLong("CMNW_PL_5", 80),  5)
  SetGadgetItemAttribute(#G_LI_Main_PL_PlayList, -1, #PB_ListIcon_ColumnWidth, ReadPreferenceLong("CMNW_PL_6", 80),  6)

  For iNext = 0 To #ColumnCount_PL - 1
    ColumnOrderArray_PL(iNext) = ReadPreferenceLong("CMNI_PL_" + Str(iNext), iNext)
  Next
  SendMessage_(GadgetID(#G_LI_Main_PL_PlayList), #LVM_SETCOLUMNORDERARRAY, #ColumnCount_PL, ColumnOrderArray_PL())

  For iNext = 0 To #ColumnCount_PL - 1
    iTemp = ReadPreferenceInteger("CMNA_PL_" + Str(iNext), #LVCFMT_LEFT)
    ListIconGadget_SetColumnAlign(#G_LI_Main_PL_PlayList, iNext, iTemp)
  Next

  ;MediaLibary (ListIconGadget)
  SetGadgetItemAttribute(#G_LI_Main_ML_MediaLib, -1, #PB_ListIcon_ColumnWidth, ReadPreferenceLong("CMNW_ML_1", 250), 1)
  SetGadgetItemAttribute(#G_LI_Main_ML_MediaLib, -1, #PB_ListIcon_ColumnWidth, ReadPreferenceLong("CMNW_ML_2", 100), 2)
  SetGadgetItemAttribute(#G_LI_Main_ML_MediaLib, -1, #PB_ListIcon_ColumnWidth, ReadPreferenceLong("CMNW_ML_3", 80),  3)
  SetGadgetItemAttribute(#G_LI_Main_ML_MediaLib, -1, #PB_ListIcon_ColumnWidth, ReadPreferenceLong("CMNW_ML_4", 100), 4)
  SetGadgetItemAttribute(#G_LI_Main_ML_MediaLib, -1, #PB_ListIcon_ColumnWidth, ReadPreferenceLong("CMNW_ML_5", 100), 5)
  SetGadgetItemAttribute(#G_LI_Main_ML_MediaLib, -1, #PB_ListIcon_ColumnWidth, ReadPreferenceLong("CMNW_ML_6", 80),  6)
  SetGadgetItemAttribute(#G_LI_Main_ML_MediaLib, -1, #PB_ListIcon_ColumnWidth, ReadPreferenceLong("CMNW_ML_7", 100), 7)
  SetGadgetItemAttribute(#G_LI_Main_ML_MediaLib, -1, #PB_ListIcon_ColumnWidth, ReadPreferenceLong("CMNW_ML_8", 100), 8)

  For iNext = 0 To #ColumnCount_ML - 1
    ColumnOrderArray_ML(iNext) = ReadPreferenceLong("CMNI_ML_" + Str(iNext), iNext)
  Next
  SendMessage_(GadgetID(#G_LI_Main_ML_MediaLib), #LVM_SETCOLUMNORDERARRAY, #ColumnCount_ML, ColumnOrderArray_ML())

  For iNext = 0 To #ColumnCount_ML - 1
    iTemp = ReadPreferenceInteger("CMNA_ML_" + Str(iNext), #LVCFMT_LEFT)
    ListIconGadget_SetColumnAlign(#G_LI_Main_ML_MediaLib, iNext, iTemp)
  Next

  ;InfoArea
  lFMOD_SpectrumMode = ReadPreferenceLong("SpectrumType", 2)

  SetGadgetState(#G_TB_Main_IA_Volume, ReadPreferenceLong("Volume", 100)): SetVolume()

  SetToolBarButtonState(#Toolbar_Main2, #Mnu_Main_TB2_Repeat, ReadPreferenceLong("Repeat", 0))
  SetToolBarButtonState(#Toolbar_Main2, #Mnu_Main_TB2_Random, ReadPreferenceLong("Random", 0))

  ;Preferences
  Pref\lengthformat = ReadPreferenceString("LengthFormat", "")
  If Trim(Pref\lengthformat) = ""
    Pref\lengthformat = "%ptime"
  EndIf

  Pref\autoclnw_pl = ReadPreferenceLong("AutoColumnWidthPL", 0)
  Pref\autoclnw_ml = ReadPreferenceLong("AutoColumnWidthML", 0)

  Pref\panel     = ReadPreferenceLong("Guidance", 100)
  SetPanel()
  Pref\speed     = ReadPreferenceLong("Speed", 100)
  SetSpeed()

  iTemp = ReadPreferenceLong("OutputMode", 0)
  If iTemp < 0 Or iTemp > 7 : iTemp = 0 : EndIf
  Pref\outputmode = iTemp

  lFMOD_OldOutputMode = ReadPreferenceLong("OutputDevice", -1)

  Pref\hpass        = ReadPreferenceLong("HighPass", 0)
  Pref\lpass        = ReadPreferenceLong("LowPass", 0)
  Pref\echo         = ReadPreferenceLong("Echo", 0)
  Pref\flange       = ReadPreferenceLong("Flange", 0)
  Pref\distortation = ReadPreferenceLong("Distortation", 0)
  Pref\chorus       = ReadPreferenceLong("Chorus", 0)

  ;SetGadgetState(#G_CH_Main_SO_Equilizer, ReadPreferenceLong("Equilizer", 0))
  ;SetGadgetState(#G_CB_Main_SO_Equilizer, ReadPreferenceLong("EquilizerDef", 0))
  ;For lNext = #G_TB_Main_SO_EQ00070 To #G_TB_Main_SO_EQ16000
  ; SetGadgetState(lNext, ReadPreferenceLong("EQ_" + Str(lNext - #G_TB_Main_SO_EQ00070), 20))
  ;Next

  Pref\playcountpercent = ReadPreferenceInteger("PlayCountPercent", 80)

  Pref\clipboard = ReadPreferenceLong("Clipboard", 0)
  Pref\pl_auto   = ReadPreferenceLong("AutoPlayList", 1)

  ;Autosave
  Pref\autosave_pf        = ReadPreferenceInteger("AutoSave_PF", 1)
  Pref\autosave_is        = ReadPreferenceInteger("AutoSave_IS", 1)
  Pref\autosave_pl        = ReadPreferenceInteger("AutoSave_PL", 1)
  Pref\autosave_ml        = ReadPreferenceInteger("AutoSave_ML", 1)
  Pref\autosave_intervall = ReadPreferenceInteger("AutoSave_IV", 300000)

  Save\Preferences_Time = timeGetTime_()         : Save\Preferences = 0
  Save\Shoutcast_Time   = timeGetTime_() + 30000 : Save\Shoutcast   = 0
  Save\PlayList_Time    = timeGetTime_() + 10000 : Save\Playlist    = 0
  Save\Medialibary_Time = timeGetTime_() + 20000 : Save\Medialibary = 0

  Pref\endquestion = ReadPreferenceInteger("EndQuestion", 0)

  ;Opacity
  Pref\opacity    = ReadPreferenceLong("Opacity", 0)
  Pref\opacityval = ReadPreferenceLong("OpacityValue", 180)
  If Pref\opacityval < 0 Or Pref\opacityval > 255 : Pref\opacityval = 180 : EndIf

  Window_ChangeOpacity()

  Pref\addplayfiles = ReadPreferenceLong("AddPlayFiles", 0)

  Pref\loging = ReadPreferenceLong("Loging", 1)
  Pref\logingdelstart = ReadPreferenceLong("LogingDelStart", 0)

  Pref\color_ti_bg  = ReadPreferenceLong("ColorB",  GetSysColor_(#COLOR_WINDOW))
  Pref\color_ti_tx  = ReadPreferenceLong("ColorF",  GetSysColor_(#COLOR_WINDOWTEXT))
  Pref\color_sel_bg = ReadPreferenceLong("ColorSB", GetSysColor_(#COLOR_HIGHLIGHT))
  Pref\color_sel_tx = ReadPreferenceLong("ColorST", GetSysColor_(#COLOR_HIGHLIGHTTEXT))
  Window_ChangeColor()

  Pref\magnetic = ReadPreferenceLong("Magnetic", 1)
  Pref\magneticval = ReadPreferenceInteger("MagneticValue", 15)

  Pref\ontop = ReadPreferenceLong("AlwaysOnTop", 0)
  If Pref\ontop > 0
    StickyWindow(#Win_Main, 1)
  EndIf

  Pref\medialibpath = Trim(ReadPreferenceString("MediaLibPath", ""))
  If FileSize(Pref\medialibpath) <> -2
    Pref\medialibpath = ""
  EndIf

  PreferenceGroup("SearchHistory")
  lHCount = ReadPreferenceLong("PLSHAmount", 0)
  If lHCount >= 1
    For iNext = 0 To lHCount - 1
      AddElement(PLSearchHistory())
      PLSearchHistory()\string = ReadPreferenceString("PLSH_" + Str(iNext), "")
    Next
  EndIf

  PreferenceGroup("Plugins")
  Protected lTemp.i, sTemp.s

  lTemp = ReadPreferenceLong("PluginAmount", 0)
  If lTemp > 0
    For iNext = 0 To lTemp
      sTemp = ReadPreferenceString("Plugin_" + Str(iNext), "")
      Plugin_Enable(sTemp)
    Next
  EndIf

  ;////////////////////////
  ;WindowMLSearchOptions
  PreferenceGroup("MLSearchOptions")
  MLSearchO\cases = ReadPreferenceLong("CaseS", 0)
  MLSearchO\wholeword = ReadPreferenceLong("WholeWord", 0)
  MLSearchO\played = ReadPreferenceLong("Played", 0)
  MLSearchO\year = ReadPreferenceLong("Year", 0)
  MLSearchO\searchin = ReadPreferenceLong("SearchIn", 62)

  ;////////////////////////
  ;WindowShoutcast
  PreferenceGroup("InternetStream")
  iColumnW1_InternetStream = ReadPreferenceLong("CLMNW_SC_0", 120)
  iColumnW2_InternetStream = ReadPreferenceLong("CLMNW_SC_1", 120)

  ClosePreferences()
EndProcedure

Procedure Open_PlayList()
  ClearList(PlayList())

  If Pref\pl_auto > 0
    Protected lFile.i, sInput.s

    lFile = ReadFile(#PB_Any, AppDataPath_User() + #PrgName + "\" + #File_PlayL)
    If lFile <> 0
      AddLogEntry("Open Playlist")

      If ReadString(lFile) = #FileCheckString + "-PLV1"

        While Eof(lFile) = 0
          sInput = Trim(ReadString(lFile))
          If UCase(Left(sInput, 4)) = "ETY:"
            sInput = Mid(sInput, 5)

            If FileSize(StringField(sInput, 1, "|")) > 0 Or Left(UCase(StringField(sInput, 1, "|")), 7) = "HTTP://"
              AddElement(PlayList())

              PlayList()\path      = StringField(sInput, 1, "|")
              PlayList()\title     = StringField(sInput, 2, "|")
              PlayList()\artist    = StringField(sInput, 3, "|")
              PlayList()\album     = StringField(sInput, 4, "|")
              PlayList()\length    = Val(StringField(sInput, 5, "|"))
              PlayList()\year      = StringField(sInput, 6, "|")
              PlayList()\comment   = StringField(sInput, 7, "|")
              PlayList()\track     = Val(StringField(sInput, 8, "|"))
              PlayList()\genre     = StringField(sInput, 9, "|")

              PlayList_AddItem(PlayList()\title, PlayList()\artist, PlayList()\album, PlayList()\track, PlayList()\length, PlayList()\year, -1)
            EndIf

          EndIf
        Wend

        PlayList_RefreshHeader()

      Else
        AddLogEntry("Open Playlist Failed")
      EndIf

      CloseFile(lFile)
    EndIf

  EndIf

  Playlist_RefreshAllTimes()
EndProcedure

Procedure Open_MediaLibary()
  ClearList(MediaLibary())

  Protected lFile.i, sInput.s

  lFile = ReadFile(#PB_Any, AppDataPath_User() + #PrgName + "\" + #File_MLib)
  If lFile <> 0
    AddLogEntry("Open MediaLibary")

    Protected sMLType.s = ReadString(lFile)

    If sMLType = #FileCheckString + "-MLV1"

      While Eof(lFile) = 0
        sInput = Trim(ReadString(lFile))
        If UCase(Left(sInput, 4)) = "ETY:"
          sInput = Mid(sInput, 5)
          AddElement(MediaLibary())
          MediaLibary()\path         = StringField(sInput, 1, "|")
          MediaLibary()\title        = StringField(sInput, 2, "|")
          MediaLibary()\length       = Val(StringField(sInput, 3, "|"))
          MediaLibary()\artist       = StringField(sInput, 4, "|")
          MediaLibary()\album        = StringField(sInput, 5, "|")
          MediaLibary()\year         = StringField(sInput, 6, "|")
          MediaLibary()\comment      = StringField(sInput, 7, "|")
          MediaLibary()\track        = Val(StringField(sInput, 8, "|"))
          MediaLibary()\genre        = StringField(sInput, 9, "|")
          MediaLibary()\lastplay     = Val(StringField(sInput, 11, "|"))
          MediaLibary()\playcount    = Val(StringField(sInput, 12, "|"))
          MediaLibary()\flags        = Val(StringField(sInput, 13, "|"))
        EndIf
      Wend

    EndIf

    If ListSize(MediaLibary()) > 0
      SortStructuredList(MediaLibary(), #PB_Sort_Ascending, OffsetOf(_MediaLibary\artist), #PB_Sort_String)
    Else
      AddLogEntry("Open MediaLibary Failed")
    EndIf

    CloseFile(lFile)
  EndIf
EndProcedure

Procedure Open_Shoutcast()
  ClearList(Shoutcast())

  Protected lFile.i, sInput.s

  lFile = ReadFile(#PB_Any, AppDataPath_User() + #PrgName + "\" + #File_Shout)
  If lFile <> 0
    AddLogEntry("Open Shoutcast")

    If ReadString(lFile) = #FileCheckString + "-SCV1"

      While Eof(lFile) = 0
        sInput = Trim(ReadString(lFile))
        If UCase(Left(sInput, 4)) = "ETY:"
          sInput = Mid(sInput, 5)
          AddElement(Shoutcast())
          Shoutcast()\name = StringField(sInput, 1, "|")
          Shoutcast()\url  = StringField(sInput, 2, "|")
        EndIf
      Wend

      SortStructuredList(Shoutcast(), #PB_Sort_Ascending, OffsetOf(_Shoutcast\name), #PB_Sort_String)

    Else
      AddLogEntry("Open Shoutcast Failed")
    EndIf

    CloseFile(lFile)
  EndIf

EndProcedure

;Beenden
Procedure Application_End()
  Protected lNext.i

  If Pref\endquestion > 0
    If MessageRequester("Beenden", "Soll " + #PrgName + " beendet werden?", #MB_YESNO|#MB_ICONQUESTION) = #IDNO
      ProcedureReturn -1
    EndIf
  EndIf

  ;CloseWindows
  HideWindow(#Win_Main, 1) : DisableWindow(#Win_Main, 1)
  CloseAllWindows()

  ;Release fmod System
  iChannelCallback_NextTrack = 1
  CloseMedia()

  ;lFmod_Result = FMOD_System_Release(lFMOD_System)
  ;AddLogEntry("FMOD_System_Release: " + FMOD_ErrorString(lFmod_Result))

  ;Save
  If FileSize(AppDataPath_User() + #PrgName + "\") <> -2
    CreateDirectory(AppDataPath_User() + #PrgName + "\")
  EndIf

  Save_Preferences(1)
  Save_PlayList(1)
  Save_MediaLibary(1)
  Save_Shoutcast(1)

  ForEach Plugin()
    If IsLibrary(Plugin()\handle)
      If GetFunction(Plugin()\handle, #DLL_FuncClose)
        CallFunction(Plugin()\handle, #DLL_FuncClose)
      EndIf
      CloseLibrary(Plugin()\handle)
    EndIf
  Next

  ;Misc
  CompilerIf #PB_Compiler_Debugger = 0
  If lSemaphore <> 0
    CloseHandle_(lSemaphore)
  EndIf
  CompilerEndIf

  AddLogEntry(#PrgName + " Endet")

  RemoveSysTrayIcon(0)

  End
EndProcedure

Procedure Application_Start()

  Plugin_Reload()
  Open_Preferences()

  If FileSize(AppDataPath_User() + "MediaKing\Log.txt") <> -1 And Pref\logingdelstart > 0
    DeleteFile(AppDataPath_User() + "MediaKing\Log.txt")
  EndIf

  AddLogEntry("Start " + #PrgName + " " + StrF(#PrgVers/100, 2))
  AddLogEntry("CompilerVersion: " + StrF(#PB_Compiler_Version/100, 2))
  AddLogEntry("CompileBuild: " + StrF(#PB_Editor_BuildCount/100, 2))

  Open_PlayList()
  Open_MediaLibary()
  Open_Shoutcast()

  ;Bass_InitSystem()

  If SetWindowCallback(@WindowCallback()) <> 0
    AddLogEntry("SetWindowCallback: OK")
  Else
    AddLogEntry("SetWindowCallback: Failed")
  EndIf

  lInitNetwork = InitNetwork()
  If lInitNetwork = 0
    AddLogEntry("InitNetwork: Failed")
  Else
    AddLogEntry("InitNetwork: OK")
  EndIf

;   Timer_RefreshTimes = SetTimer_(0, 0, 10, @FMOD_Timer())
;   If Timer_RefreshTimes > 0
;     AddLogEntry("CreateTimer 'TimeRefresh': OK")
;   Else
;     AddLogEntry("CreateTimer 'TimeRefresh': Failed")
;     MsgBox_Error("Timer TimeRefresh konnte nicht erstellt werden")
;     Application_End()
;   EndIf

  RefreshSpectrum(1)

  EnableGadgetDrop(#G_LI_Main_PL_PlayList, #PB_Drop_Files, #PB_Drag_Copy)

  If lInitNetwork = 0 : DisableMenuItem(#Menu_SysTray, #Mnu_SysTray_Update, 1) : EndIf
  DisableGadget(#G_TB_Main_IA_Position, 1)
  DisableWindow(#Win_Main, 0)

  AddSysTrayIcon(0, WindowID(#Win_Main), ImageList(#ImageList_SysTray)): SysTrayIconToolTip(0, #PrgName)

  HideWindow(#Win_Main, 0)

  ;ProgramParameter
  If sProgramParameter <> ""
;     If PlayMedia(sProgramParameter, 1) <> #FMOD_OK
;       End
;     Else
;       If IsWindowVisible_(lWinID_Main) = 0
;         SysTray_LeftClick()
;       EndIf
;     EndIf
  EndIf

EndProcedure

Application_Start()
Repeat

  ;PluginSystem
  ForEach Plugin()
    If IsLibrary(Plugin()\handle)
      If GetFunction(Plugin()\handle, #DLL_FuncEventLoop)
        CallFunction(Plugin()\handle, #DLL_FuncEventLoop)
      EndIf
    EndIf
  Next

  ;Autosave
  If Pref\autosave_pf > 0 And Save\Preferences > 0 And timeGetTime_() - Save\Preferences_Time >= Pref\autosave_intervall
    Save_Preferences(0)
    Save\Preferences      = 0
    Save\Preferences_Time = timeGetTime_()
  EndIf
  If Pref\autosave_is > 0 And Save\Shoutcast > 0 And timeGetTime_() - Save\Shoutcast_Time >= Pref\autosave_intervall
    Save_Shoutcast(0)
    Save\Shoutcast      = 0
    Save\Shoutcast_Time = timeGetTime_()
  EndIf
  If Pref\autosave_pl > 0 And Save\Playlist > 0 And timeGetTime_() - Save\Playlist_Time >= Pref\autosave_intervall
    Save_PlayList(0)
    Save\Playlist      = 0
    Save\Playlist_Time = timeGetTime_()
  EndIf
  If Pref\autosave_ml > 0 And Save\Medialibary > 0 And timeGetTime_() - Save\Medialibary_Time >= Pref\autosave_intervall
    Save_MediaLibary(0)
    Save\Medialibary      = 0
    Save\Medialibary_Time = timeGetTime_()
  EndIf

  lWindowEvent = WaitWindowEvent()
  lEventWindow = EventWindow()
  lEventGadget = EventGadget()
  lEventMenu   = EventMenu()
  lEventType   = EventType()
  lEventLP     = EventlParam()
  lEventWP     = EventwParam()

  Select lWindowEvent
    ;//////////////////////////////////////////////////////////////////////////////////////////////////////////
    ;- MouseMove
    Case #WM_MOUSEMOVE
      ChangeCursor(#G_TX_Main_IA_Title, lCursor_Hand)
      ChangeCursor(#G_IG_Main_IA_PrgLogo, lCursor_Hand)
      ChangeCursor(#G_IG_Main_IA_Spectrum, lCursor_Hand)

      ;//////////////////////////////////////////////////////////////////////////////////////////////////////////
      ;- MouseWheel
    Case #WM_MOUSEWHEEL
      If GetActiveGadget() = -1
        wMouseWheel = ((lEventWP>>16)&$FFFF)
        wMouseWheel / 120
        SetGadgetState(#G_TB_Main_IA_Volume, GetGadgetState(#G_TB_Main_IA_Volume) + (wMouseWheel * 5))
        SetVolume()
      EndIf

      ;//////////////////////////////////////////////////////////////////////////////////////////////////////////
      ;- KeyUp
    Case #WM_KEYUP
      Select lEventWP
        Case #VK_RETURN
          Select GetActiveGadget()
            Case #G_SR_Main_ML_Search
              MediaLib_Search()
            Case #G_CB_Search_String
              PlayList_Search()
            Case #G_LI_Main_ML_MediaLib
              MediaLib_Play()
            Case #G_LI_Main_PL_PlayList
              If GetGadgetState(#G_LI_Main_PL_PlayList) <> -1
                SetPlay()
              EndIf
            Case #G_CB_Search_String
              PlayList_Search()
          EndSelect
        Case #VK_DELETE
          If GetActiveGadget() = #G_LI_Main_PL_PlayList And GetGadgetState(#G_LI_Main_PL_PlayList) <> -1
            PlayList_Remove(GetGadgetState(#G_LI_Main_PL_PlayList))
          EndIf
        Case #VK_ESCAPE
          Select GetActiveWindow()
            Case #Win_Main
              Select GetActiveGadget()
                Case #G_LI_Main_PL_PlayList
                  SetGadgetState(#G_LI_Main_PL_PlayList, -1)
                Case #G_LI_Main_ML_MediaLib
                  SetGadgetState(#G_LI_Main_ML_MediaLib, -1)
                Case #G_SR_Main_ML_Search
                  SetGadgetText(#G_SR_Main_ML_Search, "")
              EndSelect
            Case #Win_TitleInfo
              CloseWindow_TitleInfo()
            Case #Win_InternetStream
              CloseWindow_Shoutcast()
            Case #Win_Search
              CloseWindow_Search()
            Case #Win_Log
              CloseWindow_Log()
            Case #Win_Info
              CloseWindow_Info()
            Case #Win_RNDPlaylist
              CloseWindow_RndPlaylist()
            Case #Win_MLSearchO
              CloseWindow_MLSearchOptions()
            Case #Win_Preferences
              CloseWindow_Preferences()
          EndSelect
      EndSelect

      ;//////////////////////////////////////////////////////////////////////////////////////////////////////////
      ;- PB_Event_Menu
    Case #PB_Event_Menu
      Select lEventMenu

        ;ToolbarMain
        Case #Mnu_Main_TB1_Previous
          If lFMOD_System > 0
            If IsPlaying() : PlayList_BackTrack() : EndIf
          EndIf
        Case #Mnu_Main_TB1_Next
          If lFMOD_System > 0
            If IsPlaying() : PlayList_NextTrack() : EndIf
          EndIf
        Case #Mnu_Main_TB1_Play
          If lFMOD_System > 0
            SetPlay()
          EndIf
        Case #Mnu_Main_TB1_Pause
          If lFMOD_System > 0
            SetPause(GetToolBarButtonState(#Toolbar_Main1, #Mnu_Main_TB1_Pause)!1)
          EndIf
        Case #Mnu_Main_TB1_Stop
          If lFMOD_System > 0
            SetStop()
          EndIf
        Case #Mnu_Main_TB1_Volume
          If lFMOD_System > 0
            If lLVolume = -1
              If GetGadgetState(#G_TB_Main_IA_Volume) > 0
                lLVolume = GetGadgetState(#G_TB_Main_IA_Volume)
                SetGadgetState(#G_TB_Main_IA_Volume, 0)
                SetVolume()
              EndIf
            Else
              SetGadgetState(#G_TB_Main_IA_Volume, lLVolume)
              SetVolume()
              lLVolume = -1
            EndIf
          EndIf
        Case #Mnu_Main_TB2_Open
          If lFMOD_System > 0
            DisplayPopupMenu(#Menu_Open, WindowID(#Win_Main))
          EndIf

        Case #Mnu_Main_TB2_PlayList
          Window_ChangeSize(#SizeType_Playlist)
        Case #Mnu_Main_TB2_MediaLib
          Window_ChangeSize(#SizeType_MediaLibary)
        Case #Mnu_Main_TB2_Preferences
          ShowWindow_Preferences()
        Case #Mnu_Main_TB2_Order
          ShowWindow_Order()
          Order_InitWindow()

          ;Open
        Case #Mnu_Open_File
          If lFMOD_System > 0
            Open_File(1, 1)
          EndIf
        Case #Mnu_Open_Folder
          If lFMOD_System > 0
            Open_Folder(1, 1)
          EndIf
        Case #Mnu_Open_NetStream
          If lFMOD_System > 0
            ShowWindow_Shoutcast(#NetStream_Clear|#NetStream_Play)
          EndIf

          ;Playlist
        Case #Mnu_PlayList_Play
          If lFMOD_System > 0
            SetPlay()
          EndIf
        Case #Mnu_PlayList_RndPlaylist
          If lFMOD_System > 0
            ShowWindow_RndPlaylist()
          EndIf
        Case #Mnu_PlayList_AddFile
          If lFMOD_System > 0
            Open_File(0)
          EndIf
        Case #Mnu_PlayList_AddFolder
          If lFMOD_System > 0
            Open_Folder(0)
          EndIf
        Case #Mnu_PlayList_AddStream
          If lFMOD_System > 0
            ShowWindow_Shoutcast()
          EndIf
        Case #Mnu_PlayList_SavePlayList
          If ListSize(PlayList()) > 0
            PlayList_Save("", 1)
          EndIf
        Case #Mnu_PlayList_SortTitle , #Mnu_PlayList_SortArtist , #Mnu_PlayList_SortAlbum , #Mnu_PlayList_SortTrack , #Mnu_PlayList_SortLength , #Mnu_PlayList_SortYear
          PlayList_Sort(lEventMenu)
        Case #Mnu_PlayList_Search
          ShowWindow_Search()
        Case #Mnu_PlayList_OpenFolder
          If lFMOD_System > 0 And ListSize(PlayList()) >= GetGadgetState(#G_LI_Main_PL_PlayList)
            SelectElement(PlayList(), GetGadgetState(#G_LI_Main_PL_PlayList))
            If FileSize(GetPathPart(PlayList()\path)) = -2
              RunProgram("explorer.exe", "/select," + PlayList()\path, "")
            EndIf
          EndIf
        Case #Mnu_PlayList_Remove
          If GetGadgetState(#G_LI_Main_PL_PlayList) <> -1
            Playlist_Remove(GetGadgetState(#G_LI_Main_PL_PlayList))
          EndIf
        Case #Mnu_PlayList_RemoveAll
          Playlist_Remove(-1)
        Case #Mnu_PlayList_Info
          If lFMOD_System > 0
            PlayList_Informationen()
          EndIf

          ;MediaLibary
        Case #Mnu_MediaLib_Bookmark
          MediaLib_Bookmark()
        Case #Mnu_MediaLib_RemoveBookmark
          MediaLib_RemoveBookmark()
        Case #Mnu_MediaLib_AddPLSelN
          If lFMOD_System > 0
            MediaLib_AddToPlaylist(0, 1)
          EndIf
        Case #Mnu_MediaLib_AddPLAllN
          If lFMOD_System > 0
            MediaLib_AddToPlaylist(1, 1)
          EndIf
        Case #Mnu_MediaLib_AddPLSel
          If lFMOD_System > 0
            MediaLib_AddToPlaylist(0)
          EndIf
        Case #Mnu_MediaLib_AddPLAll
          If lFMOD_System > 0
            MediaLib_AddToPlaylist(1)
          EndIf
        Case #Mnu_MediaLib_Info
          If lFMOD_System > 0
            MediaLib_Informationen()
          EndIf

          ;SysTray
        Case #Mnu_SysTray_Show
          SysTray_LeftClick()
        Case #Mnu_SysTray_BackTrack
          If lFMOD_System > 0
            PlayList_BackTrack()
          EndIf
        Case #Mnu_SysTray_Play
          If lFMOD_System > 0
            SetPlay()
          EndIf
        Case #Mnu_SysTray_Stop
          If lFMOD_System > 0
            SetStop()
          EndIf
        Case #Mnu_SysTray_Pause
          If lFMOD_System > 0
            SetPause(GetToolBarButtonState(#Toolbar_Main1, #Mnu_Main_TB1_Pause)!1)
          EndIf
        Case #Mnu_SysTray_NextTrack
          If lFMOD_System > 0
            PlayList_NextTrack()
          EndIf
        Case #Mnu_SysTray_Log
          If IsWindow(#Win_Log) = 0
            ShowWindow_Log()
          EndIf
        Case #Mnu_SysTray_Pref
          ShowWindow_Preferences()
        Case #Mnu_SysTray_Website
          RunProgram(#URLUpdateS)
        Case #Mnu_SysTray_Feedback
          RunProgram(#URLFeedback)
        Case #Mnu_SysTray_About
          ShowWindow_Info()
        Case #Mnu_SysTray_Help
          If FileSize(ExePath() + #File_Help) > 0
            OpenHelp(ExePath() + #File_Help, "")
          Else
            MsgBox_Exclamation("Hilfe konnte nicht geöffnet werden" + #CR$ + "'" + ExePath() + #File_Help + "'")
          EndIf
        Case #Mnu_SysTray_Update
          Update()
        Case #Mnu_SysTray_End
          Application_End()

          ;ListIconGadget
        Case #Mnu_ListIconGadget_AlignL , #Mnu_ListIconGadget_AlignC , #Mnu_ListIconGadget_AlignR
          ListIconGadget_ChangeColumnAlign(lEventMenu)

      EndSelect

      ;//////////////////////////////////////////////////////////////////////////////////////////////////////////
      ;- PB_Event_Gadget
    Case #PB_Event_Gadget
      Select lEventWindow

        ;Main
        Case #Win_Main
          Select lEventGadget

            ;Play Options
            ;       Case #G_TB_Main_SO_Guidance
            ;        SetPanel()
            ;        SetFocus_(lWinID_Main)
            ;       Case #G_BN_Main_SO_Guidance
            ;        SetGadgetState(#G_TB_Main_SO_Guidance, 100)
            ;        SetPanel()
            ;       Case #G_TB_Main_SO_Speed
            ;        SetSpeed()
            ;        SetFocus_(lWinID_Main)
            ;       Case #G_BN_Main_SO_SpeedNormal
            ;        SetGadgetState(#G_TB_Main_SO_Speed, 100)
            ;        SetSpeed()
            ;       Case #G_CH_Main_SO_HPass , #G_CH_Main_SO_LPass , #G_CH_Main_SO_Echo , #G_CH_Main_SO_Flange , #G_CH_Main_SO_Distortion , #G_CH_Main_SO_Chorus
            ;        ChangeEffects(lEventGadget, GetGadgetState(lEventGadget))
            ;       Case #G_CH_Main_SO_Equilizer
            ;        EnableEquilizer()
            ;       Case #G_CB_Main_SO_Equilizer
            ;        SetEquilizerDefine()
            ;       Case #G_TB_Main_SO_EQ00070 To #G_TB_Main_SO_EQ16000
            ;        SetGadgetState(#G_CB_Main_SO_Equilizer, 0)
            ;        SetEquilizer(lEventGadget)
            ;        SetFocus_(lWinID_Main)

            ;Info Area
            Case #G_TX_Main_IA_Title
              CurrPlay_Information()
            Case #G_IG_Main_IA_Spectrum
              If lEventType = #PB_EventType_LeftClick
                If lFMOD_SpectrumMode < 2
                  lFMOD_SpectrumMode + 1
                Else
                  lFMOD_SpectrumMode = 0
                EndIf
                RefreshSpectrum()
              EndIf
            Case #G_IG_Main_IA_PrgLogo
              If lEventType = #PB_EventType_LeftClick
                ShowWindow_Info()
              EndIf
            Case #G_TB_Main_IA_Position
              SetPos()
              SetFocus_(lWinID_Main)
            Case #G_TB_Main_IA_Volume
              lLVolume = -1
              SetVolume()
              SetFocus_(lWinID_Main)
              If GetGadgetState(#G_TB_Main_IA_Volume) = 0
                Toolbar_ChangeIcon(#Toolbar_Main1, #Mnu_Main_TB1_Volume, #ImageList_Mute)
              Else
                Toolbar_ChangeIcon(#Toolbar_Main1, #Mnu_Main_TB1_Volume, #ImageList_Volume)
              EndIf

              ;Playlist
            Case #G_LI_Main_PL_PlayList
              If lEventType = #PB_EventType_LeftDoubleClick
                If PlayList_ChangeSelect(GetGadgetState(#G_LI_Main_PL_PlayList), 1) ;= #FMOD_OK
                  SetGadgetState(#G_LI_Main_PL_PlayList, -1)
                EndIf
              EndIf
              If lEventType = #PB_EventType_RightClick
                If lSelect - 1 = GetGadgetState(#G_LI_Main_PL_PlayList) Or ListSize(PlayList()) = 0 Or GetGadgetState(#G_LI_Main_PL_PlayList) = -1
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_Play, 1)
                Else
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_Play, 0)
                EndIf
                If GetGadgetState(#G_LI_Main_PL_PlayList) = -1
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_Remove, 1)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_OpenFolder, 1)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_Info, 1)
                Else
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_Remove, 0)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_OpenFolder, 0)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_Info, 0)
                EndIf
                If CountGadgetItems(#G_LI_Main_PL_PlayList) = 0 And ListSize(PlayList()) = 0
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_RemoveAll, 1)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_SavePlayList, 1)
                Else
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_RemoveAll, 0)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_SavePlayList, 0)
                EndIf
                If CountGadgetItems(#G_LI_Main_PL_PlayList) >= 2 And ListSize(PlayList()) >= 2
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_SortTitle, 0)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_SortArtist, 0)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_SortAlbum, 0)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_SortTrack, 0)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_SortLength, 0)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_SortYear, 0)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_Search, 0)
                Else
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_SortTitle, 1)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_SortArtist, 1)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_SortAlbum, 1)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_SortTrack, 1)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_SortLength, 1)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_SortYear, 1)
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_Search, 1)
                EndIf
                If ListSize(MediaLibary()) > 0
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_RndPlaylist, 0)
                Else
                  DisableMenuItem(#Menu_PlayList, #Mnu_PlayList_RndPlaylist, 1)
                EndIf
                DisplayPopupMenu(#Menu_PlayList, WindowID(#Win_Main))
              EndIf

              ;MediaLibary
            Case #G_SR_Main_ML_Search
              If lEventType = #PB_EventType_Focus
                SendMessage_(GadgetID(#G_SR_Main_ML_Search), #EM_SETSEL, 0, -1)
              EndIf
              If lEventType = #PB_EventType_Change
                If Trim(GetGadgetText(#G_SR_Main_ML_Search)) <> ""
                  MediaLib_AutoComplete()
                  DisableGadget(#G_BN_Main_ML_Search, 0)
                Else
                  DisableGadget(#G_BN_Main_ML_Search, 1)
                EndIf
              EndIf
            Case #G_BN_Main_ML_SearchOptions
              ShowWindow_MLSearchOptions()
            Case #G_BN_Main_ML_Search
              MediaLib_Search()
            Case #G_LI_Main_ML_MediaLib
              If lEventType = #PB_EventType_LeftDoubleClick
                MediaLib_Play()
              EndIf
              If lEventType = #PB_EventType_RightClick And CountGadgetItems(#G_LI_Main_ML_MediaLib) > 0
                If GetGadgetState(#G_LI_Main_ML_MediaLib) = -1
                  DisableMenuItem(#Menu_MediaLibary, #Mnu_MediaLib_Bookmark, 1)
                  DisableMenuItem(#Menu_MediaLibary, #Mnu_MediaLib_RemoveBookmark, 1)
                  DisableMenuItem(#Menu_MediaLibary, #Mnu_MediaLib_AddPLSel, 1)
                  DisableMenuItem(#Menu_MediaLibary, #Mnu_MediaLib_AddPLSelN, 1)
                  DisableMenuItem(#Menu_MediaLibary, #Mnu_MediaLib_Info, 1)
                Else
                  DisableMenuItem(#Menu_MediaLibary, #Mnu_MediaLib_Bookmark, 0)
                  DisableMenuItem(#Menu_MediaLibary, #Mnu_MediaLib_RemoveBookmark, 0)
                  DisableMenuItem(#Menu_MediaLibary, #Mnu_MediaLib_AddPLSel, 0)
                  DisableMenuItem(#Menu_MediaLibary, #Mnu_MediaLib_AddPLSelN, 0)
                  DisableMenuItem(#Menu_MediaLibary, #Mnu_MediaLib_Info, 0)
                EndIf
                If CountGadgetItems(#G_LI_Main_ML_MediaLib) > 0
                  DisableMenuItem(#Menu_MediaLibary, #Mnu_MediaLib_AddPLAll, 0)
                  DisableMenuItem(#Menu_MediaLibary, #Mnu_MediaLib_AddPLAllN, 0)
                Else
                  DisableMenuItem(#Menu_MediaLibary, #Mnu_MediaLib_AddPLAll, 1)
                  DisableMenuItem(#Menu_MediaLibary, #Mnu_MediaLib_AddPLAllN, 1)
                EndIf
                DisplayPopupMenu(#Menu_MediaLibary, WindowID(#Win_Main))
              EndIf

            Case #G_LV_Main_ML_Category
              Select GetGadgetState(#G_LV_Main_ML_Category)
                Case 0 ;DB
                  MediaLib_Show()
                Case 1 ;MostPlay
                  MediaLib_ShowMostPlay()
                Case 2 ;LastPlay
                  MediaLib_ShowLastPlay()
                Case 3 ;NeverPlay
                  MediaLib_ShowNeverPlay()
                Case 4 ;Favor
                  MediaLib_ShowBookmark()
              EndSelect
            Case #G_LV_Main_ML_Album
              MediaLib_Album()

          EndSelect

          ;Log
        Case #Win_Log
          Select lEventGadget

            Case #G_LV_Log_Loging
              If lEventType = #PB_EventType_LeftDoubleClick
                SetClipboardText(GetGadgetItemText(#G_LV_Log_Loging, GetGadgetState(#G_LV_Log_Loging)))
              EndIf

            Case #G_BN_Log_Clear
              ClearGadgetItems(#G_LV_Log_Loging)

          EndSelect

          ;TitleInfo
        Case #Win_TitleInfo
          Select lEventGadget
            Case #G_LI_TitleInfo_Extended
              SetGadgetState(#G_LI_TitleInfo_Extended, -1)
            Case #G_BN_TitleInfo_Path
              If FileSize(GetGadgetText(#G_SR_TitleInfo_Path)) > 0
                RunProgram("explorer.exe", "/select," + GetGadgetText(#G_SR_TitleInfo_Path), "")
              EndIf
            Case #G_BN_TitleInfo_Close
              CloseWindow_TitleInfo()
            Case #G_BN_TitleInfo_Extended
              Select GetGadgetText(#G_BN_TitleInfo_Extended)
                Case "Erweitert"
                  ResizeWindow(#Win_TitleInfo, #PB_Ignore, #PB_Ignore, 640, 415)
                  HideGadget(#G_LI_TitleInfo_Extended, 0)
                  SetGadgetText(#G_BN_TitleInfo_Extended, "Einfach")
                Case "Einfach"
                  ResizeWindow(#Win_TitleInfo, #PB_Ignore, #PB_Ignore, 340, 415)
                  HideGadget(#G_LI_TitleInfo_Extended, 1)
                  SetGadgetText(#G_BN_TitleInfo_Extended, "Erweitert")
              EndSelect

          EndSelect

          ;Shoutcast
        Case #Win_InternetStream
          Select lEventGadget
            Case #G_SR_InternetStream_URL
              If lEventType = #PB_EventType_LostFocus And Trim(LCase(GetGadgetText(#G_SR_InternetStream_URL))) = "http://"
                SetGadgetText(#G_SR_InternetStream_URL, "")
              EndIf
              If lEventType = #PB_EventType_Focus And Trim(GetGadgetText(#G_SR_InternetStream_URL)) = ""
                SetGadgetText(#G_SR_InternetStream_URL, "http://")
                SendMessage_(GadgetID(#G_SR_InternetStream_URL), #EM_SETSEL, 0, Len(GetGadgetText(#G_SR_InternetStream_URL)))
                SetActiveGadget(#G_SR_InternetStream_URL)
              EndIf
              InternetStream_ServerCheck()
            Case #G_BN_InternetStream_Connect
              Open_NetStream(GetGadgetData(#G_BN_InternetStream_Connect))
            Case #G_BN_InternetStream_ServerSave
              InternetStream_ServerSave()
              InternetStream_ServerCheck()
            Case #G_BN_InternetStream_ServerDelete
              InternetStream_ServerDelete()
              InternetStream_ServerCheck()
            Case #G_LI_InternetStream_Server
              If GetGadgetState(#G_LI_InternetStream_Server) <> -1
                SetGadgetText(#G_SR_InternetStream_URL, GetGadgetItemText(#G_LI_InternetStream_Server, GetGadgetState(#G_LI_InternetStream_Server), 1))
              Else
                SetGadgetText(#G_SR_InternetStream_URL, "")
              EndIf
              If lEventType = #PB_EventType_LeftDoubleClick And Trim(GetGadgetText(#G_SR_InternetStream_URL)) <> ""
                Open_NetStream(GetGadgetData(#G_BN_InternetStream_Connect))
              EndIf
              InternetStream_ServerCheck()

          EndSelect

          ;Search
        Case #Win_Search
          Select lEventGadget
            Case #G_CB_Search_String
              ComboBoxGadget_AutoComplete(#G_CB_Search_String)
            Case #G_BN_Search_Start
              PlayList_Search()
            Case #G_LV_Search_Result
              If lEventType = #PB_EventType_LeftClick
                If ListSize(SearchResult()) >= GetGadgetState(#G_LV_Search_Result) And GetGadgetState(#G_LV_Search_Result) <> -1
                  SelectElement(SearchResult(), GetGadgetState(#G_LV_Search_Result))
                  SetGadgetState(#G_LI_Main_PL_PlayList, -1)
                  SetGadgetState(#G_LI_Main_PL_PlayList, SearchResult()\index)
                  SendMessage_(GadgetID(#G_LI_Main_PL_PlayList), #LVM_ENSUREVISIBLE, SearchResult()\index, #True)
                EndIf
              EndIf
              If lEventType = #PB_EventType_LeftDoubleClick
                If ListSize(SearchResult()) >= GetGadgetState(#G_LV_Search_Result) And GetGadgetState(#G_LV_Search_Result) <> -1
                  SelectElement(SearchResult(), GetGadgetState(#G_LV_Search_Result))
                  SetGadgetState(#G_LI_Main_PL_PlayList, -1)
                  SetGadgetState(#G_LI_Main_PL_PlayList, SearchResult()\index)
                EndIf
                CloseWindow(#Win_Search)
                DisableWindow(#Win_Main, 0)
                SetGadgetState(#G_LI_Main_PL_PlayList, -1)
                SetGadgetState(#G_LI_Main_PL_PlayList, SearchResult()\index)
                SendMessage_(GadgetID(#G_LI_Main_PL_PlayList), #LVM_ENSUREVISIBLE, SearchResult()\index, #True)
                SetActiveWindow(#Win_Main)
                SetActiveGadget(#G_LI_Main_PL_PlayList)
                ClearList(SearchResult())
              EndIf

          EndSelect

          ;RndPlaylist
        Case #Win_RNDPlaylist
          Select lEventGadget
            Case #G_CH_RNDPlaylist_Amount
              SetGadgetState(#G_CH_RNDPlaylist_Amount, 1)
              SetGadgetState(#G_CH_RNDPlaylist_Time, 0)
              DisableGadget(#G_SR_RNDPlaylist_Amount, 0)
              DisableGadget(#G_CB_RNDPlaylist_Time, 1)
            Case #G_CH_RNDPlaylist_Time
              SetGadgetState(#G_CH_RNDPlaylist_Amount, 0)
              SetGadgetState(#G_CH_RNDPlaylist_Time, 1)
              DisableGadget(#G_SR_RNDPlaylist_Amount, 1)
              DisableGadget(#G_CB_RNDPlaylist_Time, 0)
            Case #G_CH_RNDPlaylist_Genre
              DisableGadget(#G_LV_RNDPlaylist_Genre, GetGadgetState(#G_CH_RNDPlaylist_Genre) ! 1)
            Case #G_BN_RNDPlaylist_Create
              If PlayList_CreateRNDList() > 0
                CloseWindow_RndPlaylist()
              Else
                SetGadgetText(#G_TX_RNDPlaylist_Status, "")
              EndIf
            Case #G_BN_RNDPlaylist_Cancel
              CloseWindow_RndPlaylist()

          EndSelect

          ;MediaLib Search Options
        Case #Win_MLSearchO
          Select lEventGadget
            Case #G_BN_MLSearchO_Apply
              MediaLib_SOApply()
            Case #G_BN_MLSearchO_Default
              MediaLib_SODefault()
            Case #G_BN_MLScan_Cancel
              CloseWindow_MLSearchOptions()

          EndSelect

          ;Preferences
        Case #Win_Preferences
          Select lEventGadget
            Case #G_TR_Pref_Menu
              Preferences_ChangeArea()
            Case #G_BN_Pref_Apply
              Preferences_Apply()
            Case #G_BN_Pref_Close
              Preferences_Apply()
              CloseWindow_Preferences()
            Case #G_BN_Pref_Cancel
              CloseWindow_Preferences()
            Case #G_LV_Pref_Layout
              If GetGadgetState(#G_LV_Pref_Layout) <> -1
                iTemp = GetGadgetItemData(#G_LV_Pref_Layout, GetGadgetState(#G_LV_Pref_Layout))
                iTemp = ColorRequester(iTemp)
                If iTemp > -1
                  SetGadgetItemData(#G_LV_Pref_Layout, GetGadgetState(#G_LV_Pref_Layout), iTemp)
                EndIf
                SetGadgetState(#G_LV_Pref_Layout, -1)
              EndIf
            Case #G_BN_Pref_ResetStatistics
              If MessageRequester("Reset", "Möchten Sie die Statistiken wirklich zurücksetzen?", #MB_ICONQUESTION|#MB_YESNO|#MB_DEFBUTTON2) = #IDYES
                Pref\playtime    = 0
                Pref\playcount_s = 0
                Pref\playcount_e = 0
              EndIf

            Case #G_CB_Pref_OutputMode
              ;If FM_RefreshDriverList() <> #FMOD_OK
              ;  ClearGadgetItems(#G_CB_Pref_OutputDriver)
              ;EndIf

            Case #G_BN_Pref_DefaultFMODEX
              SetGadgetState(#G_CB_Pref_OutputMode, 0)
              ClearGadgetItems(#G_CB_Pref_OutputDriver)
              ;FM_RefreshDriverList()
              SetGadgetState(#G_CB_Pref_OutputDriver, 0)
              SetGadgetState(#G_CB_Pref_OutputRate, 0)
              SetGadgetState(#G_CB_Pref_ResamplingMethod, 1)
              SetGadgetState(#G_CB_Pref_SpeakerMode, 1)
              SetGadgetState(#G_CB_Pref_StreamBufferSize, 1)

            Case #G_BN_Pref_MediaLibPath
              MediaLib_ChangePath()
            Case #G_BN_Pref_MediaLibScan
              MediaLib_StartScan(Pref\medialibpath)
            Case #G_BN_Pref_MediaLibScanFolder
              MediaLib_StartScanDefinedFolder()

          EndSelect
          Preferences_CheckButtons()

          ;Info
        Case #Win_Info
          Select lEventGadget
            Case #G_BN_Info_Close
              CloseWindow_Info()

          EndSelect

          ;Order
        Case #Win_Order
          Select lEventGadget
            Case #G_BN_Order_Cancel
              CloseWindow_Order()
            Case #G_BN_Order_Close
              Order_Apply()
              CloseWindow_Order()

          EndSelect

      EndSelect

      ;//////////////////////////////////////////////////////////////////////////////////////////////////////////
      ;- PB_Event_GadgetDrop
    Case #PB_Event_GadgetDrop
      Select lEventGadget

        ;Playlist
        Case #G_LI_Main_PL_PlayList
          PlayList_AddDrop(EventDropFiles())

      EndSelect

      ;//////////////////////////////////////////////////////////////////////////////////////////////////////////
      ;- PB_Event_Systray
    Case #PB_Event_SysTray
      Select lEventType

        Case #PB_EventType_LeftClick
          SysTray_LeftClick()
        Case #PB_EventType_RightClick
          DisplayPopupMenu(#Menu_SysTray, WindowID(#Win_Main))

      EndSelect

      ;//////////////////////////////////////////////////////////////////////////////////////////////////////////
      ;- PB_Event_SizeWindow , PB_Event_MoveWindow
    Case #PB_Event_MoveWindow , #PB_Event_SizeWindow
      Select lEventWindow
        Case #Win_Main
          WinSize(#Win_Main)\posx   = WindowX(#Win_Main)
          WinSize(#Win_Main)\posy   = WindowY(#Win_Main)
      EndSelect

      ;//////////////////////////////////////////////////////////////////////////////////////////////////////////
      ;- PB_Event_CloseWindow
    Case #PB_Event_CloseWindow
      Select lEventWindow
        Case #Win_Main
          Application_End()
        Case #Win_TitleInfo
          CloseWindow_TitleInfo()
        Case #Win_InternetStream
          CloseWindow_Shoutcast()
        Case #Win_Search
          CloseWindow_Search()
        Case #Win_Log
          CloseWindow_Log()
        Case #Win_RNDPlaylist
          CloseWindow_RndPlaylist()
        Case #Win_MLSearchO
          CloseWindow_MLSearchOptions()
        Case #Win_Preferences
          CloseWindow_Preferences()
        Case #Win_Info
          CloseWindow_Info()
        Case #Win_Order
          CloseWindow_Order()

      EndSelect

  EndSelect
ForEver

End
; IDE Options = PureBasic 4.31 (Windows - x86)
; CursorPosition = 1090
; FirstLine = 1058
; Folding = ----------------------------------
; EnableXP
; CPU = 1
; CompileSourceDirectory
; EnableCompileCount = 1
; EnableBuildCount = 0
; EnableExeConstant