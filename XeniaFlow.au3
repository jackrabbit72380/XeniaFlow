#Region
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_UseX64=n
#AutoIt3Wrapper_Run_AU3Check=n
#AutoIt3Wrapper_Tidy_Stop_OnError=n
#AutoIt3Wrapper_UseX64=n
#pragma
#AutoIt3Wrapper_Allow_Decompile=n
#EndRegion

#NoTrayIcon

#include <WindowsConstants.au3>
#include <Constants.au3>
#include <GuiConstants.au3>
#include <Misc.au3>
#include <Array.au3>
#include <WinAPI.au3>
#include <GuiConstantsEx.au3>
#include <Color.au3>
#include <GDIPlus.au3>
#include <WindowsConstants.au3>
#include <File.au3>
#include <StaticConstants.au3>
#include <ButtonConstants.au3>
#include <Sound.au3>
#include <InetConstants.au3>
#include <StringConstants.au3>
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Include <File.au3>
#include <GUIConstantsEx.au3>
#include <GuiTab.au3>
#include <Misc.au3>
#include <WindowsConstants.au3>
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <GUIConstantsEx.au3>
#include <GUIConstants.au3>
#include <WindowsConstants.au3>
#include <EditConstants.au3>
#include <StaticConstants.au3>
#include <GuiListView.au3>
#include <WindowsConstants.au3>
#Include <Array.au3>
#include <StaticConstants.au3>
#Include <Constants.au3>
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WINAPI.au3>
#include <ScreenCapture.au3>
#include <GDIPlus.au3>
#include <array.au3>
#Include <Date.au3>
#include <Timers.au3>
#include <WinAPISys.au3>
#include <Array.au3>
#include <Array.au3>
#include <File.au3>
#include <MsgBoxConstants.au3>
#include <ProgressConstants.au3>
#include <StaticConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <GuiButton.au3>
#include <Color.au3>
#include <Array.au3>
#include <APIGdiConstants.au3>
#include <FontConstants.au3>
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <GuiButton.au3>
#include <GUIComboBox.au3>
#include <GuiConstantsEx.au3>
#include <Constants.au3>
#Include <IE.au3>
#Include <Constants.au3>
#Include <GUIConstantsEx.au3>
#Include <StaticConstants.au3>
#Include <TabConstants.au3>
#Include <WindowsConstants.au3>
#include <Math.au3>
#include <APISysConstants.au3>

HotKeySet('{Esc}', '_Exit')

;===================================================================================================================================================================;
;===================================================================IrrlichtPluginUtils==========================================================================;
;===================================================================================================================================================================;
Dim $TempFolder
$TempFolder = _TempFile()
DirCreate($TempFolder)
FileSetAttrib($TempFolder, "+H")
#AutoIt3Wrapper_plugin_funcs= SetCameraAsKeyEventReceiver, CreateDevice, SetViewPort, SetWindowCaption, CreateDeviceOnWindow, CreateLayeredDevice, SetFog, GetMesh, RecalculateNormals, CreateMeshWelded, SetVertexColorAlpha, ScaleMesh, AddHillPlaneMesh, AddTerrainMesh, GetQ3Shader, GetPosition, GetAbsolutePosition, GetRotation, AddEmptySceneNode, AddBillboardSceneNode, AddMeshSceneNode, AddAnimatedMeshSceneNode, AddOctTreeSceneNode, AddWaterSurfaceSceneNode, AddTerrainSceneNode, AddSkyBoxSceneNode, AddCubeSceneNode, AddSphereSceneNode, AddChild, CreateCollisionResponseAnimator, SetWorld, SetGravity, CreateFlyCircleAnimator, CreateRotationAnimator, CreateFlyStraightAnimator, AddAnimator, RemoveAnimator, RemoveAnimators, DropAnimator, CreateOctTreeTriangleSelector, CreateTerrainTriangleSelector, CreateTriangleSelector, SetTriangleSelector, GetSceneNodeFromCameraBB, GetSceneNodeFromRayBB, GetSceneNodeFromScreenCoordinatesBB, AddMaterial, GetMaterial, GetMaterialCount, SetMaterial, SetNodeMaterial, SetAmbientColor, SetDiffuseColor, SetSpecularColor, SetEmissiveColor, ScaleTexture, SetMaterialFlag, SetMaterialType, SetMD2Animation, SetAnimationSpeed, SetMaterialTexture, SetVisible, AddCameraSceneNode, AddCameraSceneNodeFPS, AddCameraSceneNodeMaya, SetActiveCamera, GetActiveCamera, IrrRun, BeginScene, EndScene, SceneDraw, GuiDraw, AddZipFileArchive, SetLoopMode, SetPosition, SetRotation, SetRotationByAxis, SetRotationByTime, SetScale, SetTarget, SetUpVector, SetFarValue, AddLightSceneNode, SetLightData, AddNewSLight, SetSLightDirection, SetSLightAmbientColor, SetSLightDiffuseColor, SetSLightSpecularColor, SetSLightAttenuation, SetLightDirection, SetLightAmbientColor, SetLightDiffuseColor, SetLightSpecularColor, SetLightAttenuation, CreateImageFromFile, AddTexture, SetImageToTexture, GetTexture, CreateRenderTargetTexture, SetRenderTarget, AddStaticText, SetText, AddImage, SetShadowColor, RaiseTerrain, DeformMesh, DeformNode, BindTargetAndRotation, Remove, CreateBulletEngine, SetNodeToCollisionShape, DoBulletSimulation
#compiler_plugin_funcs = SetCameraAsKeyEventReceiver, CreateDevice, SetViewPort, SetWindowCaption, CreateDeviceOnWindow, CreateLayeredDevice, SetFog, GetMesh, RecalculateNormals, CreateMeshWelded, SetVertexColorAlpha, ScaleMesh, AddHillPlaneMesh, AddTerrainMesh, GetQ3Shader, GetPosition, GetAbsolutePosition, GetRotation, AddEmptySceneNode, AddBillboardSceneNode, AddMeshSceneNode, AddAnimatedMeshSceneNode, AddOctTreeSceneNode, AddWaterSurfaceSceneNode, AddTerrainSceneNode, AddSkyBoxSceneNode, AddCubeSceneNode, AddSphereSceneNode, AddChild, CreateCollisionResponseAnimator, SetWorld, SetGravity, CreateFlyCircleAnimator, CreateRotationAnimator, CreateFlyStraightAnimator, AddAnimator, RemoveAnimator, RemoveAnimators, DropAnimator, CreateOctTreeTriangleSelector, CreateTerrainTriangleSelector, CreateTriangleSelector, SetTriangleSelector, GetSceneNodeFromCameraBB, GetSceneNodeFromRayBB, GetSceneNodeFromScreenCoordinatesBB, AddMaterial, GetMaterial, GetMaterialCount, SetMaterial, SetNodeMaterial, SetAmbientColor, SetDiffuseColor, SetSpecularColor, SetEmissiveColor, ScaleTexture, SetMaterialFlag, SetMaterialType, SetMD2Animation, SetAnimationSpeed, SetMaterialTexture, SetVisible, AddCameraSceneNode, AddCameraSceneNodeFPS, AddCameraSceneNodeMaya, SetActiveCamera, GetActiveCamera, IrrRun, BeginScene, EndScene, SceneDraw, GuiDraw, AddZipFileArchive, SetLoopMode, SetPosition, SetRotation, SetRotationByAxis, SetRotationByTime, SetScale, SetTarget, SetUpVector, SetFarValue, AddLightSceneNode, SetLightData, AddNewSLight, SetSLightDirection, SetSLightAmbientColor, SetSLightDiffuseColor, SetSLightSpecularColor, SetSLightAttenuation, SetLightDirection, SetLightAmbientColor, SetLightDiffuseColor, SetLightSpecularColor, SetLightAttenuation, CreateImageFromFile, AddTexture, SetImageToTexture, GetTexture, CreateRenderTargetTexture, SetRenderTarget, AddStaticText, SetText, AddImage, SetShadowColor, RaiseTerrain, DeformMesh, DeformNode, BindTargetAndRotation, Remove, CreateBulletEngine, SetNodeToCollisionShape, DoBulletSimulation
Global $PluginHandle = PluginOpen(@ScriptDir &"\Au3Irrlicht.dll")



;video drivers
Global Const $EDT_NULL = 0
Global Const $EDT_SOFTWARE = 1
Global Const $EDT_BURNINGSVIDEO = 2
Global Const $EDT_DIRECT3D8 = 3
Global Const $EDT_DIRECT3D9 = 4
Global Const $EDT_OPENGL = 5

;material flags
Global Const $EMF_WIREFRAME = 0
Global Const $EMF_POINTCLOUD = 1
Global Const $EMF_GOURAUD_SHADING = 2
Global Const $EMF_LIGHTING = 3
Global Const $EMF_ZBUFFER = 4
Global Const $EMF_ZWRITE_ENABLE = 5
Global Const $EMF_BACK_FACE_CULLING = 6
Global Const $EMF_BILINEAR_FILTER = 7
Global Const $EMF_TRILINEAR_FILTER = 8
Global Const $EMF_ANISOTROPIC_FILTER = 9
Global Const $EMF_FOG_ENABLE = 10
Global Const $EMF_NORMALIZE_NORMALS = 11
Global Const $EMF_TEXTURE_WRAP = 12

;material types
Global Const $EMT_SOLID = 0
Global Const $EMT_SOLID_2_LAYER = 1
Global Const $EMT_LIGHTMAP = 2
Global Const $EMT_LIGHTMAP_ADD = 3
Global Const $EMT_LIGHTMAP_M2 = 4
Global Const $EMT_LIGHTMAP_M4 = 5
Global Const $EMT_LIGHTMAP_LIGHTING = 6
Global Const $EMT_LIGHTMAP_LIGHTING_M2 = 7
Global Const $EMT_LIGHTMAP_LIGHTING_M4 = 8
Global Const $EMT_DETAIL_MAP = 9
Global Const $EMT_SPHERE_MAP = 10
Global Const $EMT_REFLECTION_2_LAYER = 11
Global Const $EMT_TRANSPARENT_ADD_COLOR = 12
Global Const $EMT_TRANSPARENT_ALPHA_CHANNEL = 13
Global Const $EMT_TRANSPARENT_ALPHA_CHANNEL_REF = 14
Global Const $EMT_TRANSPARENT_VERTEX_ALPHA = 15
Global Const $EMT_TRANSPARENT_REFLECTION_2_LAYER = 16
Global Const $EMT_NORMAL_MAP_SOLID = 17
Global Const $EMT_NORMAL_MAP_TRANSPARENT_ADD_COLOR = 18
Global Const $EMT_NORMAL_MAP_TRANSPARENT_VERTEX_ALPHA = 19
Global Const $EMT_PARALLAX_MAP_SOLID = 20
Global Const $EMT_PARALLAX_MAP_TRANSPARENT_ADD_COLOR = 21
Global Const $EMT_PARALLAX_MAP_TRANSPARENT_VERTEX_ALPHA = 22
Global Const $EMT_ONETEXTURE_BLEND = 23
Global Const $EMT_FORCE_32BIT = 24

;md2 animations
Global Const $EMAT_STAND = 0
Global Const $EMAT_RUN = 1
Global Const $EMAT_ATTACK = 2
Global Const $EMAT_PAIN_A = 3
Global Const $EMAT_PAIN_B = 4
Global Const $EMAT_PAIN_C = 5
Global Const $EMAT_JUMP = 6
Global Const $EMAT_FLIP = 7
Global Const $EMAT_SALUTE = 8
Global Const $EMAT_FALLBACK = 9
Global Const $EMAT_WAVE = 10
Global Const $EMAT_POINT = 11
Global Const $EMAT_CROUCH_STAND = 12
Global Const $EMAT_CROUCH_WALK = 13
Global Const $EMAT_CROUCH_ATTACK = 14
Global Const $EMAT_CROUCH_PAIN = 15
Global Const $EMAT_CROUCH_DEATH = 16
Global Const $EMAT_DEATH_FALLBACK = 17
Global Const $EMAT_DEATH_FALLFORWARD = 18
Global Const $EMAT_DEATH_FALLBACKSLOW = 19
Global Const $EMAT_BOOM = 20

;q3shaders enum values
Global Const $E_Q3_MESH_GEOMETRY = 0
Global Const $E_Q3_MESH_ITEMS = 1
Global Const $E_Q3_MESH_BILLBOARD = 2
Global Const $E_Q3_MESH_SIZE = 3

;enum irr::scene::E_TERRAIN_PATCH_SIZE - enumeration for patch sizes specifying the size of patches in the TerrainSceneNode
Global Const $ETPS_9 = 9
Global Const $ETPS_17 = 17
Global Const $ETPS_33 = 33
Global Const $ETPS_65 = 65
Global Const $ETPS_129 = 129

;enum SLight type
Global Const $ELT_POINT = 0
Global Const $ELT_SPOT = 1
Global Const $ELT_DIRECTIONAL = 2

;float cnstants
Global Const $PI = 3.14159265359
Global Const $HALF_PI = $PI / 2.0
Global Const $PI64 = 3.1415926535897932384626433832795028841971693993751
Global Const $RADTODEG = 180.0 / $PI
Global Const $RADTODEG64 = 180.0 / $PI64
Global Const $RECIPROCAL_PI = 1.0 / $PI
Global Const $RECIPROCAL_PI64 = 1.0 / $PI64
Global Const $ROUNDING_ERROR_32 = 0.000001
Global Const $ROUNDING_ERROR_64 = 0.00000001

;===================================================================================================================================================================;
;========================================================================= INITIALISATION ==========================================================================;
;===================================================================================================================================================================;

Local $compare[2], $Cover_Distance = 70, $Cover_Position[1], $Centred_Game, $camVi = 0, $icolor_red = 0, $icolor_green = 0, $icolor_blue = 0, $ModeFlow = 1, _
		$Gamer_count = 0, $Games_Result = 0, $_Move = 0, $Titel = "XeniaFlow", $backgroundTexture1, $backgroundTexture2, $backgroundTexture3

Local $Y = 0
Dim $Cover[1][2], $Cover_Back[1], $Cover_reflet[1], $Cover_refletLeft[1], $Cover_refletRight[1], $Cover_SideLeft[1], $Cover_SideRight[1], $Cover_SideTop[1], $Cover_Name[1], $ListArray[1][2]

FileInstall("Top.png", $TempFolder & "\Top.png", 1)
FileInstall("case_right.png", $TempFolder & "\case_right.png", 1)
FileInstall("settings.png", $TempFolder & "\settings.png", 1)
FileInstall("exit.png", $TempFolder & "\exit.png", 1)
FileInstall("skins.png", $TempFolder & "\skins.png", 1)
FileInstall("ambientlight.png", $TempFolder & "\ambientlight.png", 1)
FileInstall("ambientlight2.png", $TempFolder & "\ambientlight2.png", 1)
FileInstall("ambientlight3.png", $TempFolder & "\ambientlight3.png", 1)
Global Const $INI = @ScriptDir & "\XeniaFlow.ini"
Global Const $FullCover_dir = @ScriptDir & "\Full"
Global Const $Cache_dir = @ScriptDir & "\Full\Cache"
Global Const $Gamer_dir = @ScriptDir & "\Games"
Global Const $Theme_dir = @ScriptDir & "\Themes"
Global Const $Apps_dir = @ScriptDir & "\Apps"

If FileExists(@ScriptDir & "\Full\Cache") = 0 Then DirCreate(@ScriptDir & "\Full\Cache")
If FileExists(@ScriptDir & "\Games") = 0 Then DirCreate(@ScriptDir & "\Games")
If FileExists($Apps_dir) = 0 Then DirCreate($Apps_dir)

$ChooseApp = "ChooseApp"
$Redraw = "Redraw"
;===================================================================================================================================================================;
;========================================================================= INI READ ==========================================================================;
;===================================================================================================================================================================;

Local $Theme = IniRead($INI, "Config", "Theme", -1)
If $Theme = -1 Then
	IniWrite($INI, "Config", "Theme", "Default")
	$Theme = "Default"
EndIf

Local $GuiColor = IniRead($Theme_dir & "\" & $Theme & "\" & $Theme & ".ini", "Config", "GuiColor", -1)
If $GuiColor = -1 Then
	IniWrite($Theme_dir & "\" & $Theme & "\" & $Theme & ".ini", "Config", "GuiColor", "0x000000")
	$GuiColor = "0x000000"
EndIf

Local $GuiBorderColor = IniRead($Theme_dir & "\" & $Theme & "\" & $Theme & ".ini", "Config", "GuiBorderColor", -1)
If $GuiBorderColor = -1 Then
	IniWrite($Theme_dir & "\" & $Theme & "\" & $Theme & ".ini", "Config", "GuiBorderColor", "0xFFFFFF")
	$GuiBorderColor = "0xFFFFFF"
EndIf

Local $TitleColor = IniRead($Theme_dir & "\" & $Theme & "\" & $Theme & ".ini", "Config", "TitleColor", -1)
If $TitleColor = -1 Then
	IniWrite($Theme_dir & "\" & $Theme & "\" & $Theme & ".ini", "Config", "TitleColor", "0xFFFFFF")
	$TitleColor = "0xFFFFFF"
EndIf

Local $AlphabColor = IniRead($Theme_dir & "\" & $Theme & "\" & $Theme & ".ini", "Config", "AlphabColor", -1)
If $AlphabColor = -1 Then
	IniWrite($Theme_dir & "\" & $Theme & "\" & $Theme & ".ini", "Config", "AlphabColor", "0xFFFFFF")
	$AlphabColor = "0xFFFFFF"
EndIf

Local $MenuBTColor = IniRead($Theme_dir & "\" & $Theme & "\" & $Theme & ".ini", "Config", "MenuBTColor", -1)
If $MenuBTColor = -1 Then
	IniWrite($Theme_dir & "\" & $Theme & "\" & $Theme & ".ini", "Config", "MenuBTColor", "0xFFFFFF")
	$MenuBTColor = "0xFFFFFF"
EndIf

Local $SettingsBTColor = IniRead($Theme_dir & "\" & $Theme & "\" & $Theme & ".ini", "Config", "SettingsBTColor", -1)
If $SettingsBTColor = -1 Then
	IniWrite($Theme_dir & "\" & $Theme & "\" & $Theme & ".ini", "Config", "SettingsBTColor", "0xFFFFFF")
	$SettingsBTColor = "0xFFFFFF"
EndIf

Local $SettingsTxtColor = IniRead($Theme_dir & "\" & $Theme & "\" & $Theme & ".ini", "Config", "SettingsTxtColor", -1)
If $SettingsTxtColor = -1 Then
	IniWrite($Theme_dir & "\" & $Theme & "\" & $Theme & ".ini", "Config", "SettingsTxtColor", "0xFFFFFF")
	$SettingsTxtColor = "0xFFFFFF"
EndIf

Local $Fileformat = IniRead($INI, "Config", "FileFormat", -1)

Global $Background_Image = IniRead($INI, "Config", "BackPic", -1)

If _Singleton("XeniaFlow", 1) = 0 Then
	MsgBox(48 + 0, "XeniaFlow ®  Warning", "An occurence of XeniaFlow is already running")
	Exit
EndIf

;===>_GDIPlus_ImageRotateFlip
Global Enum _
		$RotateNoneFlipNone = 0, _
		$Rotate90FlipNone = 1, _
		$Rotate180FlipNone = 2, _
		$Rotate270FlipNone = 3, _
		$RotateNoneFlipX = 4, _
		$Rotate90FlipX = 5, _
		$Rotate180FlipX = 6, _
		$Rotate270FlipX = 7, _
		$RotateNoneFlipY = 6, _
		$Rotate90FlipY = 7, _
		$Rotate180FlipY = 4, _
		$Rotate270FlipY = 5, _
		$RotateNoneFlipXY = 6, _
		$Rotate90FlipXY = 7, _
		$Rotate180FlipXY = 0, _
		$Rotate270FlipXY = 1

;===================================================================================================================================================================;
;========================================================================= Main GUI ==========================================================================;
;===================================================================================================================================================================;
_GDIPlus_Startup()
Opt('MouseCoordMode', 0)
$Main_Flow_gui = GUICreate($Titel, 1280, 800, -1, -1, $WS_POPUP, $WS_EX_LAYERED)

GUISetBkColor(0xFFFFFF, $Main_Flow_gui)
WinSetTrans($Main_Flow_gui, "", 255)

GUICtrlCreateLabel('XeniaFlow', 0, 0, 1280, 40, $SS_CENTER, $GUI_WS_EX_PARENTDRAG)
GUICtrlSetFont(-1, 20, 800)

$Main_Flow_gui = GUICreate($Titel, 1280, 800, -1, -1, $WS_POPUP, $WS_EX_LAYERED)
Opt('MouseCoordMode', 0)
$Main_Flow_gui = GUICreate($Titel, 1280, 800, -1, -1, $WS_POPUP, $WS_EX_LAYERED)

GUISetBkColor(0xFFFFFF, $Main_Flow_gui)
WinSetTrans($Main_Flow_gui, "", 255)

GUICtrlCreateLabel('XeniaFlow', 0, 0, 1280, 40, $SS_CENTER, $GUI_WS_EX_PARENTDRAG)
GUICtrlSetFont(-1, 20, 800)

GUICtrlCreateLabel('XeniaFlow', 0, 0, 1280, 40, $SS_CENTER, $GUI_WS_EX_PARENTDRAG)

GUICtrlSetColor(-1, $GuiBorderColor)
GUICtrlSetBkColor(-1, $GuiColor)

GUICtrlCreateLabel('', 0, 760, 1280, 40)
GUICtrlSetBkColor(-1, $GuiColor)
GUICtrlSetState(-1, $GUI_DISABLE)

$Settings = GUICtrlCreatePic("", 10, 764, 32, 32)
_GUICtrlPic_SetImage($Settings, $TempFolder & "\settings.png")

$ExitButton = GUICtrlCreatePic("", 1280-40, 764, 32, 32)
_GUICtrlPic_SetImage($ExitButton, $TempFolder & "\Exit.png")

$SkinBT = GUICtrlCreatePic("", 60, 764, 32, 32)
_GUICtrlPic_SetImage($SkinBT, $TempFolder & "\skins.png")

$MainClientSize = WinGetClientSize($Main_Flow_gui)
$MainWinPos = WinGetPos($Main_Flow_gui, "")

Local $MainBorderLeft = (($MainWinPos[2] - $MainClientSize[0]) / 2)
Local $MainBorderTop = ($MainWinPos[3] - $MainClientSize[1] - (($MainWinPos[2] - $MainClientSize[0]) / 2)) + 30

GUISetBkColor(0x01, $Main_Flow_gui)
_WinAPI_SetLayeredWindowAttributes($Main_Flow_gui, 0x01, 0xFF, 0x03)

;===================================================================================================================================================================;
;========================================================================= Device ==========================================================================;
;===================================================================================================================================================================;

Global $device = CreateDeviceOnWindow($Main_Flow_gui, 4, 0, 40, 1280, 720, 32, 4, 4)

;Add Camera
$Camera = AddCameraSceneNode(0, 0, 0, 200, 0, 0, 0)

Background2($Background_Image)

$BackgroundCam = AddCameraSceneNode(0, 0, 0, 0--200, 0, 0, 0)
Global $background = AddBillboardSceneNode($BackgroundCam,1280, 720)
setPosition($background,0,0,105)
SetMaterialTexture($background,0,GetTexture($TempFolder & "\Background.png"))
SetMaterialType ( $background , 13 )
SetMaterialFlag ( $background , $EMF_LIGHTING , 0 )
SetVisible( $background, 1 )

$backgroundTexture1 = GetTexture($TempFolder & "\FlowBack1.png")
$backgroundTexture2 = GetTexture($TempFolder & "\FlowBack2.png")
$backgroundTexture3 = GetTexture($TempFolder & "\FlowBack3.png")
AddSkyBoxSceneNode($backgroundTexture1, $backgroundTexture1, $backgroundTexture3, $backgroundTexture2, $backgroundTexture1, $backgroundTexture1)

;AddImage(GetTexture($TempFolder & "\ambientlight.png"), -74, 0)
;AddImage(GetTexture($TempFolder & "\ambientlight2.png"), 1050, 0)
;AddImage(GetTexture($TempFolder & "\ambientlight3.png"), 0, 520)
;===================================================================================================================================================================;
;========================================================================= GUI Settings ==========================================================================;
;===================================================================================================================================================================;

$SettingsguiTrans = GUICreate("", 924, 500, 50, 80, $WS_POPUPWINDOW, BitOR($WS_EX_LAYERED, $WS_EX_MDICHILD), $Main_Flow_gui)
GUISetBkColor($GuiBorderColor, $SettingsguiTrans)
WinSetTrans($SettingsguiTrans, "", 155)
GUICtrlCreateLabel("", 5, 5, 914, 490)
GUICtrlSetBkColor(-1, $GuiColor)
GUICtrlSetState(-1, $GUI_DISABLE)
GUISetState(@SW_HIDE, $SettingsguiTrans)

$Settingsgui = GUICreate("", 924, 500, 50, 80, $WS_POPUP, BitOR($WS_EX_LAYERED, $WS_EX_MDICHILD), $Main_Flow_gui)
GUICtrlCreateLabel("File Format", 0, 5, 924, 30, $SS_CENTER)
GUICtrlSetColor(-1, $MenuBTColor)
GUICtrlSetFont(-1, 25, 400)
GUICtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)

Global $FFType[1]
If $Fileformat <> "" Then $FFType = StringSplit($Fileformat, "|", 0)

Global $FFTypeControl[$FFType[0] + 1][8]
Local $FFTypeX = 20, $FFTypeY = 50, $FFTYpeCOL = 0

$FFTypeControl[0][0] = $FFType[0]
For $i = 1 To $FFType[0]
	$FFTypeControl[$i][6] = $FFType[$i]
	$FFTypeControl[$i][7] = IniRead($INI, "BT", $FFType[$i], -1)
	If $FFTypeControl[$i][7] = -1 Then
		IniWrite($INI, "BT", $FFType[$i], 0)
		$FFTypeControl[$i][7] = 0
	EndIf
Next


$All_Apps = _FileListToArray($Apps_dir, "*.lnk", 1)
If IsArray($All_Apps) Then
For $i = 1 To $All_Apps[0]
	If StringInStr($All_Apps[$i],".lnk") <> 0 Then $All_Apps[$i] = StringReplace($All_Apps[$i], ".lnk", "")
Next
EndIf

For $i = 1 To $FFTypeControl[0][0]
	If $i <= 43 Then
		GUICtrlCreateLabel("." & StringUpper($FFTypeControl[$i][6]), $FFTypeX, $FFTypeY, 60, 20)
		GUICtrlSetColor(-1, $SettingsTxtColor)

		GUICtrlSetFont(-1, 14, 400)

		$FFTypeControl[$i][0] = GUICtrlCreatePic("", $FFTypeX + 60, $FFTypeY, 63, 18)

		If $FFTypeControl[$i][7] = 0 Then
			_GUICtrlslider_SetImage($FFTypeControl[$i][0], $Theme_dir & "\" & $Theme & "\slidBt.png", 63, 18, 36)
		ElseIf $FFTypeControl[$i][7] = 1 Then
			_GUICtrlslider_SetImage($FFTypeControl[$i][0], $Theme_dir & "\" & $Theme & "\slidBt.png", 63, 18, 0)
		EndIf

		$FFTypeControl[$i][2] = GUICtrlCreatePic("", $FFTypeX + 125, $FFTypeY - 4, 26, 26)
		_GUICtrlPic_SetBT($FFTypeControl[$i][2], $Theme_dir & "\" & $Theme & "\BTNM.png", 26, 26)

		$FFTypeControl[$i][3] = GUICtrlCreatePic("", $FFTypeX + 151, $FFTypeY - 4, 124, 26)
		_GUICtrlPic_SetBT($FFTypeControl[$i][3], $Theme_dir & "\" & $Theme & "\BTNC.png", 124, 26)

		$FFTypeControl[$i][4] = GUICtrlCreatePic("", $FFTypeX + 275, $FFTypeY - 4, 26, 26)
		_GUICtrlPic_SetBT($FFTypeControl[$i][4], $Theme_dir & "\" & $Theme & "\BTNP.png", 26, 26)

		$FFTypeControl[$i][1] = GUICtrlCreateLabel($ChooseApp, $FFTypeX + 155, $FFTypeY - 2, 124, 18, $SS_CENTER)
		GUICtrlSetColor(-1, $SettingsBTColor)
		GUICtrlSetFont(-1, 14, 400)
		GUICtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)

		$FFTypeY += 30
		If $FFTypeY > 470 And $FFTYpeCOL = 0 Then
			$FFTYpeCOL = 1
			$FFTypeX += 300
			$FFTypeY = 50
		ElseIf $FFTypeY > 470 And $FFTYpeCOL = 1 Then
			$FFTYpeCOL = 2
			$FFTypeX += 300
			$FFTypeY = 50
		EndIf
	EndIf
Next


$themesBTL = GUICtrlCreatePic("", 620, 460, 30, 30)
_GUICtrlPic_SetBT($themesBTL, $Theme_dir & "\" & $Theme & "\BTNL.png", 30, 30)

$themesBTC = GUICtrlCreatePic("", 650, 460, 100, 30)
_GUICtrlPic_SetBT($themesBTC, $Theme_dir & "\" & $Theme & "\BTNC.png", 100, 30)

$themesBTR = GUICtrlCreatePic("", 750, 460, 30, 30)
_GUICtrlPic_SetBT($themesBTR, $Theme_dir & "\" & $Theme & "\BTNR.png", 30, 30)

$themesBTLabel = GUICtrlCreateLabel($Redraw, 650, 465, 100, 30, $SS_CENTER)
		GUICtrlSetColor(-1, $MenuBTColor)
		GUICtrlSetFont(-1, 14, 400)
		GUICtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)

GUISetBkColor(0x000010, $Settingsgui)
_WinAPI_SetLayeredWindowAttributes($Settingsgui, 0x000010, 0xFF, 0x03)
GUISetState(@SW_HIDE, $Settingsgui)

;===================================================================================================================================================================;
;========================================================================= GUI Introduction ==========================================================================;
;===================================================================================================================================================================;

$Info_child_Gui_trans = GUICreate("", 500, 590, 524, 35, $WS_POPUPWINDOW, BitOR($WS_EX_LAYERED, $WS_EX_MDICHILD), $Main_Flow_gui)
GUISetBkColor($GuiBorderColor, $Info_child_Gui_trans)
WinSetTrans($Info_child_Gui_trans, "", 155)
GUICtrlCreateLabel("", 5, 5, 495, 580)
GUICtrlSetBkColor(-1, $GuiColor)
GUICtrlSetState(-1, $GUI_DISABLE)

GUISetState(@SW_HIDE, $Info_child_Gui_trans)

$Info_child_Gui = GUICreate("", 500, 590, 524, 35, $WS_POPUP, BitOR($WS_EX_LAYERED, $WS_EX_MDICHILD), $Main_Flow_gui)

GUICtrlCreateLabel("Introduction", 10, 10, 485, 30, $SS_CENTER)
GUICtrlSetColor(-1, 0xFFFFFF)
GUICtrlSetFont(-1, 20)

GUISetBkColor(0x01, $Info_child_Gui)
_WinAPI_SetLayeredWindowAttributes($Info_child_Gui, 0x01, 0xFF, 0x03)
GUISetState(@SW_HIDE, $Info_child_Gui)

;===================================================================================================================================================================;
;========================================================================= Main GUI Parent==========================================================================;
;===================================================================================================================================================================;


$parentgui = GUICreate("", 1280, 720, 0, 40, $WS_POPUP, BitOR($WS_EX_LAYERED, $WS_EX_MDICHILD), $Main_Flow_gui)
$Alphabet_gameName = GUICtrlCreateLabel('', 20, 0, 100, 50, $SS_CENTER)
GUICtrlSetFont(-1, 30, 600)
GUICtrlSetColor(-1, $AlphabColor)

$label_gameName = GUICtrlCreateLabel('', 1280/2-400, 30, 800, 50, $SS_CENTER)
GUICtrlSetFont(-1, 20, 400)
GUICtrlSetColor(-1, $TitleColor)

$next = GUICtrlCreateLabel(">>", 1220, 720/2-32, 64, 64)
GUICtrlSetFont(-1, 30, 400)
GUICtrlSetColor(-1, 0xFFFFFF)

$perv = GUICtrlCreateLabel("<<", 20, 720/2-32, 64, 64)
GUICtrlSetFont(-1, 30, 400)
GUICtrlSetColor(-1, 0xFFFFFF)

GUISetBkColor(0x01, $parentgui)
_WinAPI_SetLayeredWindowAttributes($parentgui, 0x01, 0xFF, 0x03)

;===================================================================================================================================================================;
;========================================================================= Start Gui ==========================================================================;
;===================================================================================================================================================================;
GUIRegisterMsg($WM_NCHITTEST, "WM_NCHITTEST")
Local $CoverRunAnimator1

Load_games()

If Mod($Games_Result, 2) Then
	Draw(($Cover_Distance * $Games_Result) - ($Cover_Distance * (($Games_Result - 1) / 2)))
	$_Move = ($Cover_Distance * $Games_Result) - ($Cover_Distance * (($Games_Result - 1) / 2))
Else
	Draw(($Cover_Distance * $Games_Result) - ($Cover_Distance * ($Games_Result / 2)))
	$_Move = ($Cover_Distance * $Games_Result) - ($Cover_Distance * ($Games_Result / 2))
EndIf
GUICtrlSetData($label_gameName, $Cover[$_Move / $Cover_Distance][1])
GUISetState(@SW_SHOW, $Main_Flow_gui)
GUISetState(@SW_SHOW, $parentgui)

;===================================================================================================================================================================;
;========================================================================= While ==========================================================================;
;===================================================================================================================================================================;
Local $stateSettings = 0
$sound = _SoundOpen(@ScriptDir & "\flip.wav")

While IrrRun()
	BeginScene(True, True, 0, $icolor_red, $icolor_green, $icolor_blue)
	SceneDraw()
	GuiDraw()

	EndScene()
	$extMsg = GUIGetMsg(1)
	$msg = $extMsg[0]
	$controlhandle = $extMsg[2]
	$mausX = $extMsg[3]
	$mausY = $extMsg[4]

	Switch $extMsg[1]
		Case $Main_Flow_gui

			;If $mausX > 10 And $mausX < 42 And $mausY > 635 And $mausY < 667 Then
				;ControlMove($Main_Flow_gui, "", $Settings, 9, 635, 34, 34)
			;Else
				;ControlMove($Main_Flow_gui, "", $Settings, 10, 636, 32, 32)
			;EndIf

			;If $mausX > 60 And $mausX < 92 And $mausY > 635 And $mausY < 667 Then
			;	ControlMove($Main_Flow_gui, "", $SkinBT, 59, 635, 34, 34)
			;Else
			;	ControlMove($Main_Flow_gui, "", $SkinBT, 60, 636, 32, 32)
			;EndIf

			;If $mausX > 983 And $mausX < 1016 And $mausY > 635 And $mausY < 667 Then
			;	ControlMove($Main_Flow_gui, "", $ExitButton, 983, 635, 34, 34)
			;Else
			;	ControlMove($Main_Flow_gui, "", $ExitButton, 984, 636, 32, 32)
			;EndIf

			Select
				Case $msg = $Settings
					For $s = 1 To 6
						;ControlMove($Main_Flow_gui, "", $Settings, 10 + ($s / 2), 636 + ($s / 2), 32 - $s, 32 - $s)
						If $s > 4 Then
							Sleep(40)
						Else
							Sleep(20)
						EndIf
						_GUICtrlPic_SetImage($Settings, $TempFolder & "\settings.png")
					Next
					For $s = 1 To 6
						;ControlMove($Main_Flow_gui, "", $Settings, 13 - ($s / 2), 639 - ($s / 2), 26 + $s, 26 + $s)
						If $s > 4 Then
							Sleep(40)
						Else
							Sleep(20)
						EndIf
						_GUICtrlPic_SetImage($Settings, $TempFolder & "\settings.png")
					Next
					If $ModeFlow = 1 Then
						If $stateSettings = 0 Then
							_WinAnimate($SettingsguiTrans, $AW_CENTER, 400)
							GUISetState(@SW_SHOW, $Settingsgui)
							$stateSettings = 1
							WinActivate($Settingsgui)
							GUISetState(@SW_DISABLE, $parentgui)
						Else
							GUISetState(@SW_HIDE, $Settingsgui)
							_WinAnimate($SettingsguiTrans, BitOR($AW_HIDE, $AW_CENTER), 300)
							$stateSettings = 0
							GUISetState(@SW_ENABLE, $parentgui)
						EndIf
					EndIf

				Case $msg = $ExitButton
					For $s = 1 To 6
						;ControlMove($Main_Flow_gui, "", $ExitButton, 983 + ($s / 2), 636 + ($s / 2), 32 - $s, 32 - $s)
						If $s > 4 Then
							Sleep(40)
						Else
							Sleep(20)
						EndIf
						_GUICtrlPic_SetImage($ExitButton, $TempFolder & "\Exit.png")
					Next
					For $s = 1 To 6
						;ControlMove($Main_Flow_gui, "", $ExitButton, 986 - ($s / 2), 639 - ($s / 2), 26 + $s, 26 + $s)
						If $s > 4 Then
							Sleep(40)
						Else
							Sleep(20)
						EndIf
						_GUICtrlPic_SetImage($ExitButton, $TempFolder & "\Exit.png")
					Next
					_Exit()
				Case $msg = $SkinBT
					For $s = 1 To 6
						;ControlMove($Main_Flow_gui, "", $SkinBT, 60 + ($s / 2), 636 + ($s / 2), 32 - $s, 32 - $s)
						If $s > 4 Then
							Sleep(40)
						Else
							Sleep(20)
						EndIf
						_GUICtrlPic_SetImage($SkinBT, $TempFolder & "\skins.png")
					Next
					For $s = 1 To 6
						;ControlMove($Main_Flow_gui, "", $SkinBT, 63 - ($s / 2), 639 - ($s / 2), 26 + $s, 26 + $s)
						If $s > 4 Then
							Sleep(40)
						Else
							Sleep(20)
						EndIf
						_GUICtrlPic_SetImage($SkinBT, $TempFolder & "\skins.png")
					Next
					$var = FileOpenDialog("Background Pic", -1, "Images (*.BMP;*.JPG;*.TGA;*.PCX;*.PNG;*.PSD)", 1, "")
					If Not @error Then
						$Background_Image = $var
						IniWrite($INI, "Config", "BackPic", $var)

						FileDelete($TempFolder & "\FlowBack1.png")
						FileDelete($TempFolder & "\FlowBack2.png")
						FileDelete($TempFolder & "\FlowBack3.png")
						Background($Background_Image)
						If FileExists($TempFolder & "\FlowBack1.png") = 1 And FileExists($TempFolder & "\FlowBack2.png") = 1 And FileExists($TempFolder & "\FlowBack3.png") = 1 Then
							$backgroundTexture1 = GetTexture($TempFolder & "\FlowBack1.png")
							$backgroundTexture2 = GetTexture($TempFolder & "\FlowBack2.png")
							$backgroundTexture3 = GetTexture($TempFolder & "\FlowBack3.png")
							AddSkyBoxSceneNode($backgroundTexture1, $backgroundTexture1, $backgroundTexture3, $backgroundTexture2, $backgroundTexture1, $backgroundTexture1)
						EndIf
					EndIf

			EndSelect
		Case $Settingsgui
			$GetCursorInfo = GUIGetCursorInfo($Settingsgui)

			For $i = 1 To $FFTypeControl[0][0]
				If $GetCursorInfo[4] = $FFTypeControl[$i][0] And $GetCursorInfo[2] = 1 Then
					If $FFTypeControl[$i][7] = 1 Then
						For $s = 0 To 36 Step 2

							_GUICtrlslider_SetImage($FFTypeControl[$i][0], $Theme_dir & "\" & $Theme & "\slidBt.png", 63, 18, $s)
							Sleep(1)
						Next
						$FFTypeControl[$i][7] = 0
						IniWrite($INI, "BT", $FFTypeControl[$i][6], 0)
					ElseIf $FFTypeControl[$i][7] = 0 Then

						For $s = 36 To 0 Step -2
							_GUICtrlslider_SetImage($FFTypeControl[$i][0], $Theme_dir & "\" & $Theme & "\slidBt.png", 63, 18, $s)
							Sleep(1)
						Next
						$FFTypeControl[$i][7] = 1
						IniWrite($INI, "BT", $FFTypeControl[$i][6], 1)
					EndIf
				EndIf
				If $GetCursorInfo[4] = $FFTypeControl[$i][2] And $GetCursorInfo[2] = 1 Then
					_GUICtrlPic_SetBT($FFTypeControl[$i][2], $Theme_dir & "\" & $Theme & "\BTNMH.png", 26, 26)
					Local $oldAPP = GUICtrlRead($FFTypeControl[$i][1])

					If IsArray($All_Apps) Then
						For $iapp = 1 To $All_Apps[0]
							If $All_Apps[$iapp] = $oldAPP Then
								If $iapp > 2 Then
									$newAPP = $All_Apps[$iapp - 1]
									ExitLoop
								Else
									$newAPP = $All_Apps[1]
									ExitLoop
								EndIf
							Else
								$newAPP = $All_Apps[1]
							EndIf
						Next
						GUICtrlSetData($FFTypeControl[$i][1], $newAPP)
					EndIf
					Sleep(333)
					_GUICtrlPic_SetBT($FFTypeControl[$i][2], $Theme_dir & "\" & $Theme & "\BTNM.png", 26, 26)
				EndIf

				If $GetCursorInfo[4] = $FFTypeControl[$i][4] And $GetCursorInfo[2] = 1 Then
					_GUICtrlPic_SetBT($FFTypeControl[$i][4], $Theme_dir & "\" & $Theme & "\BTNPH.png", 26, 26)
					Local $oldAPP = GUICtrlRead($FFTypeControl[$i][1])

					If IsArray($All_Apps) Then
						For $iapp = 1 To $All_Apps[0]
							If $All_Apps[$iapp] = $oldAPP Then
								If $iapp < $All_Apps[0] Then
									$newAPP = $All_Apps[$iapp + 1]
								ElseIf $iapp = $All_Apps[0] Then
									$newAPP = $All_Apps[$iapp]
								EndIf
								ExitLoop
							Else
								$newAPP = $All_Apps[1]
							EndIf
						Next
						GUICtrlSetData($FFTypeControl[$i][1], $newAPP)
					EndIf
					Sleep(333)
					_GUICtrlPic_SetBT($FFTypeControl[$i][4], $Theme_dir & "\" & $Theme & "\BTNP.png", 26, 26)
				EndIf

			Next

			_WinAPI_SetLayeredWindowAttributes($Settingsgui, 0x000010, 0xFF, 0x03)
			If $GetCursorInfo[4] = $themesBTC Or $GetCursorInfo[4] = $themesBTL Or $GetCursorInfo[4] = $themesBTR Or $GetCursorInfo[4] = $themesBTLabel And $GetCursorInfo[2] = 1 Then
				_GUICtrlPic_SetBT($themesBTC, $Theme_dir & "\" & $Theme & "\BTNCH.png", 100, 30)
				_GUICtrlPic_SetBT($themesBTL, $Theme_dir & "\" & $Theme & "\BTNLH.png", 30, 30)
				_GUICtrlPic_SetBT($themesBTR, $Theme_dir & "\" & $Theme & "\BTNRH.png", 30, 30)
				GUICtrlSetData($themesBTLabel, $Redraw)
				For $i = 0 To $Gamer_count
					Remove($Cover[$i][0])
				Next
				Local $compare[2], $Cover_Distance = 70, $Cover_Position[1], $Centred_Game, $camVi = 0, $icolor_red = 0, $icolor_green = 0, $icolor_blue = 0, $ModeFlow = 1, _
						$Gamer_count = 0, $Games_Result = 0, $_Move = 0, $Titel = "XeniaFlow", $backgroundTexture1, $backgroundTexture2, $backgroundTexture3, $Y = 0
				ReDim $Cover[1][2], $Cover_Back[1], $Cover_reflet[1], $Cover_refletLeft[1], $Cover_refletRight[1], $Cover_SideLeft[1], $Cover_SideRight[1], $Cover_SideTop[1], $Cover_Name[1], $ListArray[1][2]

				Load_games()

				If $Games_Result > 0 Then
					If Mod($Games_Result, 2) Then
						Draw(($Cover_Distance * $Games_Result) - ($Cover_Distance * (($Games_Result - 1) / 2)))
						$_Move = ($Cover_Distance * $Games_Result) - ($Cover_Distance * (($Games_Result - 1) / 2))
					Else
						Draw(($Cover_Distance * $Games_Result) - ($Cover_Distance * ($Games_Result / 2)))
						$_Move = ($Cover_Distance * $Games_Result) - ($Cover_Distance * ($Games_Result / 2))
					EndIf
					GUICtrlSetData($label_gameName, $Cover[$_Move / $Cover_Distance][1])
				EndIf
				_GUICtrlPic_SetBT($themesBTC, $Theme_dir & "\" & $Theme & "\BTNC.png", 100, 30)
				_GUICtrlPic_SetBT($themesBTL, $Theme_dir & "\" & $Theme & "\BTNL.png", 30, 30)
				_GUICtrlPic_SetBT($themesBTR, $Theme_dir & "\" & $Theme & "\BTNR.png", 30, 30)
				GUICtrlSetData($themesBTLabel, $Redraw)
			EndIf
		Case $parentgui
			$nextpos = ControlGetPos($parentgui, "", $next)
			If $mausX > $nextpos[0] And $mausX < $nextpos[0] + $nextpos[2] And $mausY > $nextpos[1] And $mausY < $nextpos[1] + $nextpos[3] And _IsPressed("01") Then
				_ControlMoveANI($parentgui, "", $next, $nextpos[0] + 10, -1, -1, -1, 100, 2)
				Do
					_View1($Centred_Game)
					If $_Move = $Gamer_count * $Cover_Distance Then
					Else
						$TextMX = 1280/2-400
						$TextMY = 30
						_SoundPlay($sound, 0)
						For $i = 1 To 20
							$_Move += $Cover_Distance / 20
							Draw($_Move)

							If $i <= 10 Then
								$TextMX += 50
								$TextMY -= 5
								ControlMove($parentgui, "", $label_gameName, $TextMX, $TextMY)
								GUICtrlSetFont($label_gameName, 20 - $i, 400)
							EndIf
							GUICtrlSetData($label_gameName, $Cover[$_Move / $Cover_Distance][1])

							If $i > 10 Then
								$TextMX += 50
								$TextMY += 5
								ControlMove($parentgui, "", $label_gameName, -1000 + $TextMX, $TextMY)
								GUICtrlSetFont($label_gameName, $i, 400)
							EndIf
							Sleep(10)

						Next
					EndIf
				Until Not _IsPressed("01")
				_ControlMoveANI($parentgui, "", $next, $nextpos[0], -1, -1, -1, 100, 2)
			EndIf

			$pervpos = ControlGetPos($parentgui, "", $perv)
			If $mausX > $pervpos[0] And $mausX < $pervpos[0] + $pervpos[2] And $mausY > $pervpos[1] And $mausY < $pervpos[1] + $pervpos[3] And _IsPressed("01") Then
				ConsoleWrite($pervpos[0])
				_ControlMoveANI($parentgui, "", $perv, $pervpos[0] - 10, -1, -1, -1, 100, 2)
				Do
					_View1($Centred_Game)
					If $_Move = 0 Then
					Else
						$TextMX = -240
						$TextMY = 30
						_SoundPlay($sound, 0)
						For $i = 1 To 20
							$_Move -= $Cover_Distance / 20
							Draw($_Move)
							If $i <= 10 Then
								$TextMX -= 50
								$TextMY -= 5
								ControlMove($parentgui, "", $label_gameName, $TextMX, $TextMY)
								GUICtrlSetFont($label_gameName, 20 - $i, 400)
							EndIf

							GUICtrlSetData($label_gameName, $Cover[$_Move / $Cover_Distance][1])
							If $i > 10 Then
								$TextMX += 50
								$TextMY += 5
								ControlMove($parentgui, "", $label_gameName, -$TextMX, $TextMY)
								GUICtrlSetFont($label_gameName, $i, 400)
							EndIf
							Sleep(10)
						Next
					EndIf
				Until Not _IsPressed("01")
				_ControlMoveANI($parentgui, "", $perv, $pervpos[0], -1, -1, -1, 100, 2)
			EndIf

	EndSwitch

	If BitAND(WinGetState($parentgui, ""), 8) Or BitAND(WinGetState($Main_Flow_gui, ""), 8) Or _
			BitAND(WinGetState($device, ""), 8) Or BitAND(WinGetState($Info_child_Gui, ""), 8) Or _
			BitAND(WinGetState($Info_child_Gui_trans), 8) Or BitAND(WinGetState($Settingsgui), 8) Then

		$Centred_Game = $_Move / $Cover_Distance

		If _IsPressed("02") Then ; RIGHT CLICK SHOW GAME INFO
			$mouse_pos = MouseGetPos(0)
			Local $coll = GetSceneNodeFromScreenCoordinatesBB(MouseGetPos(0), MouseGetPos(1))
			For $i = 0 To $Gamer_count Step 1
				If $coll = $Cover[$i][0] And $coll = $Cover[$Centred_Game][0] And $stateSettings = 0 Then

					If $stateSettings = 1 Then
						GUISetState(@SW_HIDE, $Settingsgui)
						_WinAnimate($SettingsguiTrans, BitOR($AW_HIDE, $AW_CENTER), 300)
						$stateSettings = 0
					EndIf

					For $im = 0 To $Gamer_count Step 1
						SetVisible($Cover_refletLeft[$im], 0)
						SetVisible($Cover_refletRight[$im], 0)
					Next
					_SoundPlay($sound, 0)
					For $deg = 0 To 180 Step 5
						BeginScene(True, True, 0, $icolor_red, $icolor_green, $icolor_blue)
						SetRotation($Cover[$Centred_Game][0], 0, $deg, 0)
						RemoveAnimators($Cover[$Centred_Game][0])
						SetPosition($Cover[$Centred_Game][0], GetAbsolutePosition($Cover[$Centred_Game][0], "X") + 2, 0, GetAbsolutePosition($Cover[$Centred_Game][0], "Z") + 5.5)
						AddCameraSceneNode(0, 0, 0, $deg + 200, 0, 0, 0)
						SceneDraw()
						GuiDraw()
						EndScene()
						Sleep(1)
					Next

					$Centred_GameMovement = createFlyCircleAnimator(GetAbsolutePosition($Cover[$Centred_Game][0], "X"), GetAbsolutePosition($Cover[$Centred_Game][0], "Y"), GetAbsolutePosition($Cover[$Centred_Game][0], "Z"), 5, 0.0003, 0, 1, 0)
					AddAnimator($Cover[$Centred_Game][0], $Centred_GameMovement)
					_WinAnimate($Info_child_Gui_trans, $AW_HOR_NEGATIVE, 200)
					_WinAnimate($Info_child_Gui, $AW_HOR_NEGATIVE, 20)
					$ModeFlow = 0
					For $t = 0 To 100 Step 5
						If $t < 50 Then
							ControlMove($parentgui, "", $label_gameName, 0, 550 + $t)
						Else
							ControlMove($parentgui, "", $label_gameName, 524, -50 + $t, 500)
						EndIf
						Sleep(1)
					Next
				EndIf

				If $coll = $Cover_Back[$i] And $coll = $Cover_Back[$Centred_Game] Then

					$camVi = 380
					_SoundPlay($sound, 0)
					For $deg = 180 To 0 Step -5
						$camVi -= 5
						BeginScene(True, True, 0, $icolor_red, $icolor_green, $icolor_blue)
						SetRotation($Cover[$Centred_Game][0], 0, $deg, 0)
						RemoveAnimators($Cover[$Centred_Game][0])
						SetPosition($Cover[$Centred_Game][0], GetAbsolutePosition($Cover[$Centred_Game][0], "X") - 2, 0, GetAbsolutePosition($Cover[$Centred_Game][0], "Z") - 5.5)
						AddCameraSceneNode(0, 0, 0, $camVi, 0, 0, 0)
						SceneDraw()
						GuiDraw()
						EndScene()
						Sleep(1)
					Next

					For $im = 0 To $Gamer_count Step 1
						SetVisible($Cover_refletLeft[$im], 1)
						SetVisible($Cover_refletRight[$im], 1)
					Next
					For $t = 0 To 50 Step 10
						ControlMove($parentgui, "", $label_gameName, 0, 600 - $t, 1024)
						Sleep(1)
					Next
					Draw($_Move)
					_WinAnimate($Info_child_Gui, BitOR($AW_HIDE, $AW_HOR_POSITIVE), 20)
					_WinAnimate($Info_child_Gui_trans, BitOR($AW_HIDE, $AW_HOR_POSITIVE), 200)

					$ModeFlow = 1
				EndIf
			Next

		EndIf




		If _IsPressed("01") Or _IsPressed("0D") Then

			$mouse_pos = MouseGetPos(0)
			Local $coll = GetSceneNodeFromScreenCoordinatesBB(MouseGetPos(0), MouseGetPos(1))
			For $i = 0 To $Gamer_count Step 1
			   If $coll = $Cover[$i][0] And $coll = $Cover[$Centred_Game][0] And $stateSettings = 0 Then
				   
				  Local $Game_Path=IniRead(@ScriptDir & "\Config.ini","GUI","xbox360gamepath","")
                  Local $Xenia_Path=IniRead(@ScriptDir & "\Config.ini","GUI","Xenia Path","")
                  Local $hsearch = FileFindFirstFile($Game_Path & "\" & $cover[$_move / $cover_distance][1] & "\" & "*.xex" & " " & "--f")
                  Local $iresult = $idok, $sfilename = FileFindNextFile($hsearch)
                  Run('"' & $Xenia_Path & '" ' & '"' & $Game_Path & "\" & $cover[$_move / $cover_distance][1] & "\" & $sfilename & '"')
				   
               EndIf
			Next
		EndIf

		If _IsPressed("27") Then ; Flow Right

			_View1($Centred_Game)
			If $_Move = $Gamer_count * $Cover_Distance Then
			Else
				$TextMX = 240
				$TextMY = 30
				_SoundPlay($sound, 0)
				For $i = 1 To 20
					$_Move += $Cover_Distance / 20
					Draw($_Move)

					If $i <= 10 Then
						$TextMX += 50
						$TextMY -= 5
						ControlMove($parentgui, "", $label_gameName, $TextMX, $TextMY)
						GUICtrlSetFont($label_gameName, 20 - $i, 400)
					EndIf
					GUICtrlSetData($label_gameName, $Cover[$_Move / $Cover_Distance][1])

					If $i > 10 Then
						$TextMX += 50
						$TextMY += 5
						ControlMove($parentgui, "", $label_gameName, -1000 + $TextMX, $TextMY)
						GUICtrlSetFont($label_gameName, $i, 400)
					EndIf
					Sleep(10)

				Next
			EndIf

		EndIf

		If _IsPressed("25") Then ; Flow Left
			_View1($Centred_Game)
			If $_Move = 0 Then
			Else
				$TextMX = -240
				$TextMY = 30
				_SoundPlay($sound, 0)
				For $i = 1 To 20
					$_Move -= $Cover_Distance / 20
					Draw($_Move)
					If $i <= 10 Then
						$TextMX -= 50
						$TextMY -= 5
						ControlMove($parentgui, "", $label_gameName, $TextMX, $TextMY)
						GUICtrlSetFont($label_gameName, 20 - $i, 400)
					EndIf

					GUICtrlSetData($label_gameName, $Cover[$_Move / $Cover_Distance][1])
					If $i > 10 Then
						$TextMX += 50
						$TextMY += 5
						ControlMove($parentgui, "", $label_gameName, -$TextMX, $TextMY)
						GUICtrlSetFont($label_gameName, $i, 400)
					EndIf
					Sleep(10)
				Next
			EndIf
		EndIf
	EndIf
	If $Y < 0 Then $Y += 360
	If $Y > 360 Then $Y -= 360
	$Y += 0.5


WEnd
;===================================================================================================================================================================;
;========================================================================= Function ==========================================================================;
;===================================================================================================================================================================;

Func WM_NCHITTEST($hWnd, $iMsg, $iwParam, $ilParam)
	If ($hWnd = $Main_Flow_gui) And ($iMsg = $WM_NCHITTEST) Then Return $HTCAPTION
EndFunc   ;==>WM_NCHITTEST

Func _WinAnimate($hWnd, $iFlags, $iTime = 1000, $vUser32Dll = 'user32.dll')
	Local $aReturn = DllCall($vUser32Dll, 'int', 'AnimateWindow', 'hwnd', $hWnd, 'int', $iTime, 'long', $iFlags)
	Return $aReturn[0]
EndFunc   ;==>_WinAnimate 



;===================================================================================================================================================================;
;========================================================================= FLOW MODE HERE ==========================================================================;
;===================================================================================================================================================================;






Func Draw($Start_point)

	BeginScene(True, True, 0, $icolor_red, $icolor_green, $icolor_blue)
	$Cover_Distance = 70
	If StringInStr($Start_point / $Cover_Distance, ".") = 0 Then
		GUICtrlSetData($Alphabet_gameName, StringUpper(StringLeft($Cover[$Start_point / $Cover_Distance][1], 1)))
	EndIf

	For $i = 0 To $Gamer_count
		$Cover_Position[$i] = $Start_point + ($i * - $Cover_Distance)
		If $Cover_Position[$i] > -90 And $Cover_Position[$i] < 90 Then
			SetRotation($Cover[$i][0], 0, -$Cover_Position[$i], 0)
			$CoverRunAnimator1 = createFlyCircleAnimator($Cover_Position[$i], 0, (90 - Abs($Cover_Position[$i])) / 1.5, 0, 0.0003, 0, 1, 0)
			AddAnimator($Cover[$i][0], $CoverRunAnimator1)

			SetVisible($Cover[$i][0], 1)
		ElseIf $Cover_Position[$i] > 0 And $Cover_Position[$i] < 540 Then
			SetRotation($Cover[$i][0], 0, -90, 0)
			$CoverRunAnimator2 = CreateFlyCircleAnimator($Cover_Position[$i], 0, 0, 0, 0.0003, 0, 1, 0)
			AddAnimator($Cover[$i][0], $CoverRunAnimator2)
			SetVisible($Cover[$i][0], 1)
		ElseIf $Cover_Position[$i] < 0 And $Cover_Position[$i] > -540 Then
			SetRotation($Cover[$i][0], 0, 90, 0)
			$CoverRunAnimator3 = CreateFlyCircleAnimator($Cover_Position[$i], 0, 0, 0, 0.0003, 0, 1, 0)
			AddAnimator($Cover[$i][0], $CoverRunAnimator3)
			SetVisible($Cover[$i][0], 1)
		Else
			SetVisible($Cover[$i][0], 0)
		EndIf
	Next


	SceneDraw()
	GuiDraw()

	EndScene()

EndFunc   ;==>Draw


;===================================================================================================================================================================;
;========================================================================= FLOW MODE HERE ==========================================================================;
;===================================================================================================================================================================;




Func _View1($Centred_Game_Reset)
	If $ModeFlow = 1 Then
	ElseIf $ModeFlow = 0 Then
		For $t = 0 To 50 Step 10
			ControlMove($parentgui, "", $label_gameName, 0, 600 - $t, 1024)
			Sleep(1)
		Next
		_WinAnimate($Info_child_Gui, BitOR($AW_HIDE, $AW_HOR_POSITIVE), 20)
		_WinAnimate($Info_child_Gui_trans, BitOR($AW_HIDE, $AW_HOR_POSITIVE), 200)
		$camVi = 380
		RemoveAnimators($Cover[$Centred_Game_Reset][0])
		_SoundPlay($sound, 0)
		For $deg = 180 To 0 Step -5
			$camVi -= 5
			BeginScene(True, True, 0, $icolor_red, $icolor_green, $icolor_blue)
			SetRotation($Cover[$Centred_Game_Reset][0], 0, $deg, 0)
			SetPosition($Cover[$Centred_Game_Reset][0], GetAbsolutePosition($Cover[$Centred_Game_Reset][0], "X") - 2, 0, GetAbsolutePosition($Cover[$Centred_Game_Reset][0], "Z") - 6)
			AddCameraSceneNode(0, 0, 0, $camVi, 0, 0, 0)
			SceneDraw()
			GuiDraw()
			EndScene()
			Sleep(1)
		Next

		For $im = 0 To $Gamer_count Step 1
			SetVisible($Cover_refletLeft[$im], 1)
			SetVisible($Cover_refletRight[$im], 1)
		Next

		$ModeFlow = 1
	EndIf
EndFunc   ;==>_View1

Func Load_games()
	$NopicTexture = GetTexture($Theme_dir & "\" & $Theme & "\flatnopic.png")
	$TopTexture = GetTexture($TempFolder & "\Top.png")
	$RightTexture = GetTexture($TempFolder & "\case_right.png")

	$gdi_hNoImage = _GDIPlus_ImageLoadFromFile($Theme_dir & "\" & $Theme & "\flatnopic.png")
	$gdi_NoimageWidth = _GDIPlus_ImageGetWidth($gdi_hNoImage)
	$gdi_NoimageHeight = _GDIPlus_ImageGetHeight($gdi_hNoImage)
	$gdi_hClonImage = _GDIPlus_BitmapCloneArea($gdi_hNoImage, 0, 0, $gdi_NoimageWidth, $gdi_NoimageHeight, $GDIP_PXF32ARGB)
	_GDIPlus_ImageRotateFlip($gdi_hClonImage, 6)
	_GDIPlus_ImageSaveToFile($gdi_hClonImage, $TempFolder & "\flatnopicTrans.png")
	_WinAPI_DeleteObject($gdi_hClonImage)
	_GDIPlus_ImageDispose($gdi_hNoImage)


	$NopicTextureTrans = GetTexture($TempFolder & "\flatnopicTrans.png")
	Local $aFiles = ""

	If $Fileformat <> "" Then
		$formatcount = StringSplit($Fileformat, "|", 0)
		Dim $szDrive, $szDir, $szFName, $szExt

		For $j = 1 To $formatcount[0]
			If IniRead($INI, "BT", $formatcount[$j], -1) = 1 Then
				Local $All_aFiles = _FileListToArray($Gamer_dir, "*." & $formatcount[$j], 1)
				If IsArray($All_aFiles) Then
					For $k = 1 To $All_aFiles[0]
						$aFiles &= "|" & $All_aFiles[$k]
					Next
				EndIf
			EndIf
		Next
		If $aFiles <> "" Then $aFiles = StringSplit(StringTrimLeft($aFiles, 1), "|", 0)
	EndIf

	If IsArray($aFiles) Then
		$Gamer_count = $aFiles[0] - 1
		ReDim $ListArray[$aFiles[0]][2]
		ReDim $Cover[$aFiles[0]][3]
		ReDim $Cover_Back[$aFiles[0]]
		ReDim $Cover_reflet[$aFiles[0]]
		ReDim $Cover_refletLeft[$aFiles[0]]
		ReDim $Cover_refletRight[$aFiles[0]]
		ReDim $Cover_SideLeft[$aFiles[0]]
		ReDim $Cover_SideRight[$aFiles[0]]
		ReDim $Cover_SideTop[$aFiles[0]]
		ReDim $Cover_Name[$aFiles[0]]
		ReDim $Cover_Position[$aFiles[0]]
		
		;$Games_Result = $aFiles[0] - 1
		$Games_Result = $aFiles[0] - $Gamer_count - 1

		For $i = 1 To $aFiles[0]
			_PathSplit($Gamer_dir & "\" & $aFiles[$i], $szDrive, $szDir, $szFName, $szExt)
			$ListArray[$i - 1][0] = $szFName
			$ListArray[$i - 1][1] = $szExt
		Next

		For $i = 0 To $aFiles[0] - 1
			If FileExists($FullCover_dir & "\" & $ListArray[$i][0] & ".png") = 1 Then

				If FileExists($Cache_dir & "\" & $ListArray[$i][0] & "Left") = 0 Or FileExists($Cache_dir & "\" & $ListArray[$i][0] & "Right") = 0 Or FileExists($Cache_dir & "\" & $ListArray[$i][0] & "Center") = 0 Then
					$gdi_pngSrc = $FullCover_dir & "\" & $ListArray[$i][0] & ".png"
					$gdi_hImage = _GDIPlus_ImageLoadFromFile($gdi_pngSrc)

					$iImageType = _GDIPlus_ImageGetRawFormat($gdi_hImage)
					If $iImageType[1] = "png" Then

						; Extract image width and height from PNG
						$gdi_imageWidth = _GDIPlus_ImageGetWidth($gdi_hImage)
						$gdi_imageHeight = _GDIPlus_ImageGetHeight($gdi_hImage)
						If $gdi_imageWidth = 1632 And $gdi_imageHeight = 1080 Then

							; Get Left, Right & Center from back.png
							$gdi_hLeftImage = _GDIPlus_BitmapCloneArea($gdi_hImage, 0, 0, 778, $gdi_imageHeight, $GDIP_PXF32ARGB)
							$gdi_hRightImage = _GDIPlus_BitmapCloneArea($gdi_hImage, $gdi_imageWidth - 778, 0, 778, $gdi_imageHeight, $GDIP_PXF32ARGB)
							$gdi_hCenterImage = _GDIPlus_BitmapCloneArea($gdi_hImage, 778, 0, 76, $gdi_imageHeight, $GDIP_PXF32ARGB)

							_GDIPlus_ImageRotateFlip($gdi_hCenterImage, 4)
							_GDIPlus_ImageSaveToFile($gdi_hLeftImage, $Cache_dir & "\" & $ListArray[$i][0] & "Left")
							_GDIPlus_ImageSaveToFile($gdi_hRightImage, $Cache_dir & "\" & $ListArray[$i][0] & "Right")
							_GDIPlus_ImageSaveToFile($gdi_hCenterImage, $Cache_dir & "\" & $ListArray[$i][0] & "Center")
							;_TBmpFromBmp($gdi_hRightImage, 10)
							_GDIPlus_ImageRotateFlip($gdi_hRightImage, 6)
							_GDIPlus_ImageSaveToFile($gdi_hRightImage, $Cache_dir & "\" & $ListArray[$i][0] & "Righttrans")
							_GDIPlus_ImageRotateFlip($gdi_hCenterImage, 6)
							_GDIPlus_ImageSaveToFile($gdi_hCenterImage, $Cache_dir & "\" & $ListArray[$i][0] & "Centertrans")

							; Release resources
							_WinAPI_DeleteObject($gdi_hLeftImage)
							_WinAPI_DeleteObject($gdi_hRightImage)
							_WinAPI_DeleteObject($gdi_hCenterImage)
							_GDIPlus_ImageDispose($gdi_hImage)

						EndIf
					EndIf
				EndIf
			EndIf
			$Cover[$i][1] = $ListArray[$i][0]
			$Cover[$i][2] = $ListArray[$i][1]
			$Cover[$i][0] = AddCubeSceneNode(100)

			;Cover Back===================================================================================================
			$Cover_Back[$i] = AddCubeSceneNode(100, $Cover[$i][0])
			If FileExists($Cache_dir & "\" & $ListArray[$i][0] & "Left") = 1 Then
				SetMaterialTexture($Cover_Back[$i], 0, GetTexture($Cache_dir & "\" & $ListArray[$i][0] & "Left"))
			Else
				SetMaterialTexture($Cover_Back[$i], 0, $NopicTexture)
			EndIf
			SetMaterialFlag($Cover_Back[$i], $EMF_LIGHTING, 0)
			SetPosition($Cover_Back[$i], 0, 0, -5)
			;Reflet Center===================================================================================================
			$Cover_reflet[$i] = AddCubeSceneNode(100, $Cover[$i][0])
			If FileExists($Cache_dir & "\" & $ListArray[$i][0] & "Righttrans") = 1 Then
				SetMaterialTexture($Cover_reflet[$i], 0, GetTexture($Cache_dir & "\" & $ListArray[$i][0] & "Righttrans"))
			Else
				SetMaterialTexture($Cover_reflet[$i], 0, $NopicTextureTrans)
			EndIf
			SetPosition($Cover_reflet[$i], 0, -76, 0)
			SetMaterialType($Cover_reflet[$i], $EMT_TRANSPARENT_ADD_COLOR)
			SetMaterialFlag($Cover_reflet[$i], $EMF_ANISOTROPIC_FILTER, 0)
			SetScale($Cover_reflet[$i], 1, 0.50, 1)
			$LightNode3 = AddLightSceneNode($Cover_reflet[$i], -1, 70, 160, 10, 10, 10, 100)
			AddChild($Cover_reflet[$i], $LightNode3)
			;Reflet Left===================================================================================================
			$Cover_refletLeft[$i] = AddCubeSceneNode(100, $Cover[$i][0])
			If FileExists($Cache_dir & "\" & $ListArray[$i][0] & "Righttrans") = 1 Then
				SetMaterialTexture($Cover_refletLeft[$i], 0, GetTexture($Cache_dir & "\" & $ListArray[$i][0] & "Centertrans"))
			Else
				SetMaterialTexture($Cover_refletLeft[$i], 0, $NopicTextureTrans)
			EndIf
			SetPosition($Cover_refletLeft[$i], 50, -76, -4)
			SetMaterialType($Cover_refletLeft[$i], $EMT_TRANSPARENT_ADD_COLOR)
			SetMaterialFlag($Cover_refletLeft[$i], $EMF_ANISOTROPIC_FILTER, 0)
			SetScale($Cover_refletLeft[$i], 0.01, 0.50, 1)
			$LightNode4 = AddLightSceneNode($Cover_refletLeft[$i], -1, 50, 160, 255, 255, 255, 100)
			AddChild($Cover_refletLeft[$i], $LightNode4)
			;Reflet Right===================================================================================================
			$Cover_refletRight[$i] = AddCubeSceneNode(100, $Cover[$i][0])
			SetMaterialTexture($Cover_refletRight[$i], 0, $RightTexture)
			SetPosition($Cover_refletRight[$i], -50, -76, -4)
			SetMaterialType($Cover_refletRight[$i], $EMT_TRANSPARENT_ADD_COLOR)
			SetMaterialFlag($Cover_refletRight[$i], $EMF_ANISOTROPIC_FILTER, 0)
			SetScale($Cover_refletRight[$i], 0.01, 0.50, 1)
			$LightNode5 = AddLightSceneNode($Cover_refletRight[$i], -1, 100, -160, 255, 255, 255, 100)
			AddChild($Cover_refletRight[$i], $LightNode5)
			;Cover Right===================================================================================================
			$Cover_SideRight[$i] = AddCubeSceneNode(100, $Cover[$i][0])
			SetMaterialTexture($Cover_SideRight[$i], 0, $RightTexture)
			SetMaterialFlag($Cover_SideRight[$i], $EMF_LIGHTING, 0)
			SetPosition($Cover_SideRight[$i], -0.5, 0, -4)
			SetScale($Cover_SideRight[$i], 1.01, 1, 0.9)
			;Cover Left===================================================================================================
			$Cover_SideLeft[$i] = AddCubeSceneNode(100, $Cover[$i][0])
			SetMaterialTexture($Cover_SideLeft[$i], 0, GetTexture($Cache_dir & "\" & $ListArray[$i][0] & "Center"))
			SetMaterialFlag($Cover_SideLeft[$i], $EMF_LIGHTING, 0)
			SetPosition($Cover_SideLeft[$i], 0.5, 0, -4)
			;Cover Top===================================================================================================
			$Cover_SideTop[$i] = AddCubeSceneNode(100, $Cover[$i][0])
			SetMaterialTexture($Cover_SideTop[$i], 0, $TopTexture)
			SetScale($Cover_SideTop[$i], 1, 1.01, 0.9)
			SetMaterialFlag($Cover_SideTop[$i], $EMF_LIGHTING, 0)
			SetPosition($Cover_SideTop[$i], 0, 0, -4)
			;Cover Front===================================================================================================
			If FileExists($Cache_dir & "\" & $ListArray[$i][0] & "Right") = 1 Then
				SetMaterialTexture($Cover[$i][0], 0, GetTexture($Cache_dir & "\" & $ListArray[$i][0] & "Right"))
			Else
				SetMaterialTexture($Cover[$i][0], 0, $NopicTexture)
			EndIf
			SetMaterialFlag($Cover[$i][0], $EMF_LIGHTING, 0)

			SetScale($Cover[$i][0], 1, 1.5, 0.1)
		Next

	EndIf
	;_ArrayDisplay($Cover, "ter")
EndFunc   ;==>Load_games

Func _GUICtrlslider_SetImage($idPic, $sPicPath, $SLDW, $SLDH, $startSLD)
	$CloneSLDImage = _GDIPlus_BitmapCreateFromFile($sPicPath)
	$CloneSLD = _GDIPlus_BitmapCloneArea($CloneSLDImage, $startSLD, 0, $SLDW, $SLDH, $GDIP_PXF32ARGB)
	Local $SLDBmp = _GDIPlus_BitmapCreateHBITMAPFromBitmap($CloneSLD)
	Local Const $STM_SETIMAGE = 0x0172
	GUICtrlSendMsg($idPic, $STM_SETIMAGE, 0, $SLDBmp)
	_WinAPI_DeleteObject($SLDBmp)
	_WinAPI_DeleteObject($CloneSLD)
	_GDIPlus_ImageDispose($CloneSLDImage)
EndFunc   ;==>_GUICtrlslider_SetImage

Func _GUICtrlPic_SetBT($idPic, $sPicPath, $BTNW, $BTNH)

	Local $BTNImage = _GDIPlus_ImageLoadFromFile($sPicPath)
	Local $BTNImageW = _GDIPlus_ImageGetWidth($BTNImage)
	Local $BTNImageH = _GDIPlus_ImageGetHeight($BTNImage)
	_GDIPlus_ImageDispose($BTNImage)

	Local $BTNNewW = $BTNW
	Local $BTNNewH = $BTNH

	If $BTNImageW >= $BTNImageH Then
		$BTNImageH *= $BTNNewW / $BTNImageW
		$BTNImageW = $BTNNewW
		If $BTNImageH > $BTNNewH Then
			$BTNImageW *= $BTNNewH / $BTNImageH
			$BTNImageH = $BTNNewH
		EndIf
	Else
		$BTNImageW *= $BTNNewH / $BTNImageH
		$BTNImageH = $BTNNewH
		If $BTNImageW > $BTNNewW Then
			$BTNImageH *= $BTNNewW / $BTNImageW
			$BTNImageW = $BTNNewW
		EndIf
	EndIf

	_GDIPlus_Resize_image($sPicPath, "BTN.png", $BTNImageW, $BTNImageH)

	Local $BTNImage = _GDIPlus_ImageLoadFromFile($TempFolder & "\BTN.png")
	Local $BTNImageX = _GDIPlus_ImageGetWidth($BTNImage)
	Local $BTNImageY = _GDIPlus_ImageGetHeight($BTNImage)
	Local $BTNBitmap = DllCall($ghGDIPDll, "uint", "GdipCreateBitmapFromScan0", "int", $BTNW, "int", $BTNImageY, "int", 0, "int", 0x0026200A, "ptr", 0, "int*", 0)
	$BTNBitmap = $BTNBitmap[6]
	Local $BTNTexture = _GDIPlus_ImageGetGraphicsContext($BTNBitmap)
	For $i = 0 To $BTNW Step $BTNImageX
		_GDIPlus_GraphicsDrawImage($BTNTexture, $BTNImage, $i, 0)
	Next
	Local $BTNBmp = _GDIPlus_BitmapCreateHBITMAPFromBitmap($BTNBitmap)
	_GDIPlus_ImageDispose($BTNImage)
	_GDIPlus_BitmapDispose($BTNBitmap)
	_GDIPlus_GraphicsDispose($BTNTexture)

	Local Const $STM_SETIMAGE = 0x0172
	_WinAPI_DeleteObject(GUICtrlSendMsg($idPic, $STM_SETIMAGE, 0, $BTNBmp))
	_WinAPI_DeleteObject($BTNBmp)
EndFunc   ;==>_GUICtrlPic_SetBT

Func WM_ACTIVATE($hWnd, $msg, $wParam, $lParam)
	Local $wActive = BitAND($wParam, 0x0000FFFF)

	Switch $hWnd
		Case $Settingsgui
			If Not $wActive Then
				WinActivate($parentgui)
				WinActivate($Settingsgui)
			EndIf
	EndSwitch

	Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_ACTIVATE

Func _GUICtrlPic_SetImage($idPic, $sPicPath)

	$aSize = WinGetClientSize(GUICtrlGetHandle($idPic))
	_GDIPlus_Resize_image($sPicPath, "_Tmp.png", $aSize[0], $aSize[1])

	Local $BTNImage = _GDIPlus_ImageLoadFromFile($TempFolder & "\_Tmp.png")
	Local $BTNImageX = _GDIPlus_ImageGetWidth($BTNImage)
	Local $BTNImageY = _GDIPlus_ImageGetHeight($BTNImage)
	Local $BTNBitmap = DllCall($ghGDIPDll, "uint", "GdipCreateBitmapFromScan0", "int", $BTNImageX, "int", $BTNImageY, "int", 0, "int", 0x0026200A, "ptr", 0, "int*", 0)
	$BTNBitmap = $BTNBitmap[6]
	Local $BTNTexture = _GDIPlus_ImageGetGraphicsContext($BTNBitmap)

	_GDIPlus_GraphicsDrawImage($BTNTexture, $BTNImage, 0, 0)

	Local $BTNBmp = _GDIPlus_BitmapCreateHBITMAPFromBitmap($BTNBitmap)
	_GDIPlus_ImageDispose($BTNImage)
	_GDIPlus_BitmapDispose($BTNBitmap)
	_GDIPlus_GraphicsDispose($BTNTexture)

	Local Const $STM_SETIMAGE = 0x0172
	_WinAPI_DeleteObject(GUICtrlSendMsg($idPic, $STM_SETIMAGE, 0, $BTNBmp))
	_WinAPI_DeleteObject($BTNBmp)
EndFunc   ;==>_GUICtrlPic_SetImage

Func _GDIPlus_Resize_image($sInImage, $sOutImage, $iW, $iH)
	$graphics = _GDIPlus_GraphicsCreateFromHWND($Main_Flow_gui)
	$hBitmap = _GDIPlus_BitmapCreateFromGraphics($iW, $iH, $graphics)
	$hGraphic = _GDIPlus_ImageGetGraphicsContext($hBitmap)
	$hImage2 = _GDIPlus_ImageLoadFromFile($sInImage)
	_GDIPlus_GraphicsDrawImageRect($hGraphic, $hImage2, 0, 0, $iW, $iH)
	_GDIPlus_ImageSaveToFile($hBitmap, $TempFolder & "\" & $sOutImage)

	_GDIPlus_BitmapDispose($hBitmap)
	_GDIPlus_ImageDispose($hImage2)
	_GDIPlus_GraphicsDispose($hGraphic)
	_WinAPI_DeleteObject($hBitmap)
EndFunc   ;==>_GDIPlus_Resize_image

Func Background($InImage)
	FileDelete($TempFolder & "\TempB.png")
	_GDIPlus_Resize_image($InImage, "TempB.png", 800, 590)
	$Emptry = _GDIPlus_GraphicsCreateFromHWND($Main_Flow_gui)
	$hBitmap1 = _GDIPlus_BitmapCreateFromGraphics(600, 800, $Emptry)
	$hBitmap2 = _GDIPlus_BitmapCreateFromGraphics(600, 800, $Emptry)
	$hBitmap3 = _GDIPlus_BitmapCreateFromGraphics(600, 800, $Emptry)

	$hGraphic1 = _GDIPlus_ImageGetGraphicsContext($hBitmap1)
	$hGraphic2 = _GDIPlus_ImageGetGraphicsContext($hBitmap2)
	$hGraphic3 = _GDIPlus_ImageGetGraphicsContext($hBitmap3)

	$InputImage = _GDIPlus_ImageLoadFromFile($TempFolder & "\TempB.png")

	$CloneImage1 = _GDIPlus_BitmapCloneArea($InputImage, 100, 0, 600, 590, $GDIP_PXF32ARGB)
	$CloneImage2 = _GDIPlus_BitmapCloneArea($InputImage, 700, 0, 100, 590, $GDIP_PXF32ARGB)
	$CloneImage3 = _GDIPlus_BitmapCloneArea($InputImage, 0, 0, 100, 590, $GDIP_PXF32ARGB)

	_GDIPlus_GraphicsDrawImageRect($hGraphic1, $CloneImage1, 0, 105, 600, 590)
	_GDIPlus_ImageSaveToFile($hBitmap1, $TempFolder & "\FlowBack1.png")
	_GDIPlus_GraphicsDrawImageRect($hGraphic2, $CloneImage2, 0, 105, 100, 590)
	_GDIPlus_ImageSaveToFile($hBitmap2, $TempFolder & "\FlowBack2.png")
	_GDIPlus_GraphicsDrawImageRect($hGraphic3, $CloneImage3, 500, 105, 100, 590)
	_GDIPlus_ImageSaveToFile($hBitmap3, $TempFolder & "\FlowBack3.png")

	_GDIPlus_BitmapDispose($hBitmap1)
	_GDIPlus_BitmapDispose($hBitmap2)
	_GDIPlus_BitmapDispose($hBitmap3)
	_GDIPlus_ImageDispose($InputImage)
	_GDIPlus_GraphicsDispose($hGraphic1)
	_GDIPlus_GraphicsDispose($hGraphic2)
	_GDIPlus_GraphicsDispose($hGraphic3)

	_WinAPI_DeleteObject($CloneImage1)
	_WinAPI_DeleteObject($CloneImage2)
	_WinAPI_DeleteObject($CloneImage3)
EndFunc   ;==>Background

Func Background2($InImage)
   FileDelete($TempFolder & "\TempB.png")
   FileDelete($TempFolder & "\TempA.png")
   _GDIPlus_Resize_image($InImage, "TempA.png", 1280, 720)
   _GDIPlus_Resize_image($InImage, "TempB.png", 1280, 720)
   $hGraphic = _GDIPlus_GraphicsCreateFromHWND($Main_Flow_gui)
   $hBitmap = _GDIPlus_BitmapCreateFromGraphics(1280, 720, $hGraphic)
   $hGraphic1 = _GDIPlus_ImageGetGraphicsContext($hBitmap)
   $hImage   = _GDIPlus_ImageLoadFromFile($TempFolder & "\TempA.png")
   $hImage2   = _GDIPlus_ImageLoadFromFile($TempFolder & "\TempB.png")
   _GDIPlus_GraphicsDrawImageRect($hGraphic1, $hImage, 0, 0, 1280, 720)
   _GDIPlus_GraphicsDrawImageRect($hGraphic1, $hImage2, 0, 0, 1280, 720)
   _GDIPlus_ImageSaveToFile($hBitmap, $TempFolder & "\Background.png")
   _GDIPlus_BitmapDispose($hBitmap)
   _GDIPlus_GraphicsDispose($hGraphic1)
   _GDIPlus_ImageDispose($hImage)
   _GDIPlus_ImageDispose($hImage2)
EndFunc   ;==>Background2

Func _GDIPlus_ImageRotateFlip($hImage, $rfType)
	Local $aResult
	$aResult = DllCall($ghGDIPDll, "int", "GdipImageRotateFlip", "hwnd", $hImage, "long", $rfType)
	If @error Then Return SetError(@error, @extended, False)
	Return SetError($aResult[0], 0, $aResult[0] = 0)
EndFunc   ;==>_GDIPlus_ImageRotateFlip

Func _ControlMoveANI($_CMTitle, $_CMText, $_CMCtrlID, $_CMx, $_CMy, $_CMw = -1, $_CMh = -1, $_CMFrames = 25, $_CMFlag = 3, $_CMSpeed = 2.5, $_CMminTime = 1)
	$_CMExistPos = ControlGetPos($_CMTitle, $_CMText, $_CMCtrlID)
	If @error Then Return (SetError(1, "", 0))
	If $_CMw < -1 Or $_CMh < -1 Or $_CMFrames < 1 Or $_CMFlag < 0 Or $_CMSpeed < 1 Or $_CMminTime < 1 Then Return (SetError(2, "", 0))
	If $_CMx = -1 Then $_CMx = $_CMExistPos[0]
	If $_CMy = -1 Then $_CMy = $_CMExistPos[1]
	If $_CMw = -1 Then $_CMw = $_CMExistPos[2]
	If $_CMh = -1 Then $_CMh = $_CMExistPos[3]

	Local $_CMDiffX = $_CMx - $_CMExistPos[0], $_CMDirX = 1
	If $_CMDiffX < 0 Then
		$_CMDiffX = Abs($_CMDiffX)
		$_CMDirX = -1
	EndIf
	Local $_CMDiffY = $_CMy - $_CMExistPos[1], $_CMDirY = 1
	If $_CMDiffY < 0 Then
		$_CMDiffY = Abs($_CMDiffY)
		$_CMDirY = -1
	EndIf
	Local $_CMDiffW = $_CMw - $_CMExistPos[2], $_CMDirW = 1
	If $_CMDiffW < 0 Then
		$_CMDiffW = Abs($_CMDiffW)
		$_CMDirW = -1
	EndIf
	Local $_CMDiffH = $_CMh - $_CMExistPos[3], $_CMDirH = 1
	If $_CMDiffH < 0 Then
		$_CMDiffH = Abs($_CMDiffH)
		$_CMDirH = -1
	EndIf
	$_CMnewX = $_CMExistPos[0]
	$_CMnewY = $_CMExistPos[1]
	$_CMnewW = $_CMExistPos[2]
	$_CMnewH = $_CMExistPos[3]

	$_CMTimer = TimerInit()

	For $_CMi = 1 To $_CMFrames;not actually checking the real bits in the flag to determine behavior - there's too few options to make that worthwhile, but it's structured so if another behavior (bit) was added (option 4), it wouldn't break scripts that already use this function, though a flag of 3 would have to be rethought...
		If $_CMFlag = 0 Then
			If $_CMDiffX <> 0 Then $_CMnewX = $_CMExistPos[0] + $_CMDirX * (($_CMDiffX / $_CMFrames) * $_CMi)
			If $_CMDiffY <> 0 Then $_CMnewY = $_CMExistPos[1] + $_CMDirY * (($_CMDiffY / $_CMFrames) * $_CMi)
			If $_CMDiffW <> 0 Then $_CMnewW = $_CMExistPos[2] + $_CMDirW * (($_CMDiffW / $_CMFrames) * $_CMi)
			If $_CMDiffH <> 0 Then $_CMnewH = $_CMExistPos[3] + $_CMDirH * (($_CMDiffH / $_CMFrames) * $_CMi)
		EndIf

		If $_CMFlag = 1 Then
			If $_CMDiffX <> 0 Then $_CMnewX = $_CMExistPos[0] + $_CMDirX * ((($_CMi * $_CMDiffX) ^ (1 / $_CMSpeed)) * ($_CMDiffX / (($_CMFrames * $_CMDiffX) ^ (1 / $_CMSpeed))))
			If $_CMDiffY <> 0 Then $_CMnewY = $_CMExistPos[1] + $_CMDirY * ((($_CMi * $_CMDiffY) ^ (1 / $_CMSpeed)) * ($_CMDiffY / (($_CMFrames * $_CMDiffY) ^ (1 / $_CMSpeed))))
			If $_CMDiffW <> 0 Then $_CMnewW = $_CMExistPos[2] + $_CMDirW * ((($_CMi * $_CMDiffW) ^ (1 / $_CMSpeed)) * ($_CMDiffW / (($_CMFrames * $_CMDiffW) ^ (1 / $_CMSpeed))))
			If $_CMDiffH <> 0 Then $_CMnewH = $_CMExistPos[3] + $_CMDirH * ((($_CMi * $_CMDiffH) ^ (1 / $_CMSpeed)) * ($_CMDiffH / (($_CMFrames * $_CMDiffH) ^ (1 / $_CMSpeed))))
		EndIf

		If $_CMFlag = 2 Then
			If $_CMDiffX <> 0 Then $_CMnewX = $_CMExistPos[0] + $_CMDirX * ((($_CMi * $_CMDiffX) ^ $_CMSpeed) * ($_CMDiffX / (($_CMFrames * $_CMDiffX) ^ $_CMSpeed)))
			If $_CMDiffY <> 0 Then $_CMnewY = $_CMExistPos[1] + $_CMDirY * ((($_CMi * $_CMDiffY) ^ $_CMSpeed) * ($_CMDiffY / (($_CMFrames * $_CMDiffY) ^ $_CMSpeed)))
			If $_CMDiffW <> 0 Then $_CMnewW = $_CMExistPos[2] + $_CMDirW * ((($_CMi * $_CMDiffW) ^ $_CMSpeed) * ($_CMDiffW / (($_CMFrames * $_CMDiffW) ^ $_CMSpeed)))
			If $_CMDiffH <> 0 Then $_CMnewH = $_CMExistPos[3] + $_CMDirH * ((($_CMi * $_CMDiffH) ^ $_CMSpeed) * ($_CMDiffH / (($_CMFrames * $_CMDiffH) ^ $_CMSpeed)))
		EndIf

		If $_CMFlag = 3 Then
			_ControlMoveANI($_CMTitle, $_CMText, $_CMCtrlID, $_CMExistPos[0] + ($_CMx - $_CMExistPos[0]) / 2, $_CMExistPos[1] + ($_CMy - $_CMExistPos[1]) / 2, $_CMExistPos[2] + ($_CMw - $_CMExistPos[2]) / 2, $_CMExistPos[3] + ($_CMh - $_CMExistPos[3]) / 2, Floor($_CMFrames / 2), 2, $_CMSpeed, Ceiling($_CMminTime / 2))
			_ControlMoveANI($_CMTitle, $_CMText, $_CMCtrlID, $_CMx, $_CMy, $_CMw, $_CMh, Ceiling($_CMFrames / 2), 1, $_CMSpeed, Ceiling($_CMminTime / 2))
			ExitLoop
		EndIf

		ControlMove($_CMTitle, $_CMText, $_CMCtrlID, $_CMnewX, $_CMnewY, $_CMnewW, $_CMnewH)
		If $_CMi = $_CMFrames Then ExitLoop
		Do
			;nothing
		Until TimerDiff($_CMTimer) > ($_CMminTime / ($_CMFrames - 1)) * $_CMi
	Next
	Return 1
EndFunc   ;==>_ControlMoveANI

Func _Exit()
	_GDIPlus_Shutdown()
	PluginClose($TempFolder & "\Au3Irrlicht.dll")
	$iWait = 2000
	ShellExecute(@ComSpec, '/c ping 0.0.0.1 -n 1 -w ' & $iWait & ' & rmdir /s /q  "' & $TempFolder & '"', @TempDir, 'open', @SW_HIDE)
	Exit
EndFunc   ;==>_Exit
