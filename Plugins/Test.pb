;MediaKing Plugin Structur
;Copyright®Kai Gartenschläger, 2008

EnableExplicit

Structure _Plugin
 size.i
 stable.i
 autor.s
 version.i
 description.s
EndStructure
Global Plugin._Plugin

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
Global *CurrPlay._CurrPlay

;User Defined Variables
Global iMainWindow.i
Global iG_TX_Title.i
Global iG_TX_Artist.i
Global iG_TX_Album.i
Global iG_BN_End.i

;User Defined Functions
Procedure.s AppDataUserPath()
 Protected Path$ = Space(#MAX_PATH)
 SHGetSpecialFolderPath_(0, @Path$, #CSIDL_APPDATA, 0)
 PathAddBackslash_(@Path$)
 ProcedureReturn Path$
EndProcedure

;Wird beim Überprüfen des Plugins aufgerufen
;Rückgabewert muss der Pointer zur 'Plugin' Structur sein
ProcedureDLL.l MK_Plugin_Check(plHandleWin)
 
 Plugin\size        = SizeOf(_Plugin)
 Plugin\stable      = 39
 Plugin\autor       = "Kai Gartenschläger"
 Plugin\version     = 1
 Plugin\description = "Tracker Sample"
 
 ProcedureReturn @Plugin
 
EndProcedure

;Wird beim Öffnen des Plugins aufgerufen
;plHandle enthält das Handle zum Hauptfenster von MediaKing
;p_CurrPlay enthält ein Pointer zur _CurrPlay Structure
;Rückgabewert muß 1 für Erfolgreich oder 0 für Fehlgeschlagen haben
ProcedureDLL MK_Plugin_Open(plHandle, p_CurrPlay)
 
 Protected iResult.i
 
 ;OpenPreferences
 If FileSize(AppDataUserPath() + "MediaKing\") = -2
  
  OpenPreferences(AppDataUserPath() + "MediaKing\Tracker.ini")
   PreferenceGroup("Main")
    Protected iWinX.i = ReadPreferenceInteger("WinX", -1)
    Protected iWinY.i = ReadPreferenceInteger("WinY", -1)
    Protected iWinW.i = ReadPreferenceInteger("WinW", 200)
    Protected iWinH.i = ReadPreferenceInteger("WinH", 80)
  ClosePreferences()
  
 EndIf
 
 ;Default
 If iWinX = -1 And iWinY = -1
 
  iWinX = GetSystemMetrics_(#SM_CXSCREEN)/2 - 100
  iWinY = GetSystemMetrics_(#SM_CYSCREEN)/2 - 40
 
 EndIf
 
 ;OpenWindow
 iMainWindow = OpenWindow(#PB_Any, iWinX, iWinY, iWinW, iWinH, "Tracker", #PB_Window_Invisible|#PB_Window_BorderLess)
 If iMainWindow <> 0
  
  iG_TX_Title  = TextGadget(#PB_Any, 5, 5, WindowWidth(iMainWindow) - 10, 15, "")
  iG_TX_Artist = TextGadget(#PB_Any, 5, 20, WindowWidth(iMainWindow) - 10, 15, "")
  iG_TX_Album  = TextGadget(#PB_Any, 5, 35, WindowWidth(iMainWindow) - 10, 15, "")
  iG_BN_End    = ButtonGadget(#PB_Any, WindowWidth(iMainWindow) - 85, WindowHeight(iMainWindow) - 29, 80, 24, "Beenden")
  
  SetWindowColor(iMainWindow, $EF9B10)
  
  HideWindow(iMainWindow, 0)
  
  iResult = 1
 Else
  iResult = 0
 EndIf
 
 ProcedureReturn iResult
 
EndProcedure

;Wird beim Schließen des Plugins aufgerufen
ProcedureDLL MK_Plugin_Close()

 ;SavePreferences
 If FileSize(AppDataUserPath() + "MediaKing\") <> -2
  CreateDirectory(AppDataUserPath() + "MediaKing\")
 EndIf
 
 If CreatePreferences(AppDataUserPath() + "MediaKing\Tracker.ini")
 
  PreferenceGroup("Main")
   WritePreferenceInteger("WinX", WindowX(iMainWindow))
   WritePreferenceInteger("WinY", WindowY(iMainWindow))
   WritePreferenceInteger("WinW", WindowWidth(iMainWindow))
   WritePreferenceInteger("WinH", WindowHeight(iMainWindow))
  
  ClosePreferences()
 EndIf
  
 ;CloseWindow
 If IsWindow(iMainWindow)
  
  CloseWindow(iMainWindow)
 
 EndIf
 
EndProcedure

;Wird aufgerufen sobald ein Song abgespielt wird
;p_CurrPlay enthält ein Pointer zur _CurrPlay Structure
ProcedureDLL MK_Song_Play(p_CurrPlay)
 
 If p_CurrPlay > 0
  
  *CurrPlay = p_CurrPlay
  
  SetGadgetText(iG_TX_Title, *CurrPlay\title)
  SetGadgetText(iG_TX_Artist, *CurrPlay\artist)
  SetGadgetText(iG_TX_Album, *CurrPlay\album)
  
 EndIf
 
EndProcedure

;Wird aufgerufen sobald die Wiedergabe gestopt wird
ProcedureDLL MK_Song_Stop()
 
  SetGadgetText(iG_TX_Title, "")
  SetGadgetText(iG_TX_Artist, "")
  SetGadgetText(iG_TX_Album, "")
 
EndProcedure

;Wird aufgerufen sobald die Wiedergabe angehalten wird
;plBool ist ein Pointer zu einer Long Variable die denn Pausestatus enthält (1:Aktiviert, 0:Deaktiviert)
ProcedureDLL MK_Song_Pause(plBool)
 
EndProcedure

;Wird aufgerufen sobald sich die Position vom Song verändert
;plPosition ist ein Pointer auf eine Long Variable mit der Position (1 - 1000)
ProcedureDLL MK_Song_Position(plPosition)
 
EndProcedure

;Wird einmal pro WindowEventLoop aufgerufen
;Rückgabewert 2 beendet das Plugin
ProcedureDLL MK_Window_EventLoop()
 
EndProcedure


; IDE Options = PureBasic 4.30 Beta 4 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 185
; FirstLine = 135
; Folding = --
; EnableXP
; Executable = Tracker.dll
; CPU = 1
; CompileSourceDirectory
; EnableCompileCount = 141
; EnableBuildCount = 123
; EnableExeConstant