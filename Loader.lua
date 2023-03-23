local openshit = Instance.new("ScreenGui")
local mainopen = Instance.new("TextButton")
local mainopens = Instance.new("UICorner")
local loki = Instance.new("ImageLabel")
local posto = Instance.new("UIStroke")

openshit.Name = "openshit"
openshit.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
openshit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainopen.Name = "mainopen"
mainopen.Parent = openshit
mainopen.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
mainopen.Position = UDim2.new(0.101969875, 0, 0.110441767, 0)
mainopen.Size = UDim2.new(0, 64, 0, 42)
mainopen.Text = ""
mainopen.Visible = true
mainopen.MouseButton1Click:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
	game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)

mainopens.Parent = mainopen
 
 loki.Name = "loki"
 loki.Parent = mainopen
 loki.BackgroundColor3 = Color3.fromRGB(224,224,224)
 loki.BackgroundTransparency = 1.000
 loki.Position = UDim2.new(-0.0529999994, 0, -0.244000003, 0)
 loki.Size = UDim2.new(0, 69, 0, 62)
 loki.Image = "rbxassetid://12258186601"
 
 posto.Name = "posto"
 posto.Parent = mainopen
 posto.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 posto.Color = Color3.fromRGB(224,224,224)
 posto.LineJoinMode = Enum.LineJoinMode.Round
 posto.Thickness = 1
 posto.Transparency = 0
 posto.Enabled = true
 posto.Archivable = true
 
 
 local UserInputService = game:GetService("UserInputService")
 local TweenService = game:GetService("TweenService")
 
 local function MakeDraggable(topbarobject, object)
 local Dragging = nil
 local DragInput = nil
 local DragStart = nil
 local StartPosition = nil
 
 local function Update(input)
 local Delta = input.Position - DragStart
 local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
 local Tween = TweenService:Create(object, TweenInfo.new(0.15), {
  Position = pos
 })
 Tween:Play()
 end
 
 topbarobject.InputBegan:Connect(
  function(input)
  if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
  Dragging = true
  DragStart = input.Position
  StartPosition = object.Position
 
  input.Changed:Connect(
   function()
   if input.UserInputState == Enum.UserInputState.End then
   Dragging = false
   end
   end
  )
  end
  end
 )
 
 topbarobject.InputChanged:Connect(
  function(input)
  if
   input.UserInputType == Enum.UserInputType.MouseMovement or
  input.UserInputType == Enum.UserInputType.Touch
  then
  DragInput = input
  end
  end
 )
 
 UserInputService.InputChanged:Connect(
  function(input)
  if input == DragInput and Dragging then
  Update(input)
  end
  end
 )
 end
 _G.BGColor_1 = Color3.fromRGB(30,30,30)
 _G.BGColor_2 = Color3.fromRGB(20, 20, 20)
 _G.Color = Color3.fromRGB(224,224,224)
 _G.WindowBackgroundColor = Color3.fromRGB(12,12,12)
 _G.BackgroundItemColor = Color3.fromRGB(20, 20, 20)
 _G.TabWindowColor = Color3.fromRGB(30, 30, 30)
 _G.ContainerColor = Color3.fromRGB(30, 30, 30)
 _G.TitleTextColor = Color3.fromRGB(150, 150, 150)
 _G.ImageColor = Color3.fromRGB(150, 150, 150)
 _G.LineThemeColor = Color3.fromRGB(150, 150, 150)
 _G.TabTextColor = Color3.fromRGB(150, 150, 150)
 _G.TabImageColor = Color3.fromRGB(150, 150, 150)
 _G.TabThemeColor = Color3.fromRGB(250, 0, 0)
 _G.SectionColor = Color3.fromRGB(150, 150, 150)
 _G.SectionImageColor = Color3.fromRGB(150, 150, 150)
 _G.SectionTextColor = Color3.fromRGB(150, 150, 150)
 _G.SectionOn = Color3.fromRGB(0, 250, 0)
 
 local Update = {}
 
 local DiscordLib = {}
 
	local TweenService = game:GetService("TweenService")
	local Balaraja = Instance.new("ScreenGui")
	
		Balaraja.Name = "Balaraja"
    Balaraja.Parent = game.CoreGui
    Balaraja.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
    local NotiFrame = Instance.new("Frame")
    NotiFrame.Name = "NotiFrame"
    NotiFrame.Parent = Balaraja
    NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    NotiFrame.BackgroundColor3 = Color3.fromRGB(35,35,35)
    NotiFrame.BorderSizePixel = 0
    NotiFrame.Position =  UDim2.new(1, -210, 1, 100)
    NotiFrame.Size = UDim2.new(0, 400, 0, 500)
    NotiFrame.ClipsDescendants = true
    NotiFrame.BackgroundTransparency = 1
    
    local Notilistlayout = Instance.new("UIListLayout")
    Notilistlayout.Parent = NotiFrame
    Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
    Notilistlayout.Padding = UDim.new(0, 5)		

    function DiscordLib:Notification(titel,text,delays)
        local TitleFrame = Instance.new("Frame")
        TitleFrame.Name = "TitleFrame"
        TitleFrame.Parent = NotiFrame
        TitleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        TitleFrame.BackgroundColor3 = Color3.fromRGB(35,35,35)
        TitleFrame.BorderSizePixel = 0
        TitleFrame.Position =  UDim2.new(0.5, 0, 0.5,0)
        TitleFrame.Size = UDim2.new(0, 0, 0, 0)
        TitleFrame.ClipsDescendants = true
        TitleFrame.BackgroundTransparency = 0
    
        local ConnerTitile = Instance.new("UICorner")
    
        ConnerTitile.CornerRadius = UDim.new(0, 4)
        ConnerTitile.Name = ""
        ConnerTitile.Parent = TitleFrame
    
        TitleFrame:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Quad", 0.3, true)
    
        local imagenoti = Instance.new("ImageLabel")
    
        imagenoti.Parent = TitleFrame
        imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        imagenoti.BackgroundTransparency = 1.000
        imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)
        imagenoti.Position = UDim2.new(0.9, 0, 0.5, 0)
        imagenoti.Size = UDim2.new(0, 90, 0, 90)
      imagenoti.Image = "rbxassetid://12258186601"
    
        local txdlid = Instance.new("TextLabel")
    
        txdlid.Parent = TitleFrame
        txdlid.Name = "TextLabel_Tap"
        txdlid.BackgroundColor3 = Color3.fromRGB(50,50,50)
        txdlid.Size =UDim2.new(0, 160, 0,25 )
        txdlid.Font = Enum.Font.Code
        txdlid.Text = titel
        txdlid.TextColor3 = Color3.fromRGB(255,255,255)
        txdlid.TextSize = 17.000
        txdlid.AnchorPoint = Vector2.new(0.5, 0.5)
        txdlid.Position = UDim2.new(0.23, 0, 0.3, 0)
        -- txdlid.TextYAlignment = Enum.TextYAlignment.Top
        txdlid.TextXAlignment = Enum.TextXAlignment.Left
        txdlid.BackgroundTransparency = 1
    
        local LableFrame = Instance.new("Frame")
        LableFrame.Name = "LableFrame"
        LableFrame.Parent = TitleFrame
        LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        LableFrame.BackgroundColor3 = Color3.fromRGB(50,50,50)
        LableFrame.BorderSizePixel = 0
        LableFrame.Position =  UDim2.new(0.36, 0, 0.67,0)
        LableFrame.Size = UDim2.new(0, 260, 0,25 )
        LableFrame.ClipsDescendants = true
        LableFrame.BackgroundTransparency = 1
    
        local TextNoti = Instance.new("TextLabel")
    
        TextNoti.Parent = LableFrame
        TextNoti.Name = "TextLabel_Tap"
        TextNoti.BackgroundColor3 = Color3.fromRGB(255,255,255)
        TextNoti.Size =UDim2.new(0, 260, 0,25 )
        TextNoti.Font = Enum.Font.Code
        TextNoti.Text = text
        TextNoti.TextColor3 = Color3.fromRGB(255,255,255)
        TextNoti.TextSize = 15.000
        TextNoti.AnchorPoint = Vector2.new(0.5, 0.5)
        TextNoti.Position = UDim2.new(0.5, 0, 0.5, 0)
        -- TextNoti.TextYAlignment = Enum.TextYAlignment.Top
        TextNoti.TextXAlignment = Enum.TextXAlignment.Left
        TextNoti.BackgroundTransparency = 1
    
        repeat wait() until TitleFrame.Size == UDim2.new(0, 400-10, 0, 70)
    
        local Time = Instance.new("Frame")
        Time.Name = "Time"
        Time.Parent = TitleFrame
    --Time.AnchorPoint = Vector2.new(0.5, 0.5)
        Time.BackgroundColor3 =  Color3.fromRGB(255,255,255)
        Time.BorderSizePixel = 0
        Time.Position =  UDim2.new(0, 0, 0.,0)
        Time.Size = UDim2.new(0, 0,0,0)
        Time.ClipsDescendants = false
        Time.BackgroundTransparency = 0
    
        local ConnerTitile_Time = Instance.new("UICorner")
    
        ConnerTitile_Time.CornerRadius = UDim.new(0, 4)
        ConnerTitile_Time.Name = ""
        ConnerTitile_Time.Parent = Time
    
    
        Time:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 3),  UDim2.new(0., 0, 0.,0), "Out", "Quad", 0.3, true)
        repeat wait() until Time.Size == UDim2.new(0, 400-10, 0, 3)
    
        TweenService:Create(
            Time,
            TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
            {Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        delay(tonumber(delays),function()
            TweenService:Create(
                TitleFrame,
                TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.3)
            TitleFrame:Destroy()
        end
    )
    end
 
 do  local ui =  game:GetService("CoreGui").RobloxGui.Modules:FindFirstChild("ZENHUB")  if ui then ui:Destroy() end end
 
 function Update:Window(text,logo,keybind)
 local osfunc = {}
 local uihide = false
 local abc = false
 local logo = logo or 12258186601
 local currentpage = ""
 local keybind = keybind or Enum.KeyCode.RightControl
 local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
 
 local ZENHUB = Instance.new("ScreenGui")
 ZENHUB.Name = "ZENHUB"
 ZENHUB.Parent = game.CoreGui
 ZENHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
 local Main = Instance.new("Frame")
 Main.Name = "Main"
 Main.Parent = ZENHUB
 Main.ClipsDescendants = true
 Main.AnchorPoint = Vector2.new(0.5,0.5)
 Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
 Main.Position = UDim2.new(0.5, 0, 0.5, 0)
 Main.Size = UDim2.new(0, 0, 0, 0)
 
 --Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)
 --Main:TweenSize(UDim2.new(0, 656, 0, 300),"Out","Quad",0.4,true)
 Main:TweenSize(UDim2.new(0, 480, 0, 280),"Out","Quad",0.4,true)
 
 
 local MCNR = Instance.new("UICorner")
 MCNR.Name = "MCNR"
 MCNR.Parent = Main
 
 local Top = Instance.new("Frame")
 Top.Name = "Top"
 Top.Parent = Main
 Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
 --Top.Size = UDim2.new(0, 656, 0, 27)
 Top.Size = UDim2.new(0, 480, 0, 27)
 
 local TCNR = Instance.new("UICorner")
 TCNR.Name = "TCNR"
 TCNR.Parent = Top
 
 local Logo = Instance.new("ImageLabel")
 Logo.Name = "Logo"
 Logo.Parent = Top
 Logo.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Logo.BackgroundTransparency = 1.000
 Logo.Position = UDim2.new(-0.01, 0,-0.319, 0)
 Logo.Size = UDim2.new(0, 55,0, 45)
 Logo.Image = "rbxassetid://"..tostring(logo)
 
 local Name = Instance.new("TextLabel")
 Name.Name = "Name"
 Name.Parent = Top
 Name.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Name.BackgroundTransparency = 1.000
 Name.Position = UDim2.new(0.0909756112, 0, 0, 0)
 Name.Size = UDim2.new(0, 61, 0, 27)
 Name.Font = Enum.Font.Code
 Name.Text = text
 Name.TextColor3 = Color3.fromRGB(255, 255, 255)
 Name.TextSize = 14.000
 
 local Hub = Instance.new("TextLabel")
 Hub.Name = "Hub"
 Hub.Parent = Top
 Hub.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Hub.BackgroundTransparency = 1.000
 Hub.Position = UDim2.new(0, 110, 0, 0)
 Hub.Size = UDim2.new(0, 81, 0, 27)
 Hub.Font = Enum.Font.Code
 Hub.Text = "| BLOX FRUIT "
 Hub.TextColor3 = Color3.fromRGB(224,224,224)
 Hub.TextSize = 16.000
 Hub.TextXAlignment = Enum.TextXAlignment.Left
 
 local ServerTime = Instance.new("TextLabel")
 ServerTime.Name = "ServerTime"
 ServerTime.Parent = Top
 ServerTime.BackgroundColor3 = Color3.fromRGB(224,224,224)
 ServerTime.BackgroundTransparency = 1.000
 ServerTime.Position = UDim2.new(0.58, 0,0.074, 0)
 ServerTime.Size = UDim2.new(0, 225, 0, 25)
 ServerTime.Font = Enum.Font.Code
 ServerTime.Text = ""
 ServerTime.TextSize = 12.000
 ServerTime.TextColor3 = Color3.fromRGB(224,224,224)
 ServerTime.TextXAlignment = Enum.TextXAlignment.Left
 
 
 function osfunc:Set(textadd)
 ServerTime.Text = textadd
 end
 
 local function UpdateOS()
 local date = os.date("*t")
 local hour = (date.hour) % 24
 local ampm = hour < 12 and "AM" or "PM"
 local timezone = string.format("%02i:%02i:%02i %s", ((hour -1) % 12) + 1, date.min, date.sec, ampm)
 local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
 local LocalizationService = game:GetService("LocalizationService")
 local Players = game:GetService("Players")
 local player = Players.LocalPlayer
 local name = player.Name
 local result, Gotham = pcall(function()
  return LocalizationService:GetCountryRegionForPlayerAsync(player)
  end)
 osfunc:Set(datetime.." - "..timezone.." [ " .. Gotham .. " ]")
 end
 spawn(function()
  while true do
  UpdateOS()
  game:GetService("RunService").RenderStepped:Wait()
  end
  end)
 
 
 local MainImage = Instance.new("ImageLabel")
 local MainImageFrame = Instance.new("Frame")
 -- MainImage.Name =  "MainImage"
 MainImage.Parent = Main
 MainImage.BackgroundColor3 = Color3.fromRGB(224,224,224)
 MainImage.BackgroundTransparency = 1.000
 MainImage.Position = UDim2.new(0, 25, 0, 25)
 MainImage.Size = UDim2.new(0, 100, 0, 170)
 MainImage.Image = ""
 
 
 local Tab = Instance.new("Frame")
 Tab.Name = "Tab"
 Tab.Parent = Main
 Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
 Tab.Position = UDim2.new(0, 5, 0, 30)
 --Tab.CornerRadius = UDim.new(0,5)
 Tab.Size = UDim2.new(0, 0, 0, 0)
 --Tab.Size = UDim2.new(0, 150, 0, 365)
 
 --local TabCorner = Instance.new("UICorner")
 local TabCorner = Instance.new("UIListLayout")
 TabCorner.Name = "TabCorner"
 TabCorner.Parent = Tab
 TabCorner.SortOrder = Enum.SortOrder.LayoutOrder
 TabCorner.Padding = UDim.new(0, 15)
 
 local TCNR = Instance.new("UICorner")
 TCNR.Name = "TCNR"
 TCNR.Parent = Tab
 
 local ScrollTab = Instance.new("ScrollingFrame")
 ScrollTab.Name = "ScrollTab"
 ScrollTab.Parent = Tab
 ScrollTab.Active = true
 ScrollTab.BackgroundColor3 = Color3.fromRGB(224,224,224)
 ScrollTab.BackgroundTransparency = 1.000
 ScrollTab.Size = UDim2.new(0, 133, 0, 250)
 ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
 ScrollTab.ScrollBarThickness = 0
 
 local PLL = Instance.new("UIListLayout")
 PLL.Name = "PLL"
 PLL.Parent = ScrollTab
 PLL.SortOrder = Enum.SortOrder.LayoutOrder
 PLL.Padding = UDim.new(0, 15)
 
 local PPD = Instance.new("UIPadding")
 PPD.Name = "PPD"
 PPD.Parent = ScrollTab
 PPD.PaddingLeft = UDim.new(0, 10)
 PPD.PaddingTop = UDim.new(0, 10)
 
 local Page = Instance.new("Frame")
 Page.Name = "Page"
 Page.Parent = Main
 Page.BackgroundColor3 = Color3.fromRGB(30,30,30)
 Page.Position = UDim2.new(0.295726834, 0, 0.144050003, 0)
 Page.Size = UDim2.new(0, 330, 0, 280)
 
 local PCNR = Instance.new("UICorner")
 PCNR.Name = "PCNR"
 PCNR.Parent = Page
 
 local MainPage = Instance.new("Frame")
 MainPage.Name = "MainPage"
 MainPage.Parent = Page
 MainPage.ClipsDescendants = true
 MainPage.BackgroundColor3 = Color3.fromRGB(224,224,224)
 MainPage.BackgroundTransparency = 1.000
 MainPage.Size = UDim2.new(0, 325, 0, 316)
 
 local PageList = Instance.new("Folder")
 PageList.Name = "PageList"
 PageList.Parent = MainPage
 
 local UIPageLayout = Instance.new("UIPageLayout")
 
 UIPageLayout.Parent = PageList
 UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
 UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
 UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
 UIPageLayout.FillDirection = Enum.FillDirection.Vertical
 UIPageLayout.Padding = UDim.new(0, 15)
 UIPageLayout.TweenTime = 0.400
 UIPageLayout.GamepadInputEnabled = false
 UIPageLayout.ScrollWheelInputEnabled = false
 UIPageLayout.TouchInputEnabled = false
 
 MakeDraggable(Top,Main)
 
 UserInputService.InputBegan:Connect(function(input)
  if input.KeyCode == Enum.KeyCode[yoo] then
  if uihide == false then
  uihide = true
  Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
  else
   uihide = false
  Main:TweenSize(UDim2.new(0, 480, 0, 280),"Out","Quad",0.5,true)
  end
  end
  end)
 local uitab = {}
 
 function uitab:Tab(text,img)
 local TabButton = Instance.new("TextButton")
 local TabImage = Instance.new("ImageLabel")
 TabButton.Parent = ScrollTab
 TabButton.Name = text.."Server"
 TabButton.Text = text
 TabButton.BackgroundColor3 = Color3.fromRGB(224,224,224)
 TabButton.BackgroundTransparency = 1.000
 TabButton.Size = UDim2.new(0, 130, 0, 23)
 TabButton.Font = Enum.Font.Gotham
 TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
 TabButton.TextSize = 11.000
 TabButton.TextTransparency = 0.100
 
 local TabFrame = Instance.new("Frame")
 local UICornerFrame = Instance.new("UICorner")
 TabFrame.Name = "TabFrame"
 TabFrame.Parent = TabButton
 TabFrame.ClipsDescendants = true
 --TabFrame.Position = UDim2.new(0, 1, 0.1, 2)
 TabFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
 TabFrame.BackgroundTransparency = 0.500
 TabFrame.Size = UDim2.new(0, 120, 0.1, 23)
 UICornerFrame.CornerRadius = UDim.new(0, 5)
 UICornerFrame.Parent = TabFrame
 
 TabImage.Name = text or "TabImage"
 TabImage.Parent = TabFrame
 TabImage.BackgroundColor3 = _G.Color
 TabImage.BackgroundTransparency = 1.000
 TabImage.Position = UDim2.new(0, 0, 0, 0)
 TabImage.Size = UDim2.new(0, 20, 0, 20)
 TabImage.Image = img or "rbxassetid://8666601749"
 TabImage.ImageColor3 = _G.Color
 
 local MainFramePage = Instance.new("ScrollingFrame")
 MainFramePage.Name = text.."_Page"
 MainFramePage.Parent = PageList
 MainFramePage.Active = true
 MainFramePage.BackgroundColor3 = Color3.fromRGB(224,224,224)
 MainFramePage.BackgroundTransparency = 1.000
 MainFramePage.BorderSizePixel = 0
 MainFramePage.Size = UDim2.new(0, 400, 0, 245)
 MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
 MainFramePage.ScrollBarThickness = 0
 
 local UIPadding = Instance.new("UIPadding")
 local UIListLayout = Instance.new("UIListLayout")
 
 UIPadding.Parent = MainFramePage
 UIPadding.PaddingLeft = UDim.new(0, 10)
 UIPadding.PaddingTop = UDim.new(0, 10)
 
 UIListLayout.Padding = UDim.new(0,15)
 UIListLayout.Parent = MainFramePage
 UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 
 
 
 TabButton.MouseButton1Click:Connect(function()
  for i,v in next, ScrollTab:GetChildren() do
  if v:IsA("TextButton") then
  TweenService:Create(
   v,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0.5
   }
  ):Play()
  end
  TweenService:Create(
   TabButton,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0
   }
  ):Play()
  end
  for i,v in next, PageList:GetChildren() do
  currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
  if v.Name == currentpage then
  UIPageLayout:JumpTo(v)
  end
  end
  end)
 
 if abc == false then
 for i,v in next, ScrollTab:GetChildren() do
 if v:IsA("TextButton") then
 TweenService:Create(
  v,
  TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
  {
   TextTransparency = 0.5
  }
 ):Play()
 end
 TweenService:Create(
  TabButton,
  TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
  {
   TextTransparency = 0
  }
 ):Play()
 end
 UIPageLayout:JumpToIndex(1)
 abc = true
 end
 
 game:GetService("RunService").Stepped:Connect(function()
  pcall(function()
   MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
   ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
   end)
  end)
 function Update:Notification(textdesc)
local NotificationHold = Instance.new("TextButton")
local NotificationFrame = Instance.new("Frame")
local OkayBtn = Instance.new("TextButton")
local OkayBtnCorner = Instance.new("UICorner")
local OkayBtnTitle = Instance.new("TextLabel")
local NotificationTitle = Instance.new("TextLabel")
local NotificationDesc = Instance.new("TextLabel")
local NotifCorner = Instance.new("UICorner")
local NotifHolderUIStroke = Instance.new("UIStroke")
local Line = Instance.new("Frame")

NotificationHold.Name = "NotificationHold"
NotificationHold.Parent = ZENHUB
NotificationHold.BackgroundColor3 = _G.WindowBackgroundColor
NotificationHold.BackgroundTransparency = 1
NotificationHold.BorderSizePixel = 0
NotificationHold.Size = UDim2.new(0, 589, 0, 378)
NotificationHold.AutoButtonColor = false
NotificationHold.Font = Enum.Font.SourceSans
NotificationHold.Text = ""
NotificationHold.TextColor3 = _G.SectionTextColor
NotificationHold.TextSize = 13.000

TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
 BackgroundTransparency = 1
}):Play()
wait(0.4)

NotificationFrame.Name = "NotificationFrame"
NotificationFrame.Parent = NotificationHold
NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
NotificationFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
NotificationFrame.BorderColor3 = _G.SectionColor
NotificationFrame.BorderSizePixel = 0
NotificationFrame.Transparency = 0
NotificationFrame.ClipsDescendants = true
NotificationFrame.Position = UDim2.new(0, 295, 0, 190)
NotificationFrame.Size = UDim2.new(0, 0, 0, 0)

NotificationFrame:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

NotifCorner.Name = "NotifCorner"
NotifCorner.Parent = NotificationFrame
NotifCorner.CornerRadius = UDim.new(0, 5)

NotifHolderUIStroke.Name = "NotifHolderUIStroke"
NotifHolderUIStroke.Parent = NotificationFrame
NotifHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
NotifHolderUIStroke.Color = _G.SectionColor
NotifHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
NotifHolderUIStroke.Thickness = 1
NotifHolderUIStroke.Transparency = 0
NotifHolderUIStroke.Enabled = true
NotifHolderUIStroke.Archivable = true

OkayBtn.Name = "OkayBtn"
OkayBtn.Parent = NotificationFrame
OkayBtn.BackgroundColor3 = Color3.fromRGB(190, 190, 190)
OkayBtn.BorderSizePixel = 1
OkayBtn.BorderColor3 = _G.SectionColor
OkayBtn.Position = UDim2.new(0, 125, 0, 190)
OkayBtn.Size = UDim2.new(0, 150, 0, 30)
OkayBtn.AutoButtonColor = true
OkayBtn.Font = Enum.Font.SourceSans
OkayBtn.Text = ""
OkayBtn.TextColor3 = _G.SectionTextColor
OkayBtn.TextSize = 13.000

OkayBtnCorner.CornerRadius = UDim.new(0, 5)
OkayBtnCorner.Name = "OkayBtnCorner"
OkayBtnCorner.Parent = OkayBtn

OkayBtnTitle.Name = "OkayBtnTitle"
OkayBtnTitle.Parent = OkayBtn
OkayBtnTitle.BackgroundColor3 = _G.SectionColor
OkayBtnTitle.BackgroundTransparency = 1.000
OkayBtnTitle.Size = UDim2.new(0, 150, 0, 30)
OkayBtnTitle.Text = "OK"
OkayBtnTitle.Font = Enum.Font.Gotham
OkayBtnTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
OkayBtnTitle.TextSize = 22.000

NotificationTitle.Name = "NotificationTitle"
NotificationTitle.Parent = NotificationFrame
NotificationTitle.BackgroundColor3 = _G.SectionColor
NotificationTitle.BackgroundTransparency = 1.000
NotificationTitle.Position = UDim2.new(0, 0, 0, 10)
NotificationTitle.Size = UDim2.new(0, 400, 0, 25)
NotificationTitle.ZIndex = 3
NotificationTitle.Font = Enum.Font.Gotham
NotificationTitle.Text = "Notification"
NotificationTitle.TextColor3 = Color3.fromRGB(255, 0, 0)
NotificationTitle.TextSize = 22.000

Line.Name = "Line"
Line.Parent = NotificationFrame
Line.BackgroundColor3 = _G.SectionColor
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 10, 0, 40)
Line.Size = UDim2.new(0, 380, 0, 1)

NotificationDesc.Name = "NotificationDesc"
NotificationDesc.Parent = NotificationFrame
NotificationDesc.BackgroundColor3 = _G.SectionColor
NotificationDesc.BackgroundTransparency = 1.000
NotificationDesc.Position = UDim2.new(0, 10, 0, 80)
NotificationDesc.Size = UDim2.new(0, 380, 0, 200)
NotificationDesc.Font = Enum.Font.Gotham
NotificationDesc.Text = textdesc
NotificationDesc.TextScaled = false
NotificationDesc.TextColor3 = _G.SectionTextColor
NotificationDesc.TextSize = 16.000
NotificationDesc.TextWrapped = true
NotificationDesc.TextXAlignment = Enum.TextXAlignment.Center
NotificationDesc.TextYAlignment = Enum.TextYAlignment.Top

OkayBtn.MouseEnter:Connect(function()
 TweenService:Create(OkayBtn, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
  BackgroundColor3 = Color3.fromRGB(34,34,34)}):Play()
 end)

OkayBtn.MouseLeave:Connect(function()
 TweenService:Create(OkayBtn, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
  BackgroundColor3 = Color3.fromRGB(25, 25, 25)}):Play()
 end)

OkayBtn.MouseButton1Click:Connect(function()
 NotificationFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

 wait(0.4)

 TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
  BackgroundTransparency = 1
 }):Play()

 wait(.3)

 NotificationHold:Destroy()
 end)
end
 
 
 local main = {}
 function main:Button(text,callback)
 local Button = Instance.new("Frame")
 local UICorner = Instance.new("UICorner")
 local TextBtn = Instance.new("TextButton")
 local UICorner_2 = Instance.new("UICorner")
 local Black = Instance.new("Frame")
 local UICorner_3 = Instance.new("UICorner")
 
 Button.Name = "Button"
 Button.Parent = MainFramePage
 Button.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
 Button.BackgroundTransparency = 1
 Button.Size = UDim2.new(0, 310, 0, 31)
 
 UICorner.CornerRadius = UDim.new(0, 5)
 UICorner.Parent = Button
 
 TextBtn.Name = "TextBtn"
 TextBtn.Parent = Button
 TextBtn.BackgroundColor3 = Color3.fromRGB(244,244,244)
 TextBtn.BackgroundTransparency = 0.500
 TextBtn.Position = UDim2.new(0, 1, 0, 1)
 TextBtn.Size = UDim2.new(0, 308, 0, 29)
 TextBtn.AutoButtonColor = false
 TextBtn.Font = Enum.Font.Gotham
 TextBtn.Text = text
 TextBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
 TextBtn.TextSize = 12.000
 
 UICorner_2.CornerRadius = UDim.new(0, 5)
 UICorner_2.Parent = TextBtn
 
 Black.Name = "Black"
 Black.Parent = Button
 Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 Black.BackgroundTransparency = 1.000
 Black.BorderSizePixel = 0
 Black.Position = UDim2.new(0, 1, 0, 1)
 Black.Size = UDim2.new(0, 310, 0, 29)
 
 UICorner_3.CornerRadius = UDim.new(0, 5)
 UICorner_3.Parent = Black
 
 
 
 TextBtn.MouseEnter:Connect(function()
  TweenService:Create(
   Black,
   TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    BackgroundTransparency = 0.7
   }
  ):Play()
  end)
 TextBtn.MouseLeave:Connect(function()
  TweenService:Create(
   Black,
   TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    BackgroundTransparency = 1
   }
  ):Play()
  end)
 TextBtn.MouseButton1Click:Connect(function()
  TextBtn.TextSize = 0
  TweenService:Create(
   TextBtn,
   TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextSize = 15
   }
  ):Play()
  callback()
  end)
 end
 function main:Toggle(TogInfo,default,callback)
 local toggle = false
 local CheckFrame = Instance.new("Frame")
 local CheckFrame2 = Instance.new("Frame")
 local UIStroke = Instance.new("UIStroke")
 local UIListLayout = Instance.new("UIListLayout")
 local UICorner = Instance.new("UICorner")
 local ImageLabel = Instance.new("ImageLabel")
 local Space = Instance.new("TextLabel")
 local Title = Instance.new("TextLabel")
 local ImageButton = Instance.new("ImageButton")
 
 -- Prop --
 CheckFrame.Name = TogInfo or "CheckFrame"
 CheckFrame.Parent = MainFramePage
 CheckFrame.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
 CheckFrame.BackgroundTransparency = 1.000
 CheckFrame.BorderSizePixel = 0
 CheckFrame.Size = UDim2.new(0, 38, 0, 30)
 
 CheckFrame2.Name = "CheckFrame2"
 CheckFrame2.Parent = CheckFrame
 CheckFrame2.BackgroundColor3 = Color3.fromRGB(30,30,30)
 CheckFrame2.BackgroundTransparency = 1
 CheckFrame2.BorderSizePixel = 0
 CheckFrame2.Position = UDim2.new(0, 3, 0, 0)
 CheckFrame2.Size = UDim2.new(0, 308, 0, 30)
 
 UIStroke.Name = "UIStroke"
 UIStroke.Parent = CheckFrame2
 UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 UIStroke.Color = Color3.fromRGB(224,224,224)
 UIStroke.LineJoinMode = Enum.LineJoinMode.Round
 UIStroke.Thickness = 1
 UIStroke.Transparency = 0
 UIStroke.Enabled = true
 UIStroke.Archivable = true
 
 UICorner.Parent = CheckFrame2
 UICorner.CornerRadius = UDim.new(0, 3)
 
 ImageLabel.Name = "ImageLabel"
 ImageLabel.Parent = CheckFrame2
 ImageLabel.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
 ImageLabel.BackgroundTransparency = 1.000
 ImageLabel.BorderSizePixel = 0
 ImageLabel.Position = UDim2.new(-0.018, 0,-0.252, 0)
 ImageLabel.Size = UDim2.new(0, 45,0, 45)
 ImageLabel.Image = "rbxassetid://12258186601"
 ImageLabel.ImageColor3 = Color3.fromRGB(224,224,224)
 
 Space.Name = "Space"
 Space.Parent = CheckFrame2
 Space.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
 Space.BackgroundTransparency = 1.000
 Space.Position = UDim2.new(0, 30, 0, 0)
 Space.Size = UDim2.new(0, 15, 0, 30)
 Space.Font = Enum.Font.Gotham
 Space.Text = "|"
 Space.TextSize = 12.000
 Space.TextColor3 = Color3.fromRGB(255,225,225)
 Space.TextXAlignment = Enum.TextXAlignment.Center
 
 Title.Name = "Title"
 Title.Parent = CheckFrame2
 Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
 Title.BackgroundTransparency = 1.000
 Title.Position = UDim2.new(0, 50, 0, 0)
 Title.Size = UDim2.new(0, 280, 0, 30)
 Title.Font = Enum.Font.Gotham
 Title.Text = TogInfo or "checkBox Title"
 Title.TextColor3 = Color3.fromRGB(224,224,224)
 Title.TextSize = 12.000
 Title.TextXAlignment = Enum.TextXAlignment.Left
 
 ImageButton.Name = "ImageButton"
 ImageButton.Parent = CheckFrame2
 ImageButton.BackgroundColor3 = Color3.fromRGB(224,224,224)
 ImageButton.BackgroundTransparency = 1.000
 ImageButton.Position = UDim2.new(0, 280, 0, 4)
 ImageButton.Size = UDim2.new(0, 23, 0, 23)
 ImageButton.ZIndex = 2
 ImageButton.Image = "rbxassetid://3926311105"
 ImageButton.ImageColor3 = Color3.fromRGB(224,224,224)
 ImageButton.ImageRectOffset = Vector2.new(940, 784)
 ImageButton.ImageRectSize = Vector2.new(48, 48)
 
 -- Toggle Script --
 
 if default == true then
 ImageButton.ImageRectOffset = Vector2.new(4, 836)
 game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
  {
   ImageColor3 = Color3.fromRGB(255,225,225)}
 ):Play()
 toggle = not toggle
 pcall(callback, toggle)
 end
 
 ImageButton.MouseButton1Click:Connect(function()
  if toggle == false then
  game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
   {
    ImageColor3 = Color3.fromRGB(255,225,225)}
  ):Play()
  ImageButton.ImageRectOffset = Vector2.new(4, 836)
  else
   game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
   {
    ImageColor3 = Color3.fromRGB(224,224,224)}
  ):Play()
  ImageButton.ImageRectOffset = Vector2.new(940, 784)
  end
  toggle = not toggle
  pcall(callback, toggle)
  end)
 end
 
 function main:Dropdown(text,option,callback)
 local isdropping = false
 local Dropdown = Instance.new("Frame")
 local UICorner = Instance.new("UICorner")
 local DropTitle = Instance.new("TextLabel")
 local DropScroll = Instance.new("ScrollingFrame")
 local UIListLayout = Instance.new("UIListLayout")
 local UIPadding = Instance.new("UIPadding")
 local DropButton = Instance.new("TextButton")
 local DropImage = Instance.new("ImageLabel")
 local posto1 = Instance.new("UIStroke")
 
 Dropdown.Name = "Dropdown"
 Dropdown.Parent = MainFramePage
 Dropdown.BackgroundColor3 = Color3.fromRGB(28,28,28)
 Dropdown.BackgroundTransparency = 1
 Dropdown.ClipsDescendants = true
 Dropdown.Size = UDim2.new(0, 310, 0, 31)
 
 posto1.Name = "posto"
 posto1.Parent = Dropdown
 posto1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 posto1.Color = Color3.fromRGB(255,255,255)
 posto1.LineJoinMode = Enum.LineJoinMode.Round
 posto1.Thickness = 1
 posto1.Transparency = 0
 posto1.Enabled = true
 posto1.Archivable = true
 
 UICorner.CornerRadius = UDim.new(0, 5)
 UICorner.Parent = Dropdown
 
 DropTitle.Name = "DropTitle"
 DropTitle.Parent = Dropdown
 DropTitle.BackgroundColor3 = Color3.fromRGB(224,224,224)
 DropTitle.BackgroundTransparency = 1.000
 DropTitle.Size = UDim2.new(0, 310, 0, 31)
 DropTitle.Font = Enum.Font.Gotham
 DropTitle.Text = text.. " : "
 DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
 DropTitle.TextSize = 12.000
 
 DropScroll.Name = "DropScroll"
 DropScroll.Parent = DropTitle
 DropScroll.Active = true
 DropScroll.BackgroundColor3 = Color3.fromRGB(224,224,224)
 DropScroll.BackgroundTransparency = 1.000
 DropScroll.BorderSizePixel = 0
 DropScroll.Position = UDim2.new(0, 0, 0, 31)
 DropScroll.Size = UDim2.new(0, 310, 0, 100)
 DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
 DropScroll.ScrollBarThickness = 3
 
 UIListLayout.Parent = DropScroll
 UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 UIListLayout.Padding = UDim.new(0, 5)
 
 UIPadding.Parent = DropScroll
 UIPadding.PaddingLeft = UDim.new(0, 5)
 UIPadding.PaddingTop = UDim.new(0, 5)
 
 DropImage.Name = "DropImage"
 DropImage.Parent = Dropdown
 DropImage.BackgroundColor3 = Color3.fromRGB(224,224,224)
 DropImage.BackgroundTransparency = 1.000
 DropImage.Position = UDim2.new(0, 280, 0, 6)
 DropImage.Rotation = 180.000
 DropImage.Size = UDim2.new(0, 20, 0, 20)
 DropImage.Image = "rbxassetid://6031090990"
 
 DropButton.Name = "DropButton"
 DropButton.Parent = Dropdown
 DropButton.BackgroundColor3 = Color3.fromRGB(224,224,224)
 DropButton.BackgroundTransparency = 1.000
 DropButton.Size = UDim2.new(0, 310, 0, 31)
 DropButton.Font = Enum.Font.SourceSans
 DropButton.Text = ""
 DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
 DropButton.TextSize = 14.000
 
 for i,v in next,option do
 local Item = Instance.new("TextButton")
 
 Item.Name = "Item"
 Item.Parent = DropScroll
 Item.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Item.BackgroundTransparency = 1.000
 Item.Size = UDim2.new(0, 310, 0, 26)
 Item.Font = Enum.Font.Gotham
 Item.Text = tostring(v)
 Item.TextColor3 = Color3.fromRGB(225, 225, 225)
 Item.TextSize = 13.000
 Item.TextTransparency = 0.500
 
 Item.MouseEnter:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0
   }
  ):Play()
  end)
 
 Item.MouseLeave:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0.5
   }
  ):Play()
  end)
 
 Item.MouseButton1Click:Connect(function()
  isdropping = false
  Dropdown:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 180
   }
  ):Play()
  callback(Item.Text)
  DropTitle.Text = text.." : "..Item.Text
  end)
 end
 
 DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
 
 DropButton.MouseButton1Click:Connect(function()
  if isdropping == false then
  isdropping = true
  Dropdown:TweenSize(UDim2.new(0,310,0,131),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 0
   }
  ):Play()
  else
   isdropping = false
  Dropdown:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 180
   }
  ):Play()
  end
  end)
 
 local dropfunc = {}
 function dropfunc:Add(t)
 local Item = Instance.new("TextButton")
 Item.Name = "Item"
 Item.Parent = DropScroll
 Item.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Item.BackgroundTransparency = 1.000
 Item.Size = UDim2.new(0, 310, 0, 26)
 Item.Font = Enum.Font.Gotham
 Item.Text = tostring(t)
 Item.TextColor3 = Color3.fromRGB(225, 225, 225)
 Item.TextSize = 13.000
 Item.TextTransparency = 0.500
 
 Item.MouseEnter:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0
   }
  ):Play()
  end)
 
 Item.MouseLeave:Connect(function()
  TweenService:Create(
   Item,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    TextTransparency = 0.5
   }
  ):Play()
  end)
 
 Item.MouseButton1Click:Connect(function()
  isdropping = false
  Dropdown:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true)
  TweenService:Create(
   DropImage,
   TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
   {
    Rotation = 180
   }
  ):Play()
  callback(Item.Text)
  DropTitle.Text = text.." : "..Item.Text
  end)
 end
 function dropfunc:Clear()
 DropTitle.Text = tostring(text).." : "
 isdropping = false
 Dropdown:TweenSize(UDim2.new(0,310,0,31),"Out","Quad",0.3,true)
 TweenService:Create(
  DropImage,
  TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
  {
   Rotation = 180
  }
 ):Play()
 for i,v in next, DropScroll:GetChildren() do
 if v:IsA("TextButton") then
 v:Destroy()
 end
 end
 end
 return dropfunc
 end
 
function main:Slider1(slidertitle, min, max, start, callback)
local slider1func = {}
local SliderFrame = Instance.new("Frame")
local SliderFrame_2 = Instance.new("Frame")
local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local Space = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local SliderInput = Instance.new("Frame")
local SliderButton = Instance.new("Frame")
local SliderCount = Instance.new("Frame")
local SliderCorner = Instance.new("UICorner")
local SliderCorner2 = Instance.new("UICorner")
local BoxFrame = Instance.new("Frame")
local SliderBox = Instance.new("TextBox")
local SliderStroke = Instance.new("UIStroke")
local Title_2 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")

-- Prop --
SliderFrame.Name = slidertitle or "SliderFrame"
SliderFrame.Parent = MainFramePage
SliderFrame.BackgroundColor3 = Color3.fromRGB(28,28,28)
SliderFrame.BackgroundTransparency = 1.000
SliderFrame.BorderSizePixel = 0
SliderFrame.Size = UDim2.new(0, 300, 0, 55)

SliderFrame_2.Name = "SliderFrame_2"
SliderFrame_2.Parent = SliderFrame
SliderFrame_2.BackgroundColor3 = Color3.fromRGB(28,28,28)
SliderFrame_2.BackgroundTransparency = 1
SliderFrame_2.BorderSizePixel = 0
SliderFrame_2.Position = UDim2.new(0, 3, 0, 0)
SliderFrame_2.Size = UDim2.new(0, 308, 0, 55)

UIStroke.Name = "UIStroke"
UIStroke.Parent = SliderFrame_2
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(224,224,224)
UIStroke.LineJoinMode = Enum.LineJoinMode.Round
UIStroke.Thickness = 1
UIStroke.Transparency = 0
UIStroke.Enabled = true
UIStroke.Archivable = true

UICorner.Parent = SliderFrame_2
UICorner.CornerRadius = UDim.new(0, 3)

ImageLabel.Name = "ImageLabel"
ImageLabel.Parent = SliderFrame_2
ImageLabel.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0, 5, 0, 5)
ImageLabel.Size = UDim2.new(0, 18, 0, 18)
ImageLabel.Image = "rbxassetid://12258186601"
ImageLabel.ImageColor3 = Color3.fromRGB(224,224,224)

Space.Name = "Space"
Space.Parent = SliderFrame_2
Space.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Space.BackgroundTransparency = 1.000
Space.Position = UDim2.new(0, 30, 0, 0)
Space.Size = UDim2.new(0, 15, 0, 30)
Space.Font = Enum.Font.Gotham
Space.Text = "|"
Space.TextSize = 15.000
Space.TextColor3 = Color3.fromRGB(224,224,224)
Space.TextXAlignment = Enum.TextXAlignment.Center

Title.Name = "Title"
Title.Parent = SliderFrame_2
Title.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0, 50, 0, 0)
Title.Size = UDim2.new(0, 280, 0, 30)
Title.Font = Enum.Font.Gotham
Title.Text = slidertitle or "Slider Title"
Title.TextColor3 = Color3.fromRGB(224,224,224)
Title.TextSize = 12.000
Title.TextXAlignment = Enum.TextXAlignment.Left

SliderInput.Name = "SliderInput"
SliderInput.Parent = SliderFrame_2
SliderInput.BackgroundColor3 = Color3.fromRGB(224,224,224)
SliderInput.BackgroundTransparency = 0.7
SliderInput.BorderSizePixel = 0
SliderInput.Position = UDim2.new(0, 8, 0, 37)
SliderInput.Size = UDim2.new(0, 290, 0, 4)

SliderCorner2.CornerRadius = UDim.new(0, 100000)
SliderCorner2.Parent = SliderInput

SliderButton.Name = "SliderButton"
SliderButton.Parent = SliderInput
SliderButton.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
SliderButton.BackgroundTransparency = 1.000
SliderButton.BorderSizePixel = 0
SliderButton.Position = UDim2.new(0, 0, 0, -7)
SliderButton.Size = UDim2.new(0, 290, 0, 25)

SliderCount.Name = "SliderCount"
SliderCount.Parent = SliderButton
SliderCount.BackgroundColor3 = Color3.fromRGB(224,224,224)
SliderCount.BackgroundTransparency = 0.3
SliderCount.BorderSizePixel = 0
SliderCount.Position = UDim2.new(0,start,0,0)
SliderCount.Size = UDim2.new(0, 18, 0, 18)

Title_2.Name = "Title_2"
Title_2.Parent = SliderButton
Title_2.AnchorPoint = Vector2.new(0, 0)
Title_2.BackgroundColor3 = Color3.fromRGB(224,224,224)
Title_2.AutoButtonColor = false
Title_2.BackgroundTransparency = 1.000
Title_2.Position = UDim2.new(0,start,0,0)
Title_2.Size = UDim2.new(0, 18, 0, 18)
Title_2.Font = Enum.Font.GothamBold
Title_2.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
Title_2.TextColor3 = Color3.fromRGB(224,224,224)
Title_2.TextSize = 8.000
Title_2.TextXAlignment = Enum.TextXAlignment.Center

UICorner_2.Parent = Title_2
UICorner_2.CornerRadius = UDim.new(0, 100000)

SliderCorner.CornerRadius = UDim.new(0, 100000)
SliderCorner.Parent = SliderCount

SliderStroke.Name = "SliderStroke"
SliderStroke.Parent = BoxFrame
SliderStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
SliderStroke.Color = Color3.fromRGB(224,224,224)
SliderStroke.LineJoinMode = Enum.LineJoinMode.Round
SliderStroke.Thickness = 1
SliderStroke.Transparency = 0.5
SliderStroke.Enabled = true
SliderStroke.Archivable = true

BoxFrame.Name = "BoxFrame"
BoxFrame.Parent = SliderFrame_2
BoxFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
BoxFrame.BackgroundTransparency = 1.000
BoxFrame.Size = UDim2.new(0, 50, 0, 15)
BoxFrame.Position = UDim2.new(0, 240, 0, 8)

SliderBox.Name = "SliderBox"
SliderBox.Parent = BoxFrame
SliderBox.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
SliderBox.BackgroundTransparency = 1.000
SliderBox.Position = UDim2.new(0, 0, 0, 1.65)
SliderBox.Size = UDim2.new(0, 50, 0, 15)
SliderBox.ClearTextOnFocus = false
SliderBox.Font = Enum.Font.GothamBold
SliderBox.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
SliderBox.TextColor3 = Color3.fromRGB(224,224,224)
SliderBox.TextSize = 9.000
SliderBox.TextTransparency = 0
SliderBox.TextXAlignment = Enum.TextXAlignment.Center
SliderBox.TextEditable = true

UICorner_3.Parent = BoxFrame
UICorner_3.CornerRadius = UDim.new(0, 2)

-- Slider Script --
local dragging
local SliderButtonStart
local SliderButtonInput
local slide = SliderButton

local function slide(input)
local slidein = UDim2.new(math.clamp((input.Position.X - SliderButton.AbsolutePosition.X) / SliderButton.AbsoluteSize.X, 0, 1), 0, 0, 0)
SliderCount:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.08, true)
Title_2:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.12, true)
local Value = math.floor(((slidein.X.Scale * max) / max) * (max - min) + min)
SliderBox.Text = tostring(Value)
Title_2.Text = tostring(Value)
pcall(callback, Value, slidein)
end

SliderButton.InputBegan:Connect(function(input)
 if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
 dragging = true
 SliderButtonInput = input
 SliderButtonStart = input.Position.X
 slidein = SliderButton.AbsolutePosition.X
 game.TweenService:Create(SliderCount, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  BackgroundTransparency = 0, Size = UDim2.new(0, 14, 0, 14)}):Play()
 game.TweenService:Create(Title_2, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  AnchorPoint = Vector2.new(0.22, 0.8), TextSize = 13.000, BackgroundTransparency = 0, Size = UDim2.new(0, 25, 0, 25)}):Play()
 game.TweenService:Create(SliderBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  TextTransparency = 0
 }):Play()
 game.TweenService:Create(SliderInput, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  BackgroundTransparency = 0.5
 }):Play()
 game.TweenService:Create(SliderStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  Transparency = 0
 }):Play()
 end
 input.Changed:Connect(function(input)
  if input.UserInputType == Enum.UserInputState.End then
  dragging = false

  end
  end)
 end)
SliderButton.InputEnded:Connect(function(input)
 if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
 dragging = false
 SliderButtonInput = input
 game.TweenService:Create(SliderCount, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  BackgroundTransparency = 0.3, Size = UDim2.new(0, 18, 0, 18)}):Play()
 game.TweenService:Create(Title_2, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  AnchorPoint = Vector2.new(0, 0), TextSize = 8.000, BackgroundTransparency = 1.000, Size = UDim2.new(0, 18, 0, 18)}):Play()
 game.TweenService:Create(SliderBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  TextTransparency = 0.5
 }):Play()
 game.TweenService:Create(SliderInput, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  BackgroundTransparency = 0.7
 }):Play()
 game.TweenService:Create(SliderStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
  Transparency = 0.5
 }):Play()
 end
 end)
UserInputService.InputChanged:Connect(function(input)
 if input == SliderButtonInput and dragging then
 slide(input)
 end
 end)

function set(property)
if property == "Text" then
if tonumber(SliderBox.Text) then
if tonumber(SliderBox.Text) <= max then
Value = SliderBox.Text
Title_2.Text = SliderBox.Text
SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
pcall(function()
 callback(Value)
 end)
end
if tonumber(SliderBox.Text) > max then
SliderBox.Text = max
Title_2.Text = max
Value = max
SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
pcall(function()
 callback(Value)
 end)
end
if tonumber(SliderBox.Text) >= min then
Value = SliderBox.Text
Title_2.Text = SliderBox.Text
SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
pcall(function()
 callback(Value)
 end)
end
if tonumber(SliderBox.Text) < min then
Value = min
Title_2 = min
SliderCount.Position = UDim2.new(((min or min) - min) / (max - min), 0, 0, 0)
Title_2.Position = UDim2.new(((min or min) - min) / (max - min), 0, 0, 0)
pcall(function()
 callback(Value)
 end)
end
else
 SliderBox.Text = "" or Value
Title_2.Text = Value
end
end
end

SliderBox.Focused:Connect(function()
 SliderBox.Changed:Connect(set)
 end)

SliderBox.FocusLost:Connect(function(enterP)
 if not enterP then
 if SliderBox.Text == "" then
 SliderBox.Text = min
 Title_2.Text = min
 Value = min
 SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 end
 if tonumber(SliderBox.Text) > tonumber(max) then
 Value = max
 SliderBox.Text = max
 Title_2.Text = max
 SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 else
  Value = tonumber(SliderBox.Text)
 end
 if tonumber(SliderBox.Text) < min then
 SliderBox.Text = min
 Title_2.Text = min
 Value = min
 SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 else
  Value = tonumber(SliderBox.Text)
 end
 end
 if tonumber(SliderBox.Text) > max then
 SliderBox.Text = max
 Title_2.Text = max
 Value = max
 SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 else
  Value = tonumber(SliderBox.Text)
 end
 if tonumber(SliderBox.Text) < min then
 SliderBox.Text = min
 Title_2.Text = min
 Value = min
 SliderCount.Position = UDim2.new(((min) - min) / (max - min), 0, 0, 0)
 Title_2.Position = UDim2.new(((min) - min) / (max - min), 0, 0, 0)
 pcall(function()
  callback(Value)
  end)
 else
  Value = tonumber(SliderBox.Text)
 end
 if SliderBox.Text == "" then
 SliderBox.Text = min
 Title_2.Text = min
 Value = min
 SliderCount:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)
 Title_2:TweenPosition(UDim2.new(((min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)
 pcall(function()
  callback(Value)
  end)
 end
 end)
return sliderfunc
end
 
 function main:Slider(text,min,max,set,callback)
 local Slider = Instance.new("Frame")
 local slidercorner = Instance.new("UICorner")
 local sliderr = Instance.new("Frame")
 local sliderrcorner = Instance.new("UICorner")
 local SliderLabel = Instance.new("TextLabel")
 local HAHA = Instance.new("Frame")
 local AHEHE = Instance.new("TextButton")
 local bar = Instance.new("Frame")
 local bar1 = Instance.new("Frame")
 local bar1corner = Instance.new("UICorner")
 local barcorner = Instance.new("UICorner")
 local circlebar = Instance.new("Frame")
 local UICorner = Instance.new("UICorner")
 local slidervalue = Instance.new("Frame")
 local valuecorner = Instance.new("UICorner")
 local TextBox = Instance.new("TextBox")
 local UICorner_2 = Instance.new("UICorner")
 local posto = Instance.new("UIStroke")
 
 Slider.Name = "Slider"
 Slider.Parent = MainFramePage
 Slider.BackgroundColor3 = _G.Color
 Slider.BackgroundTransparency = 0
 Slider.Size = UDim2.new(0, 310, 0, 51)
 
 slidercorner.CornerRadius = UDim.new(0, 5)
 slidercorner.Name = "slidercorner"
 slidercorner.Parent = Slider
 
 sliderr.Name = "sliderr"
 sliderr.Parent = Slider
 sliderr.BackgroundTransparency = 0
 sliderr.BackgroundColor3 = Color3.fromRGB(30,30,30)
 sliderr.Position = UDim2.new(0, 1, 0, 1)
 sliderr.Size = UDim2.new(0, 308, 0, 49)
 
 sliderrcorner.CornerRadius = UDim.new(0, 5)
 sliderrcorner.Name = "sliderrcorner"
 sliderrcorner.Parent = sliderr
 
 SliderLabel.Name = "SliderLabel"
 SliderLabel.Parent = sliderr
 SliderLabel.BackgroundColor3 = Color3.fromRGB(224,224,224)
 SliderLabel.BackgroundTransparency = 1.000
 SliderLabel.Position = UDim2.new(0, 15, 0, 0)
 SliderLabel.Size = UDim2.new(0, 180, 0, 26)
 SliderLabel.Font = Enum.Font.Gotham
 SliderLabel.Text = text
 SliderLabel.TextColor3 = Color3.fromRGB(224,224,224)
 SliderLabel.TextSize = 12.000
 SliderLabel.TextTransparency = 0
 SliderLabel.TextXAlignment = Enum.TextXAlignment.Left
 
 HAHA.Name = "HAHA"
 HAHA.Parent = sliderr
 HAHA.BackgroundColor3 = Color3.fromRGB(224,224,224)
 HAHA.BackgroundTransparency = 1.000
 HAHA.Size = UDim2.new(0, 290, 0, 29)
 
 AHEHE.Name = "AHEHE"
 AHEHE.Parent = sliderr
 AHEHE.BackgroundColor3 = Color3.fromRGB(224,224,224)
 AHEHE.BackgroundTransparency = 1.000
 AHEHE.Position = UDim2.new(0, 10, 0, 35)
 AHEHE.Size = UDim2.new(0, 290, 0, 5)
 AHEHE.Font = Enum.Font.SourceSans
 AHEHE.Text = ""
 AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
 AHEHE.TextSize = 14.000
 
 bar.Name = "bar"
 bar.Parent = AHEHE
 bar.BackgroundColor3 = _G.BGColor_2
 bar.Size = UDim2.new(0, 290, 0, 5)
 
 bar1.Name = "bar1"
 bar1.Parent = bar
 bar1.BackgroundColor3 = _G.Color
 bar1.BackgroundTransparency = 0
 bar1.Size = UDim2.new(set/max, 0, 0, 5)
 
 bar1corner.CornerRadius = UDim.new(0, 5)
 bar1corner.Name = "bar1corner"
 bar1corner.Parent = bar1
 
 barcorner.CornerRadius = UDim.new(0, 5)
 barcorner.Name = "barcorner"
 barcorner.Parent = bar
 
 circlebar.Name = "circlebar"
 circlebar.Parent = bar1
 circlebar.BackgroundColor3 = Color3.fromRGB(224,224,224)
 circlebar.Position = UDim2.new(1, -2, 0, -3)
 circlebar.Size = UDim2.new(0, 10, 0, 10)
 
 UICorner.CornerRadius = UDim.new(0, 100)
 UICorner.Parent = circlebar
 
 slidervalue.Name = "slidervalue"
 slidervalue.Parent = sliderr
 slidervalue.BackgroundColor3 = _G.Color
 slidervalue.BackgroundTransparency = 1
 slidervalue.Position = UDim2.new(0, 245, 0, 5)
 slidervalue.Size = UDim2.new(0, 65, 0, 18)
 
 valuecorner.CornerRadius = UDim.new(0, 5)
 valuecorner.Name = "valuecorner"
 valuecorner.Parent = slidervalue
 
 TextBox.Parent = slidervalue
 TextBox.BackgroundColor3 = _G.BGColor_2
 TextBox.Position = UDim2.new(0, 0, 0, 0)
 TextBox.Size = UDim2.new(0, 60, 0, 20)
 TextBox.Font = Enum.Font.Gotham
 TextBox.TextColor3 = Color3.fromRGB(224,224,224)
 TextBox.TextSize = 9.000
 TextBox.Text = set
 TextBox.TextTransparency = 0
 
 posto.Name = "posto"
 posto.Parent = TextBox
 posto.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 posto.Color = Color3.fromRGB(224,224,224)
 posto.LineJoinMode = Enum.LineJoinMode.Round
 posto.Thickness = 1
 posto.Transparency = 0
 posto.Enabled = true
 posto.Archivable = true
 
 UICorner_2.CornerRadius = UDim.new(0, 5)
 UICorner_2.Parent = TextBox
 
 local mouse = game.Players.LocalPlayer:GetMouse()
 local uis = game:GetService("UserInputService")
 
 if Value == nil then
 Value = set
 pcall(function()
  callback(Value)
  end)
 end
 
 AHEHE.MouseButton1Down:Connect(function()
  Value = math.floor((((tonumber(max) - tonumber(min)) / 300) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
  pcall(function()
   callback(Value)
   end)
  bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 300), 0, 5)
  circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 290), 0, -3)
  moveconnection = mouse.Move:Connect(function()
   TextBox.Text = Value
   Value = math.floor((((tonumber(max) - tonumber(min)) / 300) * bar1.AbsoluteSize.X) + tonumber(min))
   pcall(function()
    callback(Value)
    end)
   bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 300), 0, 5)
   circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 290), 0, -3)
   end)
  releaseconnection = uis.InputEnded:Connect(function(Mouse)
   if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
   Value = math.floor((((tonumber(max) - tonumber(min)) / 300) * bar1.AbsoluteSize.X) + tonumber(min))
   pcall(function()
    callback(Value)
    end)
   bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 300), 0, 5)
   circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 290), 0, -3)
   moveconnection:Disconnect()
   releaseconnection:Disconnect()
   end
   end)
  end)
 releaseconnection = uis.InputEnded:Connect(function(Mouse)
  if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
  Value = math.floor((((tonumber(max) - tonumber(min)) / 300) * bar1.AbsoluteSize.X) + tonumber(min))
  TextBox.Text = Value
  end
  end)
 
 TextBox.FocusLost:Connect(function()
  if tonumber(TextBox.Text) > max then
  TextBox.Text = max
  end
  bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
  circlebar.Position = UDim2.new(1, -2, 0, -3)
  TextBox.Text = tostring(TextBox.Text and math.floor((TextBox.Text / max) * (max - min) + min))
  pcall(callback, TextBox.Text)
  end)
 end
 function main:Textbox(text,disappear,callback)
 local Textbox = Instance.new("Frame")
 local TextboxCorner = Instance.new("UICorner")
 local Textboxx = Instance.new("Frame")
 local TextboxxCorner = Instance.new("UICorner")
 local TextboxLabel = Instance.new("TextLabel")
 local txtbtn = Instance.new("TextButton")
 local RealTextbox = Instance.new("TextBox")
 local UICorner = Instance.new("UICorner")
 
 Textbox.Name = "Textbox"
 Textbox.Parent = MainFramePage
 Textbox.BackgroundColor3 = _G.Color
 Textbox.BackgroundTransparency = 0
 Textbox.Size = UDim2.new(0, 310, 0, 31)
 
 TextboxCorner.CornerRadius = UDim.new(0, 5)
 TextboxCorner.Name = "TextboxCorner"
 TextboxCorner.Parent = Textbox
 
 Textboxx.Name = "Textboxx"
 Textboxx.Parent = Textbox
 Textboxx.BackgroundColor3 = Color3.fromRGB(30,30,30)
 Textboxx.Position = UDim2.new(0, 1, 0, 1)
 Textboxx.Size = UDim2.new(0, 310, 0, 29)
 
 TextboxxCorner.CornerRadius = UDim.new(0, 5)
 TextboxxCorner.Name = "TextboxxCorner"
 TextboxxCorner.Parent = Textboxx
 
 TextboxLabel.Name = "TextboxLabel"
 TextboxLabel.Parent = Textbox
 TextboxLabel.BackgroundColor3 = Color3.fromRGB(224,224,224)
 TextboxLabel.BackgroundTransparency = 1.000
 TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
 TextboxLabel.Text = text
 TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
 TextboxLabel.Font = Enum.Font.Gotham
 TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
 TextboxLabel.TextSize = 16.000
 TextboxLabel.TextTransparency = 0
 TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left
 
 txtbtn.Name = "txtbtn"
 txtbtn.Parent = Textbox
 txtbtn.BackgroundColor3 = Color3.fromRGB(224,224,224)
 txtbtn.BackgroundTransparency = 1.000
 txtbtn.Position = UDim2.new(0, 1, 0, 1)
 txtbtn.Size = UDim2.new(0, 310, 0, 29)
 txtbtn.Font = Enum.Font.SourceSans
 txtbtn.Text = ""
 txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
 txtbtn.TextSize = 14.000
 
 RealTextbox.Name = "RealTextbox"
 RealTextbox.Parent = Textbox
 RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
 RealTextbox.BackgroundTransparency = 0
 RealTextbox.Position = UDim2.new(0, 230, 0, 4)
 RealTextbox.Size = UDim2.new(0, 100, 0, 24)
 RealTextbox.Font = Enum.Font.Gotham
 RealTextbox.Text = ""
 RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
 RealTextbox.TextSize = 11.000
 RealTextbox.TextTransparency = 0
 
 RealTextbox.FocusLost:Connect(function()
  callback(RealTextbox.Text)
  if disappear then
  RealTextbox.Text = ""
  end
  end)
 
 UICorner.CornerRadius = UDim.new(0, 5)
 UICorner.Parent = RealTextbox
 end
 function main:Label(text)
 local Label = Instance.new("TextLabel")
 local PaddingLabel = Instance.new("UIPadding")
 local labelfunc = {}
 
 Label.Name = "Label"
 Label.Parent = MainFramePage
 Label.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Label.BackgroundTransparency = 1.000
 Label.Size = UDim2.new(0, 325, 0, 20)
 Label.Font = Enum.Font.Gotham
 Label.TextColor3 = Color3.fromRGB(225, 225, 225)
 Label.TextSize = 12.000
 Label.Text = text
 Label.TextXAlignment = Enum.TextXAlignment.Left
 
 PaddingLabel.PaddingLeft = UDim.new(0,15)
 PaddingLabel.Parent = Label
 PaddingLabel.Name = "PaddingLabel"
 
 function labelfunc:Set(newtext)
 Label.Text = newtext
 end
 return labelfunc
 end
 
 function main:Label1(text)
 local Label1 = Instance.new("TextLabel")
 local PaddingLabel1 = Instance.new("UIPadding")
 local Label1func = {}
 
 Label1.Name = "Label1"
 Label1.Parent = MainFramePage
 Label1.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Label1.BackgroundTransparency = 1.000
 Label1.Size = UDim2.new(0, 325, 0, 20)
 Label1.Font = Enum.Font.Gotham
 Label1.TextColor3 = Color3.fromRGB(225, 225, 225)
 Label1.TextSize = 12.000
 Label1.Text = text
 Label1.TextXAlignment = Enum.TextXAlignment.Left
 
 PaddingLabel1.PaddingLeft = UDim.new(0,15)
 PaddingLabel1.Parent = Label1
 PaddingLabel1.Name = "PaddingLabel1"
 function Label1func:Refresh(tochange)
 Label1.Text = tochange
 end
 
 return Label1func
 end
 
function main:Seperator(text)
 local Seperator = Instance.new("Frame")
 local Sep1 = Instance.new("Frame")
 local Sep2 = Instance.new("TextLabel")
 local Sep3 = Instance.new("Frame")
 
 Seperator.Name = "Seperator"
 Seperator.Parent = MainFramePage
 Seperator.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Seperator.BackgroundTransparency = 1.000
 Seperator.Size = UDim2.new(0, 290, 0, 20)
 
 Sep1.Name = "Sep1"
 Sep1.Parent = Seperator
 Sep1.BackgroundColor3 = _G.Color
 Sep1.BorderSizePixel = 0
 Sep1.Position = UDim2.new(0, 0, 0, 10)
 Sep1.Size = UDim2.new(0, 80, 0, 1)
 
 Sep2.Name = "Sep2"
 Sep2.Parent = Seperator
 Sep2.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Sep2.BackgroundTransparency = 1.000
 Sep2.Position = UDim2.new(0, 120, 0, 0)
 Sep2.Size = UDim2.new(0, 80, 0, 20)
 Sep2.Font = Enum.Font.Gotham
 Sep2.Text = text
 Sep2.TextColor3 = Color3.fromRGB(224,224,224)
 Sep2.TextSize = 14.000
 
 Sep3.Name = "Sep3"
 Sep3.Parent = Seperator
 Sep3.BackgroundColor3 = _G.Color
 Sep3.BorderSizePixel = 0
 Sep3.Position = UDim2.new(0, 240, 0, 10)
 Sep3.Size = UDim2.new(0, 80, 0, 1)
 end
 
 
 function main:Line()
 local Linee = Instance.new("Frame")
 local Line = Instance.new("Frame")
 
 Linee.Name = "Linee"
 Linee.Parent = MainFramePage
 Linee.BackgroundColor3 = Color3.fromRGB(224,224,224)
 Linee.BackgroundTransparency = 1.000
 Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
 Linee.Size = UDim2.new(0, 310, 0, 20)
 
 Line.Name = "Line"
 Line.Parent = Linee
 Line.BackgroundColor3 = _G.Color
 Line.BorderSizePixel = 0
 Line.Position = UDim2.new(0, 0, 0, 10)
 Line.Size = UDim2.new(0, 325, 0, 1)
 end
 return main
 end
 return uitab
 end

if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
    end
	
function CheckLevel() 
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        if World1 then
            if MyLevel == 1 or MyLevel <= 9 or _G.SelectMonster == "Bandit [Lv. 5]" then -- Bandit
                Ms = "Bandit [Lv. 5]"
                NameQuest = "BanditQuest1"
                LevelQuest = 1
                NameMon = "Bandit"
                CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
                CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
                SPAWNPOINT = "Default"
            elseif MyLevel == 10 or MyLevel <= 14 or _G.SelectMonster == "Monkey [Lv. 14]" then -- Monkey
                Ms = "Monkey [Lv. 14]"
                NameQuest = "JungleQuest"
                LevelQuest = 1
                NameMon = "Monkey"
                CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
                CFrameMon = CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
                SPAWNPOINT = "Jungle"
            elseif MyLevel == 15 or MyLevel <= 29 or _G.SelectMonster == "Gorilla [Lv. 20]" then -- Gorilla
                Ms = "Gorilla [Lv. 20]"
                NameQuest = "JungleQuest"
                LevelQuest = 2
                NameMon = "Gorilla"
                CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
                CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
                SPAWNPOINT = "Jungle"
            elseif MyLevel == 30 or MyLevel <= 39 or _G.SelectMonster == "Pirate [Lv. 35]" then -- Pirate
                Ms = "Pirate [Lv. 35]"
                NameQuest = "BuggyQuest1"
                LevelQuest = 1
                NameMon = "Pirate"
                CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
                CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
                SPAWNPOINT = "Pirate"
            elseif MyLevel == 40 or MyLevel <= 59 or _G.SelectMonster == "Brute [Lv. 45]" then -- Brute
                Ms = "Brute [Lv. 45]"
                NameQuest = "BuggyQuest1"
                LevelQuest = 2
                NameMon = "Brute"
                CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
                CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
                SPAWNPOINT = "Pirate"
            elseif MyLevel == 60 or MyLevel <= 74 or _G.SelectMonster == "Desert Bandit [Lv. 60]" then -- Desert Bandit
                Ms = "Desert Bandit [Lv. 60]"
                NameQuest = "DesertQuest"
                LevelQuest = 1
                NameMon = "Desert Bandit"
                CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
                CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
                SPAWNPOINT = "Desert"
            elseif MyLevel == 75 or MyLevel <= 89 or _G.SelectMonster == "Desert Officer [Lv. 70]" then -- Desert Officre
                Ms = "Desert Officer [Lv. 70]"
                NameQuest = "DesertQuest"
                LevelQuest = 2
                NameMon = "Desert Officer"
                CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
                CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
                SPAWNPOINT = "Desert"
            elseif MyLevel == 90 or MyLevel <= 99 or _G.SelectMonster == "Snow Bandit [Lv. 90]" then -- Snow Bandits
                Ms = "Snow Bandit [Lv. 90]"
                NameQuest = "SnowQuest"
                LevelQuest = 1
                NameMon = "Snow Bandits"
                CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
                CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
                SPAWNPOINT = "Ice"
            elseif MyLevel == 100 or MyLevel <= 119 or _G.SelectMonster == "Snowman [Lv. 100]"  then -- Snowman
                Ms = "Snowman [Lv. 100]"
                NameQuest = "SnowQuest"
                LevelQuest = 2
                NameMon = "Snowman"
                CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
                CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
                SPAWNPOINT = "Ice"
            elseif MyLevel == 120 or MyLevel <= 149 or _G.SelectMonster == "Chief Petty Officer [Lv. 120]" then -- Chief Petty Officer
                Ms = "Chief Petty Officer [Lv. 120]"
                NameQuest = "MarineQuest2"
                LevelQuest = 1
                NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
                CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
                SPAWNPOINT = "MarineBase"
            elseif MyLevel == 150 or MyLevel <= 174 or _G.SelectMonster == "Sky Bandit [Lv. 150]" then -- Sky Bandit
                Ms = "Sky Bandit [Lv. 150]"
                NameQuest = "SkyQuest"
                LevelQuest = 1
                NameMon = "Sky Bandit"
                CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
                CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
                SPAWNPOINT = "Sky"
            elseif MyLevel == 175 or MyLevel <= 189 or _G.SelectMonster == "Dark Master [Lv. 175]" then -- Dark Master
                Ms = "Dark Master [Lv. 175]"
                NameQuest = "SkyQuest"
                LevelQuest = 2
                NameMon = "Dark Master"
                CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
                CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
                SPAWNPOINT = "Sky"
            elseif MyLevel == 190 or MyLevel <= 209 or _G.SelectMonster == "Prisoner [Lv. 190]" then
                Ms = "Prisoner [Lv. 190]"
                NameQuest = "PrisonerQuest"
                LevelQuest = 1
                NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
                SPAWNPOINT = "Prison"
            elseif MyLevel == 210 or MyLevel <= 249 or _G.SelectMonster == "Dangerous Prisoner [Lv. 210]" then
                Ms = "Dangerous Prisoner [Lv. 210]"
                NameQuest = "PrisonerQuest"
                LevelQuest = 2
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
                SPAWNPOINT = "Prison"
            elseif MyLevel == 250 or MyLevel <= 299 or _G.SelectMonster == "Toga Warrior [Lv. 225]" then -- Toga Warrior
                Ms = "Toga Warrior [Lv. 250]"
                NameQuest = "ColosseumQuest"
                LevelQuest = 1
                NameMon = "Toga Warrior"
                CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
                CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
                SPAWNPOINT = "Colosseum"
          --[[ elseif MyLevel == 275 or MyLevel <= 299 or _G.SelectMonster == "Gladiator [Lv. 275]" then -- Gladiato
                Ms = "Gladiator [Lv. 275]"
                NameQuest = "ColosseumQuest"
                LevelQuest = 2
                NameMon = "Gladiato"
                CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
                CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001)
                SPAWNPOINT = "Colosseum" ]]
            elseif MyLevel == 300 or MyLevel <= 324 or _G.SelectMonster == "Military Soldier [Lv. 300]" then -- Military Soldier
                Ms = "Military Soldier [Lv. 300]"
                NameQuest = "MagmaQuest"
                LevelQuest = 1
                NameMon = "Military Soldier"
                CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984)
                SPAWNPOINT = "Magma"
            elseif MyLevel == 325 or MyLevel <= 374 or _G.SelectMonster == "Military Spy [Lv. 330]" then -- Military Spy
                Ms = "Military Spy [Lv. 325]"
                NameQuest = "MagmaQuest"
                LevelQuest = 2
                NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
                CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366)
                SPAWNPOINT = "Magma"
            elseif MyLevel == 375 or MyLevel <= 399 or _G.SelectMonster == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior
                Ms = "Fishman Warrior [Lv. 375]"
                NameQuest = "FishmanQuest"
                LevelQuest = 1
                NameMon = "Fishman Warrior"
                CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
                CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
                if _G.Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
                if _G.AutoFarmKaitan and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
                SPAWNPOINT = "Fountain"
            elseif MyLevel == 400 or MyLevel <= 449 or _G.SelectMonster == "Fishman Commando [Lv. 400]" then -- Fishman Commando
                Ms = "Fishman Commando [Lv. 400]"
                NameQuest = "FishmanQuest"
                LevelQuest = 2
                NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
                CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
                if _G.Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
                if _G.AutoFarmKaitan and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
                SPAWNPOINT = "Fountain"
            elseif MyLevel == 450 or MyLevel <= 474 or _G.SelectMonster == "God's Guard [Lv. 450]" then -- God's Guards
                Ms = "God's Guard [Lv. 450]"
                NameQuest = "SkyExp1Quest"
                LevelQuest = 1
                NameMon = "God's Guards"
                CFrameQuest = CFrame.new(-7860.93555, 5545.61719, -380.700043, 0.406786203, -4.34480496e-09, -0.913523376, -3.57733176e-10, 1, -4.91539254e-09, 0.913523376, 2.32631137e-09, 0.406786203)
                CFrameMon = CFrame.new(-7860.93555, 5545.61719, -380.700043, 0.406786203, -4.34480496e-09, -0.913523376, -3.57733176e-10, 1, -4.91539254e-09, 0.913523376, 2.32631137e-09, 0.406786203)
                if _G.Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
                if _G.AutoFarmKaitan and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
                SPAWNPOINT = "Sky"
            elseif MyLevel == 475 or MyLevel <= 524 or _G.SelectMonster == "Shanda [Lv. 475]" then -- Shandas
                Ms = "Shanda [Lv. 475]"
                NameQuest = "SkyExp1Quest"
                LevelQuest = 2
                NameMon = "Shandas"
                CFrameQuest = CFrame.new(-7860.93555, 5545.61719, -380.700043, 0.406786203, -4.34480496e-09, -0.913523376, -3.57733176e-10, 1, -4.91539254e-09, 0.913523376, 2.32631137e-09, 0.406786203)
                CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
                if _G.Auto_Farm_Level and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
                if _G.AutoFarmKaitan and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
                SPAWNPOINT = "Sky"
            elseif MyLevel == 525 or MyLevel <= 549 or _G.SelectMonster == "Royal Squad [Lv. 525]" then -- Royal Squad
                Ms = "Royal Squad [Lv. 525]"
                NameQuest = "SkyExp2Quest"
                LevelQuest = 1
                NameMon = "Royal Squad"
                CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
                CFrameMon = CFrame.new(-7677.59912, 5565.78223, -506.934906, 0.910147548, -1.51583528e-08, 0.414284289, 4.49807258e-09, 1, 2.67073688e-08, -0.414284289, -2.24441656e-08, 0.910147548)
                SPAWNPOINT = "Sky2"
            elseif MyLevel == 550 or MyLevel <= 624 or _G.SelectMonster == "Royal Soldier [Lv. 550]" then -- Royal Soldier
                Ms = "Royal Soldier [Lv. 550]"
                NameQuest = "SkyExp2Quest"
                LevelQuest = 2
                NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
                CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
                SPAWNPOINT = "Sky2"
            elseif MyLevel == 625 or MyLevel <= 649 or _G.SelectMonster == "Galley Pirate [Lv. 625]" then -- Galley Pirate
                Ms = "Galley Pirate [Lv. 625]"
                NameQuest = "FountainQuest"
                LevelQuest = 1
                NameMon = "Galley Pirate"
                CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
                CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
                SPAWNPOINT = "Fountain"
            elseif MyLevel >= 650 or _G.SelectMonster == "Galley Captain [Lv. 650]" then -- Galley Captain
                Ms = "Galley Captain [Lv. 650]"
                NameQuest = "FountainQuest"
                LevelQuest = 2
                NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
                CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
                SPAWNPOINT = "Fountain"
            end
        elseif World2 then
            if MyLevel == 700 or MyLevel <= 724 or _G.SelectMonster == "Raider [Lv. 700]" then -- Raider [Lv. 700]
                Ms = "Raider [Lv. 700]"
                NameQuest = "Area1Quest"
                LevelQuest = 1
                NameMon = "Raider"
                CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
                CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
                SPAWNPOINT = "DressTown"
            elseif MyLevel == 725 or MyLevel <= 774 or _G.SelectMonster == "Mercenary [Lv. 725]" then -- Mercenary [Lv. 725]
                Ms = "Mercenary [Lv. 725]"
                NameQuest = "Area1Quest"
                LevelQuest = 2
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
                CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
                SPAWNPOINT = "DressTown"
            elseif MyLevel == 775 or MyLevel <= 799 or _G.SelectMonster == "Swan Pirate [Lv. 775]" then -- Swan Pirate [Lv. 775]
                Ms = "Swan Pirate [Lv. 775]"
                NameQuest = "Area2Quest"
                LevelQuest = 1
                NameMon = "Swan Pirate"
                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
                SPAWNPOINT = "DressTown"
            elseif MyLevel == 800 or MyLevel <= 874 or _G.SelectMonster == "Factory Staff [Lv. 800]" then -- Factory Staff [Lv. 800]
                Ms = "Factory Staff [Lv. 800]"
                NameQuest = "Area2Quest"
                LevelQuest = 2
                NameMon = "Factory Staff"
                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)
                SPAWNPOINT = "DressTown"
            elseif MyLevel == 875 or MyLevel <= 899 or _G.SelectMonster == "Marine Lieutenant [Lv. 875]" then -- Marine Lieutenant [Lv. 875]
                Ms = "Marine Lieutenant [Lv. 875]"
                NameQuest = "MarineQuest3"
                LevelQuest = 1
                NameMon = "Marine Lieutenant"
                CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
                CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
                SPAWNPOINT = "Greenb"
            elseif MyLevel == 900 or MyLevel <= 949 or _G.SelectMonster == "Marine Captain [Lv. 900]" then -- Marine Captain [Lv. 900]
                Ms = "Marine Captain [Lv. 900]"
                NameQuest = "MarineQuest3"
                LevelQuest = 2
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
                CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
                SPAWNPOINT = "Greenb"
            elseif MyLevel == 950 or MyLevel <= 974 or _G.SelectMonster == "Zombie [Lv. 950]" then -- Zombie [Lv. 950]
                Ms = "Zombie [Lv. 950]"
                NameQuest = "ZombieQuest"
                LevelQuest = 1
                NameMon = "Zombie"
                CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
                CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
                SPAWNPOINT = "Graveyard"
            elseif MyLevel == 975 or MyLevel <= 999 or _G.SelectMonster == "Vampire [Lv. 975]" then -- Vampire [Lv. 975]
                Ms = "Vampire [Lv. 975]"
                NameQuest = "ZombieQuest"
                LevelQuest = 2
                NameMon = "Vampire"
                CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
                CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
                SPAWNPOINT = "Graveyard"
            elseif MyLevel == 1000 or MyLevel <= 1049 or _G.SelectMonster == "Snow Trooper [Lv. 1000]" then -- Snow Trooper [Lv. 1000] **
                Ms = "Snow Trooper [Lv. 1000]"
                NameQuest = "SnowMountainQuest"
                LevelQuest = 1
                NameMon = "Snow Trooper"
                CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
                CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
                SPAWNPOINT = "Snowy"
            elseif MyLevel == 1050 or MyLevel <= 1099 or _G.SelectMonster == "Winter Warrior [Lv. 1050]" then -- Winter Warrior [Lv. 1050]
                Ms = "Winter Warrior [Lv. 1050]"
                NameQuest = "SnowMountainQuest"
                LevelQuest = 2
                NameMon = "Winter Warrior"
                CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
                CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
                SPAWNPOINT = "Snowy"
            elseif MyLevel == 1100 or MyLevel <= 1124 or _G.SelectMonster == "Lab Subordinate [Lv. 1100]" then -- Lab Subordinate [Lv. 1100]
                Ms = "Lab Subordinate [Lv. 1100]"
                NameQuest = "IceSideQuest"
                LevelQuest = 1
                NameMon = "Lab Subordinate"
                CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
                CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
                SPAWNPOINT = "CircleIslandIce"
            elseif MyLevel == 1125 or MyLevel <= 1174 or _G.SelectMonster == "Horned Warrior [Lv. 1125]" then -- Horned Warrior [Lv. 1125]
                Ms = "Horned Warrior [Lv. 1125]"
                NameQuest = "IceSideQuest"
                LevelQuest = 2
                NameMon = "Horned Warrior"
                CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
                CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
                SPAWNPOINT = "CircleIslandIce"
            elseif MyLevel == 1175 or MyLevel <= 1199 or _G.SelectMonster == "Magma Ninja [Lv. 1175]" then -- Magma Ninja [Lv. 1175]
                Ms = "Magma Ninja [Lv. 1175]"
                NameQuest = "FireSideQuest"
                LevelQuest = 1
                NameMon = "Magma Ninja"
                CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
                CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
                SPAWNPOINT = "CircleIslandFire"
            elseif MyLevel == 1200 or MyLevel <= 1249 or _G.SelectMonster == "Lava Pirate [Lv. 1200]" then -- Lava Pirate [Lv. 1200]
                Ms = "Lava Pirate [Lv. 1200]"
                NameQuest = "FireSideQuest"
                LevelQuest = 2
                NameMon = "Lava Pirate"
                CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
                CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
                SPAWNPOINT = "CircleIslandFire"
            elseif MyLevel == 1250 or MyLevel <= 1274 or _G.SelectMonster == "Ship Deckhand [Lv. 1250]" then -- Ship Deckhand [Lv. 1250]
                Ms = "Ship Deckhand [Lv. 1250]"
                NameQuest = "ShipQuest1"
                LevelQuest = 1
                NameMon = "Ship Deckhand"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
			if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
			if _G.AutoFarmKaitan and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
                SPAWNPOINT = "Ship"
            elseif MyLevel == 1275 or MyLevel <= 1299 or _G.SelectMonster == "Ship Engineer [Lv. 1275]"  then -- Ship Engineer [Lv. 1275]
                Ms = "Ship Engineer [Lv. 1275]"
                NameQuest = "ShipQuest1"
                LevelQuest = 2
                NameMon = "Ship Engineer"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
                CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
			if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
			if _G.AutoFarmKaitan and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
                SPAWNPOINT = "Ship"
            elseif MyLevel == 1300 or MyLevel <= 1324 or _G.SelectMonster == "Ship Steward [Lv. 1300]" then -- Ship Steward [Lv. 1300]
                Ms = "Ship Steward [Lv. 1300]"
                NameQuest = "ShipQuest2"
                LevelQuest = 1
                NameMon = "Ship Steward"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
			if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
			if _G.AutoFarmKaitan and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
                SPAWNPOINT = "Ship"
            elseif MyLevel == 1325 or MyLevel <= 1349 or _G.SelectMonster == "Ship Officer [Lv. 1325]" then -- Ship Officer [Lv. 1325]
                Ms = "Ship Officer [Lv. 1325]"
                NameQuest = "ShipQuest2"
                LevelQuest = 2
                NameMon = "Ship Officer"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
                CFrameMon = CFrame.new(955.384583, 181.120193, 33331.8906, 1, -1.07042253e-09, -3.66113085e-14, 1.07042253e-09, 1, 2.00931161e-09, 3.6609157e-14, -2.00931161e-09, 1)
			if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
			if _G.AutoFarmKaitan and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
                SPAWNPOINT = "Ship"
            elseif MyLevel == 1350 or MyLevel <= 1374 or _G.SelectMonster == "Arctic Warrior [Lv. 1350]" then -- Arctic Warrior [Lv. 1350]
                Ms = "Arctic Warrior [Lv. 1350]"
                NameQuest = "FrostQuest"
                LevelQuest = 1
                NameMon = "Arctic Warrior"
                CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
                CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
			if _G.Auto_Farm_Level and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
			end
			if _G.AutoFarmKaitan and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
			end
                SPAWNPOINT = "IceCastle"
            elseif MyLevel == 1375 or MyLevel <= 1424 or _G.SelectMonster == "Snow Lurker [Lv. 1375]" then -- Snow Lurker [Lv. 1375]
                Ms = "Snow Lurker [Lv. 1375]"
                NameQuest = "FrostQuest"
                LevelQuest = 2
                NameMon = "Snow Lurker"
                CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
                CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
                SPAWNPOINT = "IceCastle"
            elseif MyLevel == 1425 or MyLevel <= 1449 or _G.SelectMonster == "Sea Soldier [Lv. 1425]" then -- Sea Soldier [Lv. 1425]
                Ms = "Sea Soldier [Lv. 1425]"
                NameQuest = "ForgottenQuest"
                LevelQuest = 1
                NameMon = "Sea Soldier"
                CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
                CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
                SPAWNPOINT = "ForgottenIsland"
            elseif MyLevel >= 1450 or _G.SelectMonster == "Water Fighter [Lv. 1450]" then -- Water Fighter [Lv. 1450]
                Ms = "Water Fighter [Lv. 1450]"
                NameQuest = "ForgottenQuest"
                LevelQuest = 2
                NameMon = "Water Fighter"
                CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
                CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755)
                SPAWNPOINT = "ForgottenIsland"
            end
        elseif World3 then
            if MyLevel == 1500 or MyLevel <= 1524 or _G.SelectMonster == "Pirate Millionaire [Lv. 1500]" then
                Ms = "Pirate Millionaire [Lv. 1500]"
                NameQuest = "PiratePortQuest"
                LevelQuest = 1
                NameMon = "Pirate Millionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                SPAWNPOINT = "Default"
            elseif MyLevel == 1525 or MyLevel <= 1574 or _G.SelectMonster == "Pistol Billionaire [Lv. 1525]" then
                Ms = "Pistol Billionaire [Lv. 1525]"
                NameQuest = "PiratePortQuest"
                LevelQuest = 2
                NameMon = "Pistol Billionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
                SPAWNPOINT = "Default"
            elseif MyLevel == 1575 or MyLevel <= 1599 or _G.SelectMonster == "Dragon Crew Warrior [Lv. 1575]" then
                Ms = "Dragon Crew Warrior [Lv. 1575]"
                NameQuest = "AmazonQuest"
                LevelQuest = 1
                NameMon = "Dragon Crew Warrior"
                CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
                SPAWNPOINT = "Hydra3"
            elseif MyLevel == 1600 or MyLevel <= 1624 or _G.SelectMonster == "Dragon Crew Archer [Lv. 1600]" then
                Ms = "Dragon Crew Archer [Lv. 1600]"
                NameQuest = "AmazonQuest"
                LevelQuest = 2
                NameMon = "Dragon Crew Archer"
                CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
                SPAWNPOINT = "Hydra3"
            elseif MyLevel == 1625 or MyLevel <= 1649 or _G.SelectMonster == "Female Islander [Lv. 1625]" then
                Ms = "Female Islander [Lv. 1625]"
                NameQuest = "AmazonQuest2"
                LevelQuest = 1
                NameMon = "Female Islander"
                CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
                SPAWNPOINT = "Hydra1"
            elseif MyLevel == 1650 or MyLevel <= 1699 or _G.SelectMonster == "Giant Islander [Lv. 1650]" then
                Ms = "Giant Islander [Lv. 1650]"
                NameQuest = "AmazonQuest2"
                LevelQuest = 2
                NameMon = "Giant Islander"
                CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
                SPAWNPOINT = "Hydra1"
            elseif MyLevel == 1700 or MyLevel <= 1724 or _G.SelectMonster == "Marine Commodore [Lv. 1700]" then
                Ms = "Marine Commodore [Lv. 1700]"
                NameQuest = "MarineTreeIsland"
                LevelQuest = 1
                NameMon = "Marine Commodore"
                CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
                SPAWNPOINT = "GreatTree"
            elseif MyLevel == 1725 or MyLevel <= 1774 or _G.SelectMonster == "Marine Rear Admiral [Lv. 1725]" then
                Ms = "Marine Rear Admiral [Lv. 1725]"
                NameQuest = "MarineTreeIsland"
                LevelQuest = 2
                NameMon = "Marine Rear Admiral"
                CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
                SPAWNPOINT = "GreatTree"
            elseif MyLevel == 1775 or MyLevel <= 1799 or _G.SelectMonster == "Fishman Raider [Lv. 1775]" then
                Ms = "Fishman Raider [Lv. 1775]"
                NameQuest = "DeepForestIsland3"
                LevelQuest = 1
                NameMon = "Fishman Raider"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
                SPAWNPOINT = "PineappleTown"
            elseif MyLevel == 1800 or MyLevel <= 1824 or _G.SelectMonster == "Fishman Captain [Lv. 1800]" then
                Ms = "Fishman Captain [Lv. 1800]"
                NameQuest = "DeepForestIsland3"
                LevelQuest = 2
                NameMon = "Fishman Captain"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
                SPAWNPOINT = "PineappleTown"
            elseif MyLevel == 1825 or MyLevel <= 1849 or _G.SelectMonster == "Forest Pirate [Lv. 1825]" then
                Ms = "Forest Pirate [Lv. 1825]"
                NameQuest = "DeepForestIsland"
                LevelQuest = 1
                NameMon = "Forest Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
                SPAWNPOINT = "BigMansion"
            elseif MyLevel == 1850 or MyLevel <= 1899 or _G.SelectMonster == "Mythological Pirate [Lv. 1850]" then
                Ms = "Mythological Pirate [Lv. 1850]"
                NameQuest = "DeepForestIsland"
                LevelQuest = 2
                NameMon = "Mythological Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
                SPAWNPOINT = "BigMansion"
            elseif MyLevel == 1900 or MyLevel <= 1924 or _G.SelectMonster == "Jungle Pirate [Lv. 1900]" then
                Ms = "Jungle Pirate [Lv. 1900]"
                NameQuest = "DeepForestIsland2"
                LevelQuest = 1
                NameMon = "Jungle Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
                SPAWNPOINT = "PineappleTown"
            elseif MyLevel == 1925 or MyLevel <= 1974 or _G.SelectMonster == "Musketeer Pirate [Lv. 1925]" then
                Ms = "Musketeer Pirate [Lv. 1925]"
                NameQuest = "DeepForestIsland2"
                LevelQuest = 2
                NameMon = "Musketeer Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
                SPAWNPOINT = "PineappleTown"
            elseif MyLevel == 1975 or MyLevel <= 1999 or _G.SelectMonster == "Reborn Skeleton [Lv. 1975]" then
                Ms = "Reborn Skeleton [Lv. 1975]"
                NameQuest = "HauntedQuest1"
                LevelQuest = 1
                NameMon = "Reborn Skeleton"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
                SPAWNPOINT = "HauntedCastle"
            elseif MyLevel == 2000 or MyLevel <= 2024 or _G.SelectMonster == "Living Zombie [Lv. 2000]" then
                Ms = "Living Zombie [Lv. 2000]"
                NameQuest = "HauntedQuest1"
                LevelQuest = 2
                NameMon = "Living Zombie"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
                SPAWNPOINT = "HauntedCastle"
            elseif MyLevel == 2025 or MyLevel <= 2049 or _G.SelectMonster == "Demonic Soul [Lv. 2025]" then
                Ms = "Demonic Soul [Lv. 2025]"
                NameQuest = "HauntedQuest2"
                LevelQuest = 1
                NameMon = "Demonic Soul"
                CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
                CFrameMon = CFrame.new(-9466.72949, 171.162918, 6132.01514)
                SPAWNPOINT = "HauntedCastle"
            elseif MyLevel == 2050 or MyLevel <= 2074 or _G.SelectMonster == "Posessed Mummy [Lv. 2050]" then
                Ms = "Posessed Mummy [Lv. 2050]" 
                NameQuest = "HauntedQuest2"
                LevelQuest = 2
                NameMon = "Posessed Mummy"
                CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
                CFrameMon = CFrame.new(-9589.93848, 4.85058546, 6190.27197)
                SPAWNPOINT = "HauntedCastle"
            elseif MyLevel == 2075 or MyLevel <= 2099 or _G.SelectMonster == "Peanut Scout [Lv. 2075]" then
                Ms = "Peanut Scout [Lv. 2075]"
                NameQuest = "NutsIslandQuest"
                LevelQuest = 1
                NameMon = "Peanut Scout"
                CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
                CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
                SPAWNPOINT = "Peanut"
            elseif MyLevel == 2100 or MyLevel <= 2124 or _G.SelectMonster == "Peanut President [Lv. 2100]" then
                Ms = "Peanut President [Lv. 2100]"
                NameQuest = "NutsIslandQuest"
                LevelQuest = 2
                NameMon = "Peanut President"
                CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
                CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
                SPAWNPOINT = "Peanut"
            elseif MyLevel == 2125 or MyLevel <= 2149 or _G.SelectMonster == "Ice Cream Chef [Lv. 2125]" then
                Ms = "Ice Cream Chef [Lv. 2125]"
                NameQuest = "IceCreamIslandQuest"
                LevelQuest = 1
                NameMon = "Ice Cream Chef"
                CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
                CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
                SPAWNPOINT = "IceCream"
            elseif MyLevel == 2150 or MyLevel <= 2199 or _G.SelectMonster == "Ice Cream Commander [Lv. 2150]" then
                Ms = "Ice Cream Commander [Lv. 2150]"
                NameQuest = "IceCreamIslandQuest"
                LevelQuest = 2
                NameMon = "Ice Cream Commander"
                CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
                CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
                SPAWNPOINT = "IceCream"
            elseif MyLevel == 2200 or MyLevel <= 2224 or _G.SelectMonster == "Cookie Crafter [Lv. 2200]" then
                Ms = "Cookie Crafter [Lv. 2200]"
                NameQuest = "CakeQuest1"
                LevelQuest = 1
                NameMon = "Cookie Crafter"
                CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
                CFrameMon = CFrame.new(-2273.00244140625, 90.22590637207031, -12151.62109375)
                SPAWNPOINT = "Loaf"
            elseif MyLevel == 2225 or MyLevel <= 2249 or _G.SelectMonster == "Cake Guard [Lv. 2225]" then
                Ms = "Cake Guard [Lv. 2225]"
                NameQuest = "CakeQuest1"
                LevelQuest = 2
                NameMon = "Cake Guard"
                CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
                CFrameMon = CFrame.new(-1442.373046875, 158.14111328125, -12277.37109375)
                SPAWNPOINT = "Loaf"
            elseif MyLevel == 2250 or MyLevel <= 2274 or _G.SelectMonster == "Baking Staff [Lv. 2250]" then
                Ms = "Baking Staff [Lv. 2250]"
                NameQuest = "CakeQuest2"
                LevelQuest = 1
                NameMon = "Baking Staff"
                CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
                CFrameMon = CFrame.new(-1837.2803955078125, 129.0594482421875, -12934.5498046875)
                SPAWNPOINT = "Loaf"
            elseif MyLevel == 2275 or MyLevel <= 2299 or _G.SelectMonster == "Head Baker [Lv. 2275]" then
                Ms = "Head Baker [Lv. 2275]"
                NameQuest = "CakeQuest2"
                LevelQuest = 2
                NameMon = "Head Baker"
                CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
                CFrameMon = CFrame.new(-2203.302490234375, 109.90937042236328, -12788.7333984375)
                SPAWNPOINT = "Loaf"
            elseif MyLevel == 2300 or MyLevel <= 2324 or _G.SelectMonster == "Cocoa Warrior [Lv. 2300]" then
                Ms = "Cocoa Warrior [Lv. 2300]"
                NameQuest = "ChocQuest1"
                LevelQuest = 1
                NameMon = "Cocoa Warrior"
                CFrameQuest = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
                CFrameMon = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
                SPAWNPOINT = "Chocolate"
            elseif MyLevel == 2325 or MyLevel <= 2349 or _G.SelectMonster == "Chocolate Bar Battler [Lv. 2325]" then
                Ms = "Chocolate Bar Battler [Lv. 2325]"
                NameQuest = "ChocQuest1"
                LevelQuest = 2
                NameMon = "Chocolate Bar Battler"
                CFrameQuest = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
                CFrameMon = CFrame.new(311.1222839355469, 149.17347717285156, -12279.9228515625)
                SPAWNPOINT = "Chocolate"
            elseif MyLevel == 2350 or MyLevel <= 2374 or _G.SelectMonster == "Sweet Thief [Lv. 2350]" then
                Ms = "Sweet Thief [Lv. 2350]"
                NameQuest = "ChocQuest2"
                LevelQuest = 1
                NameMon = "Sweet Thief"
                CFrameQuest = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
                CFrameMon = CFrame.new(42.193599700927734, 144.3453826904297, -12888.8125)
                SPAWNPOINT = "Chocolate"
            elseif MyLevel == 2375 or MyLevel <= 2399 or _G.SelectMonster == "Candy Rebel [Lv. 2375]" then
                Ms = "Candy Rebel [Lv. 2375]"
                NameQuest = "ChocQuest2"
                LevelQuest = 2
                NameMon = "Candy Rebel"
                CFrameQuest = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
                CFrameMon = CFrame.new(42.193599700927734, 144.3453826904297, -12888.8125)
                SPAWNPOINT = "Chocolate"
            elseif MyLevel == 2400 or MyLevel <= 2424 or _G.SelectMonster == "Candy Pirate [Lv. 2400]" then
                Ms = "Candy Pirate [Lv. 2400]"
                NameQuest = "CandyQuest1"
                LevelQuest = 1
                NameMon = "Candy Pirate"
                CFrameQuest = CFrame.new(-1147.2296142578125, 14.133421897888184, -14445.1162109375)
                CFrameMon = CFrame.new(-1488.756103515625, 131.76937866210938, -14374.365234375)
                SPAWNPOINT = "Chocolate"  
            elseif MyLevel >= 2425 or _G.SelectMonster == "Snow Demon [Lv. 2425]" then
                Ms = "Snow Demon [Lv. 2425]"
                NameQuest = "CandyQuest1"
                LevelQuest = 2
                NameMon = "Snow Demon"
                CFrameQuest = CFrame.new(-1147.2296142578125, 14.133421897888184, -14445.1162109375)
                CFrameMon = CFrame.new(-923.905029296875, 100.98135375976562, -14330.78125)
                SPAWNPOINT = "Chocolate"   
			end
        end
    end

function CheckLevelBoss()
  if SelectBoss == "Diamond [Lv. 750] [Boss]" then
     MsBoss = "Diamond [Lv. 750] [Boss]"
     NaemQuestBoss = "Area1Quest"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
     CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
  elseif SelectBoss == "Jeremy [Lv. 850] [Boss]" then
     MsBoss = "Jeremy [Lv. 850] [Boss]"
     NaemQuestBoss = "Area2Quest"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
     CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
  elseif SelectBoss == "Fajita [Lv. 925] [Boss]" then
     MsBoss = "Fajita [Lv. 925] [Boss]"
     NaemQuestBoss = "MarineQuest3"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
     CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
  elseif SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
     MsBoss = "Don Swan [Lv. 1000] [Boss]"
     CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
  elseif SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
     MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
     NaemQuestBoss = "IceSideQuest"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
     CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
  elseif SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
     MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
     CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
  elseif SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
     MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
     NaemQuestBoss = "FrostQuest"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
     CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
  elseif SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
     MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
     NaemQuestBoss = "ForgottenQuest"             
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
     CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
     -- Old World
  elseif SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
     MsBoss = "Saber Expert [Lv. 200] [Boss]"
     CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
  elseif SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
     MsBoss = "The Gorilla King [Lv. 25] [Boss]"
     NaemQuestBoss = "JungleQuest"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
     CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
  elseif SelectBoss == "Bobby [Lv. 55] [Boss]" then
     MsBoss = "Bobby [Lv. 55] [Boss]"
     NaemQuestBoss = "BuggyQuest1"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
     CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
  elseif SelectBoss == "Yeti [Lv. 110] [Boss]" then
     MsBoss = "Yeti [Lv. 110] [Boss]"
     NaemQuestBoss = "SnowQuest"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
     CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
  elseif SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
     MsBoss = "Mob Leader [Lv. 120] [Boss]"
     CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.928248107)
     --The Gorilla King [Lv. 25] [Boss]
  elseif SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
     MsBoss = "Vice Admiral [Lv. 130] [Boss]"
     NaemQuestBoss = "MarineQuest2"
     LevelQuestBoss = 2
     CFrameQuestBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
     CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
  elseif SelectBoss == "Warden [Lv. 175] [Boss]" then
     MsBoss = "Warden [Lv. 175] [Boss]"
     NaemQuestBoss = "ImpelQuest"
     LevelQuestBoss = 1
     CFrameQuestBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
     CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
  elseif SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
     MsBoss = "Chief Warden [Lv. 200] [Boss]"
     NaemQuestBoss = "ImpelQuest"
     LevelQuestBoss = 2
     CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
     CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
  elseif SelectBoss == "Flamingo [Lv. 225] [Boss]" then
     MsBoss = "Flamingo [Lv. 225] [Boss]"
     NaemQuestBoss = "ImpelQuest"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
     CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
  elseif SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
     MsBoss = "Magma Admiral [Lv. 350] [Boss]"
     NaemQuestBoss = "MagmaQuest"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
     CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
  elseif SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
     MsBoss = "Fishman Lord [Lv. 425] [Boss]"
     NaemQuestBoss = "FishmanQuest"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
     CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
  elseif SelectBoss == "Wysper [Lv. 500] [Boss]" then
     MsBoss = "Wysper [Lv. 500] [Boss]"
     NaemQuestBoss = "SkyExp1Quest"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
     CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
  elseif SelectBoss == "Thunder God [Lv. 575] [Boss]" then
     MsBoss = "Thunder God [Lv. 575] [Boss]"
     NaemQuestBoss = "SkyExp2Quest"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
     CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
  elseif SelectBoss == "Cyborg [Lv. 675] [Boss]" then
     MsBoss = "Cyborg [Lv. 675] [Boss]"
     NaemQuestBoss = "FountainQuest"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
     CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
  elseif SelectBoss == "Stone [Lv. 1550] [Boss]" then
     MsBoss = "Stone [Lv. 1550] [Boss]"
     NaemQuestBoss = "PiratePortQuest"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199)
     CFrameBoss = CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199)
  elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
     MsBoss = "Island Empress [Lv. 1675] [Boss]"
     NaemQuestBoss = "AmazonQuest2"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291)
     CFrameBoss = CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291)
  elseif SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
     MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
     NaemQuestBoss = "MarineTreeIsland"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479)
     CFrameBoss = CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479)
  elseif SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
     MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
     NaemQuestBoss = "DeepForestIsland"
     LevelQuestBoss = 3
     CFrameQuestBoss = CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289)
     CFrameBoss = CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289)
  elseif SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
   MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
   NaemQuestBoss = "DeepForestIsland2"
   LevelQuestBoss = 3
   CFrameQuestBoss = CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359)
   CFrameBoss = CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359)
   end 
end        

function HopServer()-----hopserver
      local PlaceID = game.PlaceId
      local AllIDs = {}
      local foundAnything = ""
      local actualHour = os.date("!*t").hour
      local Deleted = false
      function TPReturner()
          local Site;
          if foundAnything == "" then
              Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
          else
              Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
          end
          local ID = ""
          if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
              foundAnything = Site.nextPageCursor
          end
          local num = 0;
          for i,v in pairs(Site.data) do
              local Possible = true
              ID = tostring(v.id)
          if tonumber(v.maxPlayers) > tonumber(v.playing) then
              for _,Existing in pairs(AllIDs) do
                  if num ~= 0 then
                      if ID == tostring(Existing) then
                          Possible = false
                      end
                  else
                      if tonumber(actualHour) ~= tonumber(Existing) then
                          local delFile = pcall(function()
                          -- delfile("NotSameServers.json")
                          AllIDs = {}
                          table.insert(AllIDs, actualHour)
                          end)
                      end
                  end
                      num = num + 1
              end
                  if Possible == true then
                  table.insert(AllIDs, ID)
                  task.wait()
                  pcall(function()
                  -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                  wait()
                  game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                  end)
                  wait(.1)
              end
          end
      end
  end
                                      
  function Teleport() 
          while wait(1) do
              pcall(function()
                  TPReturner()
                  if foundAnything ~= "" then
                      TPReturner()
                  end
              end)
          end
      end
      Teleport()
  end
  
  function HOP()
      HopServer()
      HopServer()
      HopServer()
      HopServer()
      HopServer()
      while wait(0.2) do
          pcall(function()
              HopServer()
              if foundAnything ~= "" then
                  HopServer()
              end
          end)
      end
  end

 function Hop()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        end
        function Teleport() 
            while wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        Teleport()
    end                   
    
  function isnil(thing)
		return (thing == nil)
	end
	local function round(n)
		return math.floor(tonumber(n) + 0.5)
	end
	Number = math.random(1, 1000000)
	function UpdatePlayerChams()
		for i,v in pairs(game:GetService'Players':GetChildren()) do
			pcall(function()
				if not isnil(v.Character) then
					if ESPPlayer then
						if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v.Character.Head)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v.Character.Head
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "Code"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Team == game.Players.LocalPlayer.Team then
								name.TextColor3 = Color3.new(0,255,0)
							else
								name.TextColor3 = Color3.new(255,0,0)
							end
						else
							v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
						end
					else
						if v.Character.Head:FindFirstChild('NameEsp'..Number) then
							v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end
			end)
         end
      end

    function UpdateSeaBeastsESP() 
        for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
            pcall(function()
                if SeaBeastsESP then 
                    if v.Name ~= "SeaBeast" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

  function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

    function UpdateChestEsp() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            pcall(function()
                if string.find(v.Name,"Chest") then
                    if ChestESP then
                        if string.find(v.Name,"Chest") then
                            if not v:FindFirstChild('NameEsp'..Number) then
                                local bill = Instance.new('BillboardGui',v)
                                bill.Name = 'NameEsp'..Number
                                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                bill.Size = UDim2.new(1,200,1,30)
                                bill.Adornee = v
                                bill.AlwaysOnTop = true
                                local name = Instance.new('TextLabel',bill)
                                name.Font = "Code"
                                name.FontSize = "Size14"
                                name.TextWrapped = true
                                name.Size = UDim2.new(1,0,1,0)
                                name.TextYAlignment = 'Top'
                                name.BackgroundTransparency = 1
                                name.TextStrokeTransparency = 0.5
                                name.TextColor3 = Color3.fromRGB(0, 255, 250)
                            if v.Name == "Chest1" then
                                name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                            if v.Name == "Chest2" then
                                name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                        if v.Name == "Chest3" then
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                        else
                            v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                    end
                end
                end
            end)
        end
    end
    
    function UpdateBfEsp() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            pcall(function()
                if DevilFruitESP then
                    if string.find(v.Name, "Fruit") then   
                        if not v.Handle:FindFirstChild('NameEsp'..Number) then
                            local bill = Instance.new('BillboardGui',v.Handle)
                            bill.Name = 'NameEsp'..Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v.Handle
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                            name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                        else
                            v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v.Handle:FindFirstChild('NameEsp'..Number) then
                        v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                        end
                end
            end)
        end
    end
    
    function UpdateFlowerEsp() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            pcall(function()
                if v.Name == "Flower2" or v.Name == "Flower1" then
                    if FlowerESP then 
                        if not v:FindFirstChild('NameEsp'..Number) then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'..Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        if v.Name == "Flower1" then 
                            name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            name.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if v.Name == "Flower2" then
                            name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                    else
                        if v:FindFirstChild('NameEsp'..Number) then
                            v:FindFirstChild('NameEsp'..Number):Destroy()
                        end
                    end
                end   
            end)
        end
    end

	function UpdateRealFruitChams() 
		for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
			if v:IsA("Tool") then
				if RealFruitESP then 
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = "Code"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
					end
				else
					if v.Handle:FindFirstChild('NameEsp'..Number) then
						v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end 
			end
		end
		for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
			if v:IsA("Tool") then
				if RealFruitESP then 
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = "Code"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 174, 0)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
					end
				else
					if v.Handle:FindFirstChild('NameEsp'..Number) then
						v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end 
			end
		end
		for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
			if v:IsA("Tool") then
				if RealFruitESP then 
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = "Code"
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(251, 255, 0)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
					end
				else
					if v.Handle:FindFirstChild('NameEsp'..Number) then
						v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end 
			end
		end
	end

    function NoDodgeCool()
        if nododgecool then
            for i,v in next, getgc() do
                if game:GetService("Players").LocalPlayer.Character.Dodge then
                    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
                        for i2,v2 in next, getupvalues(v) do
                            if tostring(v2) == "0.4" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not nododgecool
                            end
                        end
                    end
                end
            end
        end
	end

    function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end

    function UnEquipWeapon(Weapon)
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            _G.NotAutoEquip = true
            wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
            wait(.1)
            _G.NotAutoEquip = false
        end
    end

    function EquipWeapon(ToolSe)
        if not _G.NotAutoEquip then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                wait(.1)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
            end
        end
    end

    function GetDistance(target)
        return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
    end

function GetWeaponInventory(Weaponname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end

function Click()
	local VirtualUser = game:GetService('VirtualUser')
	VirtualUser:CaptureController()
	VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
end

 function attack()
      require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker).CameraShakeInstance.CameraShakeState = {FadingIn = 3,FadingOut = 2,Sustained = 0,Inactive =1}
      game:GetService'VirtualUser':CaptureController()
      game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
 end

	function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end
	
	function EquipWeapon(ToolSe)
        if not _G.NotAutoEquip then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                wait(.1)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
            end
        end
    end

	-- Get Weapon Sword
	spawn(function()
		while wait() do
			for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Sword" then
						SelectToolWeaponSword = v.Name
					end
				end
			end
			for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Sword" then
						SelectToolWeaponSword = v.Name
					end
				end
			end
		end
	end)

	-- Get Weapon Gun
	spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectToolWeaponGun = v.Name
					end
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectToolWeaponGun = v.Name
					end
				end
			end
		end
	end)

	-- Get Weapon Melee
	spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("Melee") then 
						SelectToolWeaponMelee = v.Name
					end
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("Melee") then 
						SelectToolWeaponMelee = v.Name
					end
				end
			end
		end
	end)


function tweenteleport(Speed,Part)
    local Distancex = (Vector3.new(Part) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- Ã Â¸Ë†Ã Â¸Â¸Ã Â¸â€Ã Â¸â€”Ã Â¸ÂµÃ Â¹Ë†Ã Â¸Ë†Ã Â¸Â°Ã Â¹â€žÃ Â¸â€º Position Only
local Speexd = Speed -- Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¹â‚¬Ã Â¸Â£Ã Â¹â€¡Ã Â¸Â§Ã Â¸â€šÃ Â¸Â­Ã Â¸â€¡Ã Â¸Â¡Ã Â¸Â¶Ã Â¸â€¡
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distancex/Speexd, Enum.EasingStyle.Linear)
tweenx = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(Part)})
tweenx:Play()
wait(Distancex/Speexd)
end
game:GetService("RunService").Heartbeat:Connect(function()
pcall(function()
CheckLevel()
if not game.Workspace:FindFirstChild(NameMon) then
   local part = Instance.new("Part")
   part.Name = NameMon
   part.Position = Vector3.new(0, 10, 0)
   part.Anchored = true
   part.CFrame = CFrameQuest
   part.Transparency = 1
   part.Parent = game.Workspace
end
CheckLevel()
if not game.Workspace:FindFirstChild(Ms) then
   local part = Instance.new("Part")
   part.Name = Ms
   part.Position = Vector3.new(0, 10, 0)
   part.Anchored = true
   part.CFrame = CFrameMon
   part.Transparency = 1
   part.Parent = game.Workspace
end
end)
end)

function TP(Pos)
            Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
            pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
            tween:Play()
            if Distance <= 250 then
                tween:Cancel()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
            end
            if _G.StopTween == true then
                tween:Cancel()
                _G.Clip = false
            end
        end
        
        function GetDistance(target)
            return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
        end

					spawn(function()
						pcall(function()
							while wait(1) do
	                         if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
								if _G.AutoBacklegv then
	                                game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
						            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
								end
							end
						end
					end)
				end)

					spawn(function()
						pcall(function()
							while wait(1) do
	                         if game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then
								if _G.AutoBacklegv then
	                                game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
						            game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
								end
							end
						end
					end)
				end)

-- BodyClip

    spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
              if _G.Auto_Twin_Hook or _G.AutoFarmCavander or _G.AutoNew or _G.HolyTorch or _G.AutoFarmKaitan or _G.AutoTushitaSword or _G.Auto_Kill_Law or _G.AutoAdvanceDungeon or _G.AutoKaitan or _G.Auto_Farm_Level or _G.AutoSerpentBow or _G.AutoNewWorld2 or _G.MeleeFarm or _G.Auto_Farm_Sword or _G.AutoKaitan or _G.AutoQuestSoulGuitar or _G.AutoSeaBest or _G.AutoSaber or _G.AutoFarmSelectMonster or _G.AutoMysticIsland or _G.AutoFactory or _G.Auto_Open_Dough_Dungeon or _G.BlackBeard or _G.BlackBeardHop or _G.Auto_Raid_Hop or _G.Auto_Raid or _G.Next_Islands or _G.AutoPlayerHunter or _G.Auto_Kill_PlyDown or _G.Raid or _G.AutoEliteHunter or _G.BlackBeard or _G.Tushitahop or _G.AutoHakiRainbow or _G.AutoElectricClaw or _G.TeleportNPC or _G.AutoPole or _G.AutoMobAura or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.NeareastFarm or _G.AutoFarmMaterial or _G.AutoBartilo or _G.Auto_DarkBoss or GrabChest or _G.AutoFarmBounty or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or AutoSoulGuitar or Auto_Cursed_Dual_Katana or _G.AutoFarmHearts then
                     if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                        Noclip.MaxForce = Vector3.new(100000,100000,100000)
                        Noclip.Velocity = Vector3.new(0,0,0)
                     end
                  else	
                     if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                     end
                  end
            end)
        end)
    end)
     
    spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
               if _G.NoClip or _G.AutoFarmCavander or _G.AutoNew or _G.Auto_Twin_Hook or _G.HolyTorch or _G.AutoFarmKaitan or _G.AutoTushitaSword or _G.Auto_Kill_Law or _G.AutoFarmHearts or _G.NeareastFarm or _G.AutoFarmGunMastery or _G.AutoAdvanceDungeon or _G.AutoKaitan or _G.Auto_Farm_Level or _G.AutoSerpentBow or _G.AutoNewWorld2 or _G.AutoKaitan or _G.AutoQuestSoulGuitar or _G.AutoSeaBest or _G.AutoSaber or _G.AutoFarmSelectMonster or _G.AutoMysticIsland or _G.AutoFactory or _G.MeleeFarm or _G.Auto_Farm_Sword or _G.Auto_Open_Dough_Dungeon or _G.BlackBeard or _G.BlackBeardHop or _G.Auto_Raid_Hop or _G.Auto_Raid or _G.Next_Islands or _G.AutoPlayerHunter or _G.Auto_Kill_PlyDown or _G.Raid or _G.AutoEliteHunter or _G.BlackBeard or _G.Tushitahop or _G.AutoHakiRainbow or _G.AutoElectricClaw or _G.TeleportNPC or _G.AutoPole or _G.AutoMobAura or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or GrabChest or _G.AutoFarmBounty or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or Auto_Cursed_Dual_Katana or AutoSoulGuitar then
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false    
                        end
                    end
                end
            end)
        end)
    end)

spawn(function()
	while wait() do
		pcall(function()
			if StartMagnet then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.Humanoid:ChangeState(11)
							v.Humanoid:ChangeState(14)
						end
					end
				end
			end
		end)
	end
end)

-- [No Stun]

spawn(function()
	if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
		game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
			pcall(function()
				if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
					game.Players.LocalPlayer.Character.Stun.Value = 0
				end
			end)
		end)
	end
end)




 --------------------------------------------------------------------
local Library = Update:Window("NEVA HUB","12258186601")
-------------------------------------------------------------------

--------------------------------------------------------------------
local Main = Library:Tab("Main","rbxassetid://6026568198")
local Weapon = Library:Tab("Weapons","rbxassetid://9606626034")
local Setting = Library:Tab("Settings","rbxassetid://9606644121")
local Stats = Library:Tab("Stats","rbxassetid://7040410130")
local P = Library:Tab("Player","rbxassetid://7251993295")
local Teleport = Library:Tab("Teleport","rbxassetid://6035190846")
local Dungeon = Library:Tab("Raid+Esp","rbxassetid://7044284832")
local Shop = Library:Tab("Shop","rbxassetid://6031265976")
local D = Library:Tab("Fruit","rbxassetid://6031265976")
local Misc = Library:Tab("Misc","rbxassetid://6034509993")
local Race = Library:Tab("RaceV4","rbxassetid://6034509993")

--------------------------------------------------------------------

WeaponList = {
	"Melee",
	"Sword",
	"Gun",
	"Fruit"
}

    local SelectWeapona = Main:Dropdown("Select Weapon",WeaponList,function(value)
        _G.SelectWeapon = value
    end)
    task.spawn(function()
	while wait() do
		pcall(function()
			if _G.SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Gun" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Gun" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			end
		end)
	end
end)


spawn(function()
			while task.wait() do
				if _G.AutoFarmSelectMonster then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == Ms and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = PosMon
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
end)

spawn(function()
			while task.wait() do
				if _G.AutoFarmSelectMonster then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == Ms and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = PosMon
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
end)

spawn(function()
    while wait() do
        if _G.SelectModeFarm == "Normal Mode" and _G.Auto_Farm_Level then
            pcall(function()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                    StartMagnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMagnet = false
                    CheckQuest()
                    repeat task.wait() TP(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Level
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        wait(1.2)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        wait(0.5)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Ms then
                                    repeat task.wait()
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            EquipWeapon(_G.Select_Weapon)
                                            AutoHaki()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                                            StartMagnet = true
                                            TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                        else
                                            StartMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until not _G.Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end
                    else
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        else
                            TP(CFrameMon)
                        end
                    end
                end
            end)

        elseif _G.SelectModeFarm == "Fast Mode" and _G.Auto_Farm_Level then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == SPAWNPOINT then
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                        FastFarmMode = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        FastFarmMode = false
                        CheckQuest()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Ms then
                                        repeat task.wait()
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                EquipWeapon(_G.Select_Weapon)
                                                AutoHaki()
                                                PosMonFast = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                                                FastFarmMode = true
                                                TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
                                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                            else
                                                FastFarmMode = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            end
                                        until not _G.Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            end
                        else
                            FastFarmMode = false
                            if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                                TP(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                            else
                                TP(CFrameMon)
                            end
                        end
                    end
                else
                    repeat task.wait()
                        game.Players.LocalPlayer.Character.Head:Destroy()
                        wait(0.5)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                    until game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == SPAWNPOINT
                end
            end)

        elseif _G.SelectModeFarm == "No Quest" and _G.Auto_Farm_Level then
            pcall(function()
                CheckQuest()
                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if v.Name == Ms then
                                if v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.Select_Weapon)
                                        AutoHaki()
                                        PosMonNoQuest = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                                        NoQuest = true
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                    until not _G.Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent
                                end
                            end
                        end
                    end
                else
                    NoQuest = false
                    if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                        TP(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                    else
                        TP(CFrameMon)
                    end
                end
            end)

        elseif _G.SelectModeFarm == "Near Farm Mode" and _G.Auto_Farm_Level then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name and v:FindFirstChild("Humanoid") then
                    if v.Humanoid.Health > 0 then
                        repeat game:GetService("RunService").Heartbeat:wait()
                            EquipWeapon(_G.Select_Weapon)
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                local args = {
                                    [1] = "Buso"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                            TP(v.HumanoidRootPart.CFrame * MethodFarm)
                            NearMode = true
                            PosMonModeNear = v.HumanoidRootPart.CFrame
                            game:GetService("VirtualUser"):CaptureController()
                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                        until not _G.Auto_Farm_Level or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                    end
                end
            end
        end
    end
end)

-- [[ Bring Mob Section ]]

-- [[ This script was Beutified by: xShadowyx ]]

-- // [[ Bring Mob Script Function ]] [Fixed]

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
        pcall(function()
            if _G.BringMonster then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.Auto_Farm_Level and StartMagnet and v.Name == Ms and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                    if _G.Auto_Farm_Level and NoQuest and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonNoQuest.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonNoQuest
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                    if _G.Auto_Farm_Level and NearMode and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonModeNear.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonModeNear
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                    if _G.Auto_Farm_Level and FastFarmMode and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonFast.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonFast
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                end
            end
        end)
    end)
end)


    local FarmMethods = {"Normal Mode","Fast Mode","No Quest","Near Farm Mode"}

Main:Dropdown("Select Mode Farm",FarmMethods,function(value)
    _G.SelectModeFarm = value
end)

Main:Toggle("Auto Farm Select Mode",false,function(value)
    _G.Auto_Farm_Level = value
    StopTween(_G.Auto_Farm_Level)
end)
        
        function EquipWeaponSword()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end

function EquipWeaponMelee()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Melee" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end
spawn(function() -- Code EXP
						pcall(function()
							while wait(0) do
								if _G.UseCode then
									function UseCode(Text)
										game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
									end
									UseCode("Enyu_is_Pro")
									UseCode("Magicbus")
									UseCode("JCWK")
									UseCode("Starcodeheo")
									UseCode("Bluxxy")
									UseCode("fudd10_v2")
									UseCode("3BVISITS")
									UseCode("UPD16")
									UseCode("FUDD10")
									UseCode("UPD15")
									UseCode("Sub2OfficialNoobie")
									UseCode("SUB2GAMERROBOT_EXP1")
									UseCode("THEGREATACE")
									UseCode("SUB2NOOBMASTER123")
									UseCode("Axiore")
									UseCode("TantaiGaming")
									UseCode("STRAWHATMAINE") 
								end
							end
						end)
					end)
					    if World1 then
    Main:Toggle("Auto Second Sea",_G.AutoNew,function(value)
			_G.AutoNew = value
            StopTween(_G.AutoNew)
		end)

		spawn(function()
			while wait() do
				if _G.AutoNew then
					local Lv = game.Players.localPlayer.Data.Level.Value
					if Lv >= 700 and World1 and _G.AutoNew then
						if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") ~= 0 then
							if Workspace.Map.Ice.Door.Transparency == 1 then
								if (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 250 then
									if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
										local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
										wait(.4)
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
									end
									_G.DoorNewWorldTween = TP(CFrame.new(1347.7124, 37.3751602, -1325.6488).Position,CFrame.new(1347.7124, 37.3751602, -1325.6488))
									if (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
										if DoorNewWorldTween then DoorNewWorldTween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.7124, 37.3751602, -1325.6488)
									end
								elseif game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") and game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 and (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									if _G.DoorNewWorldTween then _G.DoorNewWorldTween:Stop() end
									CheckBoss = true
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if CheckBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Ice Admiral [Lv. 700] [Boss]" then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													_G.Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													EquipWeapon(_G.SelectWeapon)
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														local args = {
															[1] = "Buso"
														}
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
													Click()
												end 
											until not CheckBoss or not v.Parent or v.Humanoid.Health <= 0 or AutoNew == false
										end
									end
									CheckBoss = false
								end 
							else
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
									DoorNewWorldTween = TP(CFrame.new(1347.7124, 37.3751602, -1325.6488).Position,CFrame.new(1347.7124, 37.3751602, -1325.6488))
									if (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
										if DoorNewWorldTween then DoorNewWorldTween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.7124, 37.3751602, -1325.6488)
										local args = {
											[1] = "DressrosaQuestProgress",
											[2] = "Detective"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										wait(0.5)
										if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
											local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
											wait(.4)
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
										end
									end
								else
									AutoNewWorldTween = TP(CFrame.new(4849.29883, 5.65138149, 719.611877).Position,CFrame.new(4849.29883, 5.65138149, 719.611877))
									if (CFrame.new(4849.29883, 5.65138149, 719.611877).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
										if DoorNewWorldTween then DoorNewWorldTween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4849.29883, 5.65138149, 719.611877)
										local args = {
											[1] = "DressrosaQuestProgress",
											[2] = "Detective"
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										wait(0.5)
										if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
											local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
											wait(.4)
											game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
										end
									end
								end
							end
						else
							local args = {
								[1] = "TravelDressrosa"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
					end
				end
			end
		end)
     end

    if World2 then
        Main:Toggle("Auto Third Sea",_G.AutoThirdSea,function(value)
            _G.AutoThirdSea = value
            StopTween(_G.AutoThirdSea)
        end)
    
        spawn(function()
            while wait() do
                if _G.AutoThirdSea then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                            _G.Auto_Farm_Level = false
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
                                TP(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                                if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                                end
                                wait(1.8)
                                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "rip_indra [Lv. 1500] [Boss]" then
                                            OldCFrameThird = v.HumanoidRootPart.CFrame
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                                v.HumanoidRootPart.CFrame = OldCFrameThird
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                    TP(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
    Main:Seperator("Mirage Island ")

local FM = Main:Label('...')
local Mirragecheck = Main:Label('...')

task.spawn(function()
            while task.wait() do
                pcall(function()
                    if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                        FM:Set("🌕: Full Moon 100%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                        FM:Set("🌖’ : Full Moon 75%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                        FM:Set("🌗“ : Full Moon 50%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                        FM:Set("🌘 : Full Moon 25%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                        FM:Set("🌘: Full Moon 15%")
                    else
                        FM:Set("🌑: Full Moon 0%")
                    end
                end)
            end
end)
      
spawn(function()
        pcall(function()
            while wait() do
    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
    Mirragecheck:Set(' : Mirage Island is Spawning')
    else
      Mirragecheck:Set(' : Mirage Island Not Found âŒ')
    end
            end
        end)
end)

Main:Toggle("Auto Mirage Island",false,function(value)
  _G.Mirage = value
StopTween(_G.Mirage)
  end)

Main:Toggle("Auto Mirage Island [HOP]",false,function(value)
  _G.MirageHop = value
  end)
Main:Toggle("Teleport To Gear",false,function(value)
  TP(game:GetService("Workspace").Map.MysticIsland:FindFirstChildOfClass("MeshPart").CFrame)
end)

spawn(function()
        pcall(function()
            while wait() do
             if _G.Mirage then
              if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                function toTargetWait(a)local b=(a.p-game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude;tweenrach=game:GetService('TweenService'):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"),TweenInfo.new(b/250,Enum.EasingStyle.Linear),{CFrame=a})tweenrach:Play()end;toTargetWait(workspace.Map.MysticIsland.PrimaryPart.CFrame*CFrame.new(0,250,0))
                else
game.StarterGui:SetCore("SendNotification", {
        Title = "NEVA HUB"; 
        Text = "Mirage not Found!"; 
        Icon = "rbxassetid://12258186601"; -- the image if u want. 
        Duration = 3; -- how long the notification should in secounds
        })
                if _G.MirageHop then
                wait(6)
                Hop()
                end          
            end
end
end
end)
end)

    if World2 then
        Main:Toggle("Auto Farm Factory",_G.AutoFactory,function(value)
            _G.AutoFactory = value
            StopTween(_G.AutoFactory)
        end)
    
        spawn(function()
            while wait() do
                pcall(function()
                    if _G.AutoFactory then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Core" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()         
                                        EquipWeapon(_G.SelectWeapon)           
                                        TP(CFrame.new(448.46756, 199.356781, -441.389252))                                  
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                    until v.Humanoid.Health <= 0 or _G.AutoFactory == false
                                end
                            end
                        else
                           TP(CFrame.new(448.46756, 199.356781, -441.389252))
                        end
                    end
                end)
            end
        end)
    end


Main:Seperator("Mastery")
    
    Main:Toggle("Auto Farm BF Mastery",_G.AutoFarmFruitMastery,function(value)
        _G.AutoFarmFruitMastery = value
        StopTween(_G.AutoFarmFruitMastery)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarmFruitMastery then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        UseSkill = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        StartMasteryFruitMagnet = false
                        UseSkill = false
                        CheckLevel()
                        repeat wait()
                            TP(CFrameQuest)
                        until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmFruitMastery
                        if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                            task.wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                            wait(0.5)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckLevel()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Ms then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                            repeat task.wait()
                                                if v.Humanoid.Health <= HealthMs then
                                                    AutoHaki()
                                                    EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                    TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    UseSkill = true
                                                else           
                                                    UseSkill = false 
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                    PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                end
                                                StartMasteryFruitMagnet = true
												game:GetService("VirtualUser"):CaptureController()
												game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                            until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            UseSkill = false
                                            StartMasteryFruitMagnet = false
                                            TP(CFrameMon)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                            StartMasteryFruitMagnet = false   
                            UseSkill = false 
                            TP(CFrameMon)
                            local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Ms) 
                            if Mob then
                                TP(Mob.HumanoidRootPart.CFrame * CFrame.new(5,35,5))
                            else
                                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
									task.wait()
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        while wait() do
            if UseSkill then
                pcall(function()
                    CheckLevel()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then                      
                            if _G.SkillZ then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                        
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX then          
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))               
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                          
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                wait(2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then   
                            if _G.SkillZ then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                        
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                wait(2)
								game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX then        
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))               
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC then 
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                          
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
							    if _G.SkillF then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
							end
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                            if _G.SkillZ and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1) then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                            if _G.SkillV then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                            end
                            if _G.SkillF then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
                            end
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal-Portal") then
                            if _G.SkillZ and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1) then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                            if _G.SkillZ then 
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillX then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                            end
                            if _G.SkillC then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                            end
                            if _G.SkillV then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                            end
                            if _G.SkillF then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                if UseSkill then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"Skill locked!") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end)
    end)
    
    spawn(function()
        pcall(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                if UseSkill then
                    local args = {
                        [1] = PosMonMasteryFruit.Position
                    }
                    game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                end
            end)
        end)
    end)
    
    Main:Toggle("Auto Farm Gun Mastery",_G.AutoFarmGunMastery,function(value)
        _G.AutoFarmGunMastery = value
        StopTween(_G.AutoFarmGunMastery)
    end)
    
  spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoFarmGunMastery then
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
						UseSkillGun = false 
                        StartMasteryGunMagnet = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						UseSkillGun = false 
                        StartMasteryGunMagnet = false
                        CheckLevel()
                        TP(CFrameQuest)
                        if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            task.wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckLevel()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                            pcall(function()
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms then
                                        repeat task.wait()
                                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                HealthMin = v.Humanoid.MaxHealth * _G.Kill_At/100
                                                if v.Humanoid.Health <= HealthMin then         
                                                    EquipWeapon(SelectToolWeaponGun)
                                                    TP(v.HumanoidRootPart.CFrame * MethodFarm)
							                        v.Humanoid.JumpPower = 0
							                        v.Humanoid.WalkSpeed = 0                                                    
												    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                                    v.Head.CanCollide = false                                                
                                                    local args = {
                                                        [1] = v.HumanoidRootPart.Position,
                                                        [2] = v.HumanoidRootPart
                                                    }
                                                    game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
												    UseSkillGun = true 
                                                else
												    UseSkillGun = false 
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
							                        v.Humanoid.JumpPower = 0
							                        v.Humanoid.WalkSpeed = 0         
												    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false               
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    TP(v.HumanoidRootPart.CFrame * MethodFarm)
													game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                                StartMasteryGunMagnet = true
												wait(0.2)
                                                PosMonMasteryGun = v.HumanoidRootPart.CFrame
										        game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            else
												UseSkillGun = false 
                                                StartMasteryGunMagnet = false
                                                TP(CFrameMon)
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            end
                                        until v.Humanoid.Health <= 0 or _G.AutoFarmGunMastery == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMasteryGunMagnet = false
					                   	UseSkillGun = false 
                                    end
                                end
                            end)
                        else
                            StartMasteryGunMagnet = false
							UseSkillGun = false 
                            TP(CFrameMon)
                            local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Ms) 
                            if Mob then
                                TP(Mob.HumanoidRootPart.CFrame * CFrame.new(5,35,5))
                            else
                                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                                end
                            end
                        end 
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        while wait(1) do
            if UseSkillGun then
                pcall(function()
                    CheckLevel()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do                                                 
                            if _G.SkillGunZ then
                                local args = {
                                    [1] = PosMonMasteryGun.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                        
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                            end
                            if _G.SkillGunX then          
                                local args = {
                                    [1] = PosMonMasteryGun.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))               
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                        end
                    end
                end)
            end
        end
    end)

    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                if UseSkillGun then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"Skill locked!") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end)
    end)
    
    spawn(function()
        pcall(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                if UseSkillGun then
                    local args = {
                        [1] = PosMonMasteryGun.Position
                    }
                    game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.Gun.Value].RemoteEvent:FireServer(unpack(args))
                end
            end)
        end)
    end)

  _G.Kill_At = 45
    Main:Slider("Kill At %",1,100,45,function(value)
        _G.Kill_At = value
    end)
    

  Main:Seperator("Mastety Skill ")
    
    Main:Toggle("Skill Z",true,function(value)
        _G.SkillZ = value
    end)
    
    Main:Toggle("Skill X",true,function(value)
        _G.SkillX = value
    end)
    
    Main:Toggle("Skill C",true,function(value)
        _G.SkillC = value
    end)
    
    Main:Toggle("Skill V",true,function(value)
        _G.SkillV = value
    end)

    Main:Toggle("Skill F",true,function(value)
        _G.SkillF = value
    end)

  Main:Seperator("\\\\\  Mastery Skill Gun  //")
    
    Main:Toggle("Skill Z",true,function(value)
        _G.SkillGunZ = value
    end)
    
    Main:Toggle("Skill X",true,function(value)
        _G.SkillGunX = value
    end)
    
    Main:Seperator("Bosses")

   local Boss = {}
    
    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if string.find(v.Name, "Boss") then
            if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                else
                table.insert(Boss, v.Name)
            end
        end
    end

 local BossName = Main:Dropdown("Select Boss",Boss,function(value)
        SelectBoss = value
    end)
    
    Main:Button("Refresh Boss",function()
        BossName:Clear()
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if string.find(v.Name, "Boss") then
                BossName:Add(v.Name) 
            end
        end
    end)
	
	Main:Toggle("Auto Farm Boss",_G.AutoFarmBoss,function(value)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        _G.AutoFarmBoss = value
        StopTween(_G.AutoFarmBoss)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarmBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,20,5))
                        end
                    end
                end)
            end
        end
    end)

Main:Toggle("Auto Fram Boss Quest",false,function(Value)
   wait(.1)
  local args = {
     [1] = "AbandonQuest"
  }
  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
   FarmBoss = Value
   while FarmBoss do
     wait(0.1)
     CheckLevelBoss()
     if SelectBoss == "Don Swan [Lv. 1000] [Boss]" or SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or SelectBoss == "Saber Expert [Lv. 200] [Boss]" or SelectBoss == "Mob Leader [Lv. 120] [Boss]" or SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
        if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
           for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
              if FarmBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                 TP(v.HumanoidRootPart.CFrame,TweenSpeed)
                 repeat
                    wait() 
                    if FarmBoss and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                       pcall(function() 
                           AutoHaki()
                           v.HumanoidRootPart.Transparency = 1
                          v.HumanoidRootPart.CanCollide = false
                          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                          TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * MethodFarm)
                          EquipWeapon(_G.SelectWeapon)
                          RigC.activeController.hitboxMagnitude = 80
                          Rig.CameraShakeInstance.CameraShakeState = {FadingIn = 3,FadingOut =  2,Sustained = 0,Inactive = 1} 
                          RigC.activeController.timeToNextAttack = .5
                          VirtualUser:CaptureController()
                          VirtualUser:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
                       end)
                    end
                 until not FarmBoss or not v.Parent or v.Humanoid.Health <= 0
              end
           end
        else
           TP(CFrameBoss,TweenSpeed)
        end
     elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
        if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
           for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
              if FarmBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                 TP(v.HumanoidRootPart.CFrame)
                 repeat
                    wait() 
                    pcall(function() 
                       AutoHaki()
                       v.HumanoidRootPart.Transparency = 1
                       v.HumanoidRootPart.CanCollide = false
                       v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                       TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * MethodFarm)
                       EquipWeapon(_G.SelectWeapon)
                       RigC.activeController.hitboxMagnitude = 80
                       Rig.CameraShakeInstance.CameraShakeState = {FadingIn = 3,FadingOut =  2,Sustained = 0,Inactive = 1} 
                       RigC.activeController.timeToNextAttack = .5
                    end)
                 until not FarmBoss or not v.Parent or v.Humanoid.Health <= 0
              end
           end
        else
           TP(CFrameBoss,TweenSpeed)
        end
       elseif SelectBoss == "Rip_indra [Lv. 1500] [Boss]" then
           if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
              for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                 if FarmBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                    TP(v.HumanoidRootPart.CFrame)
                    repeat
                       wait() 
                       pcall(function() 
                          AutoHaki()
                          v.HumanoidRootPart.Transparency = 1
                          v.HumanoidRootPart.CanCollide = false
                          v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                          TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * MethodFarm)
                          EquipWeapon(_G.SelectWeapon)
                       end)
                    until not FarmBoss or not v.Parent or v.Humanoid.Health <= 0
                 end
              end
           else
              TP(CFrameBoss,TweenSpeed)
           end
       elseif SelectBoss == "Longma [Lv. 2000] [Boss]" then
           if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
              for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                 if FarmBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == MsBoss then
                    TP(v.HumanoidRootPart.CFrame)
                    repeat
                       wait() 
                       pcall(function() 
                          AutoHaki()
                          v.HumanoidRootPart.Transparency = 1
                          v.HumanoidRootPart.CanCollide = false
                          v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                          TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * MethodFarm)
                          EquipWeapon(_G.SelectWeapon)
                       end)
                    until not FarmBoss or not v.Parent or v.Humanoid.Health <= 0
                 end
              end
           else
              TP(CFrameBoss,TweenSpeed)
           end
     else
        if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) or game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss) then
           if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
              CheckLevelBoss()
              TP(CFrameQuestBoss,TweenSpeed)
              wait(1.5)
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuestBoss, LevelQuestBoss)
              wait(1)
              TP(CFrameBoss,TweenSpeed)
           elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
              for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                 if FarmBoss and v.Humanoid.Health > 0 and v.Name == MsBoss then
                    TP(CFrameBoss,TweenSpeed)
                    repeat
                       wait() 
                       pcall(function() 
                       AutoHaki()
                       v.HumanoidRootPart.Transparency = 1
                          v.HumanoidRootPart.CanCollide = false
                          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                          TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * MethodFarm)
                          EquipWeapon(_G.SelectWeapon)
                       end)
                    until not FarmBoss or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                 end
              end
              TP(CFrameBoss,TweenSpeed)
           end
        end
     end
  end
end)
    
    Main:Toggle("Auto Farm All Boss",_G.AutoAllBoss,function(value)
        _G.AutoAllBoss = value
        StopTween(_G.AutoAllBoss)
    end)
    
    Main:Toggle("Auto Farm All Boss Hop",_G.AutoAllBossHop,function(value)
        _G.AutoAllBossHop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoAllBoss then
                pcall(function()
                    for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                        if string.find(v.Name,"Boss") then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until v.Humanoid.Health <= 0 or _G.AutoAllBoss == false or not v.Parent
                            end
                        else
                            if _G.AutoAllBossHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)

if World2 then
   Main:Seperator("Ectoplasm ")

    local CheckingEctoplasm = Main:Label("")

spawn(function()
        pcall(function()
            while wait() do
       CheckingEctoplasm:Set("Checking Ectoplasm : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Check").." Ectoplasm")
     end
   end)
 end)

Main:Toggle("Auto Ectoplasm", false, function(value)
    _G.AutoEctoplasm = value
    StopTween(_G.AutoEctoplasm)
end)

spawn(function()
        while wait() do 
            if _G.AutoEctoplasm then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Engineer [Lv. 1275]" or v.Name == "Ship Steward [Lv. 1300]" or v.Name == "Ship Officer [Lv. 1325]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        EctoplasmMon = v.HumanoidRootPart.CFrame
                                        StartEctoplasmMagnet = true
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until not _G.AutoEctoplasm or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
						end
                        else
                        StartEctoplasmMagnet = false
                        local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if Distance > 18000 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
						end
			            TP(CFrame.new(-9515.751953125, 144.33457946777344, 5787.08935546875))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Ship Deckhand [Lv. 1250]" then
                            TP(v.HumanoidRootPart.CFrame * MethodFarm)                         
                            elseif v.Name == "Ship Engineer [Lv. 1275]" then
                            TP(v.HumanoidRootPart.CFrame * MethodFarm)                         
                            elseif v.Name == "Ship Steward [Lv. 1300]" then
                            TP(v.HumanoidRootPart.CFrame * MethodFarm)                         
                            elseif v.Name == "Ship Officer [Lv. 1325]" then
                            TP(v.HumanoidRootPart.CFrame * MethodFarm)                         
                                                     end
                                                 end
                                             end
                                         end)
                                     end
                                 end
                             end)

	Main:Toggle("Auto Buy Bizarre Rifle",_G.AutoBuyBizarreRifle,function(A)
		if World2 then
			AutoBuyBizarreRifle = A
		end
	end)
	Main:Toggle("Auto Buy Ghoul Mask",_G.AutoBuyGhoulMask,function(A)
		if World2 then
			AutoBuyGhoulMask = A
		end
	end)
	Main:Toggle("Auto Buy Midnight Blade",_G.AutoBuyMidnightBlade,function(A)
		if World2 then
			AutoBuyMidnightBlade = A
		end
	end)
	spawn(function()
		while wait() do
			if AutoBuyBizarreRifle then
				local args = {
					[1] = "Ectoplasm",
					[2] = "Buy",
					[3] = 1
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
			if AutoBuyGhoulMask then
				local args = {
					[1] = "Ectoplasm",
					[2] = "Buy",
					[3] = 2
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
			if AutoBuyMidnightBlade then
				local args = {
					[1] = "Ectoplasm",
					[2] = "Buy",
					[3] = 3
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
		end
	end)
end
function MaterialMon()
			if _G.SelectMaterial == "Radioactive Material" then
				MMon = "Factory Staff [Lv. 800]"
				MPos = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312)
				SP = "Bar"
			elseif _G.SelectMaterial == "Mystic Droplet" then
				MMon = "Water Fighter [Lv. 1450]"
				MPos = CFrame.new(-3214.218017578125, 298.69952392578125, -10543.685546875)
				SP = "ForgottenIsland"
			elseif _G.SelectMaterial == "Magma Ore" then
				if game.PlaceId == 2753915549 then
					MMon = "Military Spy [Lv. 325]"
					MPos = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875)
					SP = "Magma"
				elseif game.PlaceId == 4442272183 then
					MMon = "Lava Pirate [Lv. 1200]"
					MPos = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375)
					SP = "CircleIslandFire"
				end
			elseif _G.SelectMaterial == "Angel Wings" then
				MMon = "Royal Soldier [Lv. 550]"
				MPos = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375)
				SP = "Sky2"
			elseif _G.SelectMaterial == "Leather" then
				if game.PlaceId == 2753915549 then
					MMon = "Pirate [Lv. 36]"
					MPos = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625)
					SP = "Pirate"
				elseif game.PlaceId == 4442272183 then
					MMon = "Marine Captain [Lv. 900]"
					MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
					SP = "Greenb"
				elseif game.PlaceId == 7449423635 then
					MMon = "Jungle Pirate [Lv. 1900]"
					MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
					SP = "PineappleTown"
				end
			elseif _G.SelectMaterial == "Scrap Metal" then
				if game.PlaceId == 2753915549 then
					MMon = "Brute [Lv. 45]"
					MPos = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125)
					SP = "Pirate"
				elseif game.PlaceId == 4442272183 then
					MMon = "Mercenary [Lv. 725]"
					MPos = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125)
					SP = "DressTown"
				elseif game.PlaceId == 7449423635 then
					MMon = "Pirate Millionaire [Lv. 1500]"
					MPos = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875)
					SP = "Default"
				end
			elseif _G.SelectMaterial == "Demonic Wisp" then
				MMon = "Demonic Soul [Lv. 2025]"
				MPos = CFrame.new(-9503.388671875, 172.139892578125, 6143.0634765625)
				SP = "HauntedCastle"
			elseif _G.SelectMaterial == "Vampire Fang" then
				MMon = "Vampire [Lv. 975]"
				MPos = CFrame.new(-5999.20458984375, 6.437741279602051, -1290.059326171875)
				SP = "Graveyard"
			elseif _G.SelectMaterial == "Conjured Cocoa" then
				MMon = "Chocolate Bar Battler [Lv. 2325]"
				MPos = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375)
				SP = "Chocolate"
			elseif _G.SelectMaterial == "Dragon Scale" then
				MMon = "Dragon Crew Warrior [Lv. 1575]"
				MPos = CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125)
				SP = "Hydra1"
			elseif _G.SelectMaterial == "Gunpowder" then
				MMon = "Pistol Billionaire [Lv. 1525]"
				MPos = CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875)
				SP = "Default"
			elseif _G.SelectMaterial == "Fish Tail" then
				MMon = "Fishman Captain [Lv. 1800]"
				MPos = CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875)
				SP = "PineappleTown"
			elseif _G.SelectMaterial == "Mini Tusk" then
				MMon = "Mythological Pirate [Lv. 1850]"
				MPos = CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125)
				SP = "BigMansion"
			end
		end

local MaterialMethod
if World1 then
	MaterialMethod = {
 "Magma Ore",
 "Angel Wings",
 "Leather",
 "Scrap Metal",
 "Radioactive Material",
 }
elseif World2 then
MaterialMethod = {
 "Mystic Droplet",
 "Magma Ore",
 "Leather",
 "Scrap Metal",
 "Demonic Wisp",
 "Vampire Fang",
 "Radioactive Material",
 }
 elseif World3 then
MaterialMethod = {
 "Leather",
 "Scrap Metal",
 "Vampire Fang",
 "Conjured Cocoa",
 "Dragon Scale",
 "Gunpowder",
 "Fish Tail",
 "Mini Tusk",
 "Radioactive Material",
 }
 end
 
Main:Seperator("  Materials ")
 
 local SelectMaterial = Main:Dropdown("Select Material",MaterialMethod,function(value)
 _G.SelectMaterial = value
end)

Main:Toggle("Auto Farm Material",_G.AutoFarmMaterial,function(t)
			_G.AutoFarmMaterial = t
			StopTween(_G.AutoFarmMaterial)
end)
		
spawn(function()
			while task.wait() do
				pcall(function()
					if _G.AutoFarmMaterial and _G.SelectMaterial then
						MaterialMon()
						if game.Workspace.Enemies:FindFirstChild(MMon) then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == MMon then
									if v:FindFirstChild("HumanoidRootPart") then
										repeat task.wait()
											AutoHaki()
											EquipWeapon(_G.SelectWeapon)
												PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.Head.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												StartMagnet = true
												TP(v.HumanoidRootPart.CFrame * MethodFarm)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											MatMon = v.Name
											MatPos = v.HumanoidRootPart.CFrame
										until not _G.AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							end
						else
							TP(MPos)
						end
					end
				end)
			end
end)

spawn(function()
			while task.wait() do
				if _G.AutoFarmMaterial then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == MMon and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = MatPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
end)
if World3 then

Weapon:Seperator("Dual Cursed Katana")

Weapon:Toggle('Auto Cursed Dual Katana',false, function(autocdkf)
  Auto_Cursed_Dual_Katana = autocdkf
  StopTween(Auto_Cursed_Dual_Katana)
  end)
spawn(function()
  while wait() do
  pcall(function()
    if Auto_Cursed_Dual_Katana then
    if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
    if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
    EquipTool("Tushita")

    end
    elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
    EquipTool("Yama")

    end
    end
    else
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
    end
    end
    end)
  end
  end)
spawn(function()
  while wait() do
  pcall(function()
    if Auto_Cursed_Dual_Katana then
    if GetMaterial("Alucard Fragment") == 0 then
    Auto_Quest_Yama_1 = true
    Auto_Quest_Yama_2 = false
    Auto_Quest_Yama_3 = false
    Auto_Quest_Tushita_1 = false
    Auto_Quest_Tushita_2 = false
    Auto_Quest_Tushita_3 = false
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
    elseif GetMaterial("Alucard Fragment") == 1 then
    Auto_Quest_Yama_1 = false
    Auto_Quest_Yama_2 = true
    Auto_Quest_Yama_3 = false
    Auto_Quest_Tushita_1 = false
    Auto_Quest_Tushita_2 = false
    Auto_Quest_Tushita_3 = false
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
    elseif GetMaterial("Alucard Fragment") == 2 then
    Auto_Quest_Yama_1 = false
    Auto_Quest_Yama_2 = false
    Auto_Quest_Yama_3 = true
    Auto_Quest_Tushita_1 = false
    Auto_Quest_Tushita_2 = false
    Auto_Quest_Tushita_3 = false
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
    elseif GetMaterial("Alucard Fragment") == 3 then
    Auto_Quest_Yama_1 = false
    Auto_Quest_Yama_2 = false
    Auto_Quest_Yama_3 = false
    Auto_Quest_Tushita_1 = true
    Auto_Quest_Tushita_2 = false
    Auto_Quest_Tushita_3 = false
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
    elseif GetMaterial("Alucard Fragment") == 4 then
    Auto_Quest_Yama_1 = false
    Auto_Quest_Yama_2 = false
    Auto_Quest_Yama_3 = false
    Auto_Quest_Tushita_1 = false
    Auto_Quest_Tushita_2 = true
    Auto_Quest_Tushita_3 = false
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
    elseif GetMaterial("Alucard Fragment") == 5 then
    Auto_Quest_Yama_1 = false
    Auto_Quest_Yama_2 = false
    Auto_Quest_Yama_3 = false
    Auto_Quest_Tushita_1 = false
    Auto_Quest_Tushita_2 = false
    Auto_Quest_Tushita_3 = true
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
    elseif GetMaterial("Alucard Fragment") == 6 then
    if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
    Auto_Quest_Yama_1 = false
    Auto_Quest_Yama_2 = false
    Auto_Quest_Yama_3 = false
    Auto_Quest_Tushita_1 = false
    Auto_Quest_Tushita_2 = false
    Auto_Quest_Tushita_3 = false
    if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" or v.Name == "Cursed Skeleton [Lv. 2200]" then
    if v.Humanoid.Health > 0 then
    EquipWeapon(_G.SelectWeapon)
    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
    v.HumanoidRootPart.Transparency = 1
    v.Humanoid.JumpPower = 0
    v.Humanoid.WalkSpeed = 0
    v.HumanoidRootPart.CanCollide = false
    v.Humanoid:ChangeState(11)
    v.Humanoid:ChangeState(14)
    FarmPos = v.HumanoidRootPart.CFrame
    MonFarm = v.Name
    Click()
    end
    end
    end
    end
    else
      if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
    wait(1)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
    wait(1)
    TP(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
    wait(1.5)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
    wait(1.5)
    TP(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
    else
      TP(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
    end
    end
    end
    end
    end)
  end
  end)

spawn(function()
  while wait() do
  if Auto_Quest_Yama_1 then
  pcall(function()
    if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate [Lv. 1850]") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Mythological Pirate [Lv. 1850]" then
    repeat wait()
    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
    end
    end
    else
      TP(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
    end
    end)
  end
  end
  end)

spawn(function()
  while wait() do
  pcall(function()
    if Auto_Quest_Yama_2 then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v:FindFirstChild("HazeESP") then
    v.HazeESP.Size = UDim2.new(50,50,50,50)
    v.HazeESP.MaxDistance = "inf"
    end
    end
    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
    if v:FindFirstChild("HazeESP") then
    v.HazeESP.Size = UDim2.new(50,50,50,50)
    v.HazeESP.MaxDistance = "inf"
    end
    end
    end
    end)
  end
  end)

spawn(function()
  while wait() do
  pcall(function()
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
    v.HumanoidRootPart.CFrame = PosMonsEsp
    v.HumanoidRootPart.CanCollide = false
    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
    if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
    local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
    vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
    vc.Velocity = Vector3.new(0, 0, 0)
    end
    end
    end
    end)
  end
  end)

spawn(function()
  while wait() do
  if Auto_Quest_Yama_2 then
  pcall(function()
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v:FindFirstChild("HazeESP") then
    repeat wait()
    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
    TP(V.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
    else
      EquipWeapon(_G.SelectWeapon)
    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
    v.HumanoidRootPart.Transparency = 1
    v.Humanoid.JumpPower = 0
    v.Humanoid.WalkSpeed = 0
    v.HumanoidRootPart.CanCollide = false
    v.Humanoid:ChangeState(11)
    v.Humanoid:ChangeState(14)
    FarmPos = v.HumanoidRootPart.CFrame
    MonFarm = v.Name
    Click()
    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    end
    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
    else
      for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
    if y:FindFirstChild("HazeESP") then
    if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
    TP(y.HumanoidRootPart.CFrameMon* CFrame.new(0,30,0))
    else
      TP(y.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
    end
    end
    end
    end
    end
    end)
  end
  end
  end)

spawn(function()
  while wait() do
  if Auto_Quest_Yama_3 then
  pcall(function()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
    TP(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
    elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
    repeat wait()
    if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Hell's Messenger [Lv. 2200] [Boss]" then
    if v.Humanoid.Health > 0 then
    repeat wait()
    EquipWeapon(_G.SelectWeapon)
    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
    v.HumanoidRootPart.Transparency = 1
    v.Humanoid.JumpPower = 0
    v.Humanoid.WalkSpeed = 0
    v.HumanoidRootPart.CanCollide = false
    v.Humanoid:ChangeState(11)
    v.Humanoid:ChangeState(14)
    FarmPos = v.HumanoidRootPart.CFrame
    MonFarm = v.Name
    Click()
    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
    end
    end
    end
    else
      wait(5)
    TP(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
    wait(1.5)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
    wait(1.5)
    TP(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
    wait(1.5)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
    wait(1.5)
    TP(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
    wait(1.5)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
    wait(1.5)
    TP(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
    end
    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
    else
      if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" then
    if v.Humanoid.Health > 0 then
    repeat wait()
    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
    end
    end
    end
    else
      TP(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
    end
    else
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
    end
    end
    end)
  end
  end
  end)
spawn(function()
  while wait() do
  if Auto_Quest_Tushita_1 then
  TP(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
  wait(5)
  TP(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
  wait(5)
  TP(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))
  end
  end
  end)
spawn(function()
  while wait() do
  if Auto_Quest_Tushita_2 then
  pcall(function()
    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
    repeat wait()
    EquipWeapon(_G.SelectWeapon)
    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
    v.HumanoidRootPart.Transparency = 1
    v.Humanoid.JumpPower = 0
    v.Humanoid.WalkSpeed = 0
    v.HumanoidRootPart.CanCollide = false
    v.Humanoid:ChangeState(11)
    v.Humanoid:ChangeState(14)
    FarmPos = v.HumanoidRootPart.CFrame
    MonFarm = v.Name
    Click()
    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
    end
    end
    end
    else
      TP(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
    end
    end)
  end
  end
  end)
spawn(function()
  while wait() do
  if Auto_Quest_Tushita_3 then
  pcall(function()
    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
    if v.Humanoid.Health > 0 then
    repeat wait()
    EquipWeapon(_G.SelectWeapon)
    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
    v.HumanoidRootPart.Transparency = 1
    v.Humanoid.JumpPower = 0
    v.Humanoid.WalkSpeed = 0
    v.HumanoidRootPart.CanCollide = false
    v.Humanoid:ChangeState(11)
    v.Humanoid:ChangeState(14)
    FarmPos = v.HumanoidRootPart.CFrame
    MonFarm = v.Name
    Click()
    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
    end
    end
    end
    else
      TP(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
    end
    elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
    repeat wait()
    if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Heaven's Guardian [Lv. 2200] [Boss]" then
    if v.Humanoid.Health > 0 then
    repeat wait()
    EquipWeapon(_G.SelectWeapon)
    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
    v.HumanoidRootPart.Transparency = 1
    v.Humanoid.JumpPower = 0
    v.Humanoid.WalkSpeed = 0
    v.HumanoidRootPart.CanCollide = false
    v.Humanoid:ChangeState(11)
    v.Humanoid:ChangeState(14)
    FarmPos = v.HumanoidRootPart.CFrame
    MonFarm = v.Name
    Click()
    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
    v.Humanoid.Animator:Destroy()
    end
    until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
    end
    end
    end
    else
      wait(5)
    TP(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
    wait(1.5)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
    wait(1.5)
    TP(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
    wait(1.5)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
    wait(1.5)
    TP(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
    wait(1.5)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
    wait(1.5)
    TP(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
    end
    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or GetMaterial("Alucard Fragment") == 6
    end
    end)
  end
  end
end)

_G.SBringMobs = true

      task.spawn(function()
            while task.wait() do
                if _G.SBringMobs then
                    pcall(function()
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == Ms  and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= bringfrec then
                                if InMyNetWork(v.HumanoidRootPart) then
                                    v.HumanoidRootPart.CFrame = FarmPos
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)

        task.spawn(function()
            while true do wait()
                if setscriptable then
                    setscriptable(game.Players.LocalPlayer,"SimulationRadius",true)
                end
                if sethiddenproperty then
                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                end
            end
        end)
        
function InMyNetWork(object)
            if isnetworkowner then
                return isnetworkowner(object)
            else
                if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= bringfrec then
                    return true
                end
                return false
            end
        end

Weapon:Seperator("Soul Guitar")

        Weapon:Toggle('Auto Soul Guitar', false, function(soulguiutarf)
                AutoSoulGuitar = soulguiutarf
                StopTween(AutoSoulGuitar)
            end)
            spawn(function()
                while task.wait() do
                    pcall(function()
                        if AutoSoulGuitar then
                            if GetWeaponInventory("Soul Guitar") == false then
                                if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 then
                                    if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
                                    else
                                        if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
                                            if game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
                                                Quest2 = true
                                                repeat task.wait() 
                                                    TP(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875)) 
                                                until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not AutoSoulGuitar
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
                                                wait(1)
                                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
                                                wait(1)
                                            elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
                                                if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
                                                    Quest4 = true
                                                    repeat task.wait() 
                                                        TP(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625)) 
                                                    until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not AutoSoulGuitar
                                                    wait(1)
                                                    TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
                                                    wait(1)
                                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
                                                    wait(1)
                                                    TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
                                                    wait(1)
                                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                                    wait(1)
                                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                                    wait(1)
                                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                                    wait(1)
                                                    TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
                                                    wait(1)
                                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                                    wait(1)
                                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                                    wait(1)
                                                    TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
                                                    wait(1)
                                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
                                                    wait(1)
                                                    TP(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
                                                    wait(1)
                                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                                    wait(1)
                                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                                    wait(1)
                                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                                else
                                                    Quest3 = true
                                                    --Not Work Yet
                                                end
                                            else
                                                if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
                                                    local args = {
                                                        [1] = "GuitarPuzzleProgress",
                                                        [2] = "Ghost"
                                                    }
            
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                                if game.Workspace.Enemies:FindFirstChild("Living Zombie [Lv. 2000]") then
                                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                            if v.Name == "Living Zombie [Lv. 2000]" then
                                                                EquipWeapon(_G.SelectWeapon)
                                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                                v.HumanoidRootPart.Transparency = 1
                                                                v.Humanoid.JumpPower = 0
                                                                v.Humanoid.WalkSpeed = 0
                                                                v.HumanoidRootPart.CanCollide = false
                                                                v.Humanoid:ChangeState(11)
                                                                v.Humanoid:ChangeState(14)
                                                                FarmPos = v.HumanoidRootPart.CFrame
                                                                MonFarm = v.Name
                                                                Click()
                                                            end
                                                        end
                                                    end
                                                else
                                                    TP(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                                end
                                            end
                                        else    
                                            if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
                                                print("Go to Grave")
                                                TP(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                            elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
                                                print("Wait Next Night")
                                            else
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
                                            end
                                        end
                                    end
                                else
                                    TP(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                                end
                            end
                        end
                    end)
                end
            end)
            Weapon:Toggle('Auto Try Luck',TryLuck, function(gravefunc)
                TryLuck = gravefunc
            end)
            Weapon:Toggle('Auto Pray',TryLuck, function(prayfunc)
                Pray = prayfunc
            
            end)
            spawn(function()
                while wait(.1) do
                    if TryLuck then
                        TP(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-09, 1, -8.24392288e-09, -0.18326205, -8.43218029e-09, -0.983064115))
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",1)
                    end
                end
            end)
            
            spawn(function()
                while wait(.1) do
                    if Pray then
                        TP(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-09, 1, -8.24392288e-09, -0.18326205, -8.43218029e-09, -0.983064115))
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2)
                    end
                end
            end)
            end

    Weapon:Seperator("  Dought ")

    local MobKilled = Weapon:Label("Killed")
    
    spawn(function()
        while wait() do
            pcall(function()
                if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                    MobKilled:Set("Need Kill Mods : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                    MobKilled:Set("Need Kill Mods : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                    MobKilled:Set("Need Kill Mods : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
                else
                    MobKilled:Set("Boss Is Spawning")
                end
            end)
        end
    end)

Weapon:Toggle("Auto Farm Cake Prince",_G.AutoDoughtBoss,function(value)
        _G.AutoDoughtBoss = value
        StopTween(_G.AutoDoughtBoss)
    end)
    
        spawn(function()
            while wait() do
                if _G.AutoDoughtBoss then
                    pcall(function()
                        if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then   
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                                    if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
                                        repeat wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.CanCollide = false
                                            TP(v.HumanoidRootPart.CFrame * MethodFarm)                         
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until _G.AutoDoughtBoss == false or not v.Parent or v.Humanoid.Health <= 0
                                    end    
                                end    
                            else
                                TP(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
                            end
                        else
                            if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                                    if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
                                        repeat wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            StartCakeMagnet = true
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                            POSCAKE = v.HumanoidRootPart.CFrame
                                            TP(v.HumanoidRootPart.CFrame * MethodFarm)                         
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until _G.AutoDoughtBoss == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            else
                                StartCakeMagnet = false
                                TP(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
                            end
                        end
                    end)
                end
            end
        end)

Weapon:Toggle("Auto Spawn Cake Prince",true,function(value)
        _G.Auto_Spawn_Cake_Prince = value
    end)

        spawn(function()
            while wait() do
                if _G.Auto_Spawn_Cake_Prince then
                    local args = {
                        [1] = "CakePrinceSpawner",
                        [2] = true
                    }
    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                    
                    local args = {
                        [1] = "CakePrinceSpawner"
                    }
    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end)

Weapon:Toggle("Auto Dough King",_G.Auto_Open_Dough_Dungeo,function(value)
_G.Auto_Open_Dough_Dungeon = value
    StopTween(_G.Auto_Open_Dough_Dungeon)
end)

	spawn(function()
		while wait() do
			if _G.Auto_Open_Dough_Dungeon then
				pcall(function()
					if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
						if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"),"Where") then
							warn("Not Have Enough Material")
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
						if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"Do you want to open the portal now?") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
						else
							if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
									if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
										repeat wait()
											AutoHaki()
											EquipWeapon(_G.SelectWeapon)
											StartCakeMagnet = true
											v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
											POSCAKE = v.HumanoidRootPart.CFrame
											TP(v.HumanoidRootPart.CFrame * MethodFarm)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										until _G.Auto_Open_Dough_Dungeon == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								StartCakeMagnet = false
								TP(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
							end
						end						
					elseif game.ReplicatedStorage:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
								if v.Name == "Dough King [Lv. 2300] [Raid Boss]" then
									repeat wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeapon)
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										v.HumanoidRootPart.CanCollide = false
										TP(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until _G.Auto_Open_Dough_Dungeon == false or not v.Parent or v.Humanoid.Health <= 0
								end    
							end    
						else
							TP(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or game.Players.LocalPlayer.Character:FindFirstChild("Red Key") then
						local args = {
							[1] = "CakeScientist",
							[2] = "Check"
						}

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													AutoHaki()
													EquipWeapon(_G.SelectWeapon)
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
													TP(v.HumanoidRootPart.CFrame * MethodFarm)
													game:GetService("VirtualUser"):CaptureController()
													game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
													sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
												until _G.Auto_Open_Dough_Dungeon == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
											end
										end
									end
								else
									if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
										TP(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * MethodFarm)
									elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
										TP(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * MethodFarm)
									elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
										TP(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * MethodFarm)
									end
								end                    
							end
						else
							wait(0.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						end
					end
				end)
			end
		end
	end)

if World3 then
	Weapon:Seperator("Tushita ")

	Weapon:Toggle("Auto Tushita",_G.AutoEnmaSword,function(v)
		_G.AutoTushitaSword = v
        StopTween(_G.AutoTushitaSword)
	end)

	Weapon:Toggle("Auto Tushita Hop",_G.AutoEnmaHop,function(v)
		HopFunction = v
	end)
	
	spawn(function()
		while wait(.1) do
			if _G.AutoTushitaSword then
				autoTushita()
			end
		end
	end)

	function enemyrip()
		repeat 
			TP(CFrame.new(-5332.30371, 423.985413, -2673.48218)) 
			wait() 
		until _G.StopTween == true or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5332.30371, 423.985413, -2673.48218)).Magnitude <= 10
		wait()
		if game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
			local mobs = game.Workspace.Enemies:GetChildren()
			for i,v in pairs(mobs) do
				if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
					v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					return v
				end
			end
		end
		return game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")
	end
	function enemyEliteBoss()
		if game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") then
			local mobs = game.Workspace.Enemies:GetChildren()
			for i,v in pairs(mobs) do
				if v.Name == "Deandre [Lv. 1750]" or v.Name == "Diablo [Lv. 1750]" or v.Name == "Urban [Lv. 1750]"  and v:IsA("Model") and v:FindFirstChild("Humanoid") and
					v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					return v
				end
			end
		end
		return game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")
	end
	function enemylongma()
		repeat 
			TP(CFrame.new(-10171.7051, 406.981995, -9552.31738)) 
			wait() 
		until _G.StopTween == true or not _G.AutoTushitaSword or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10171.7051, 406.981995, -9552.31738)).Magnitude <= 10
		if game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
			local mobs = game.Workspace.Enemies:GetChildren()
			for i,v in pairs(mobs) do
				if v.Name == "Longma [Lv. 2000] [Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
					v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					return v
				end
			end
		end
		return game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]")
	end
	
	_G.checkup = true
	function autoTushita()
		if _G.checkup and not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
			if game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]") then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					repeat 
						TP(CFrame.new(-5420.49219, 314.446045, -2823.07373)) 
						wait() 
					until _G.StopTween == true or not _G.AutoTushitaSword or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
					wait(1.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
					wait(1)
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					CheckLevel()
					pcall(function()
						EquipWeapon(_G.SelectWeapon)
						pcall(function()
							local v = enemyEliteBoss()
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
							TP(v.HumanoidRootPart.CFrame * MethodFarm) 
						end)
					end)
				end
			elseif HopFunction then
				TP(CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554))				
				wait(1)
				HopServer()
			end
		elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
			_G.checkup = false
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
			wait(0.5)
			repeat 
				TP(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) 
				wait() 
			until _G.StopTween == true or not _G.AutoTushitaSword or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
			wait(0.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
			wait(0.5)
			repeat 
				TP(CFrame.new(-5414.41357, 309.865753, -2212.45776)) 
				wait() 
			until _G.StopTween == true or not _G.AutoTushitaSword or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
			wait(0.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
			wait(0.5)
			repeat 
				TP(CFrame.new(-4971.47559, 331.565765, -3720.02954)) 
				wait() 
			until _G.StopTween == true or not _G.AutoTushitaSword or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
			wait(0.5)
			EquipWeapon("God's Chalice")
			wait(0.5)
			repeat 
				TP(CFrame.new(-5560.27295, 313.915466, -2663.89795)) 
				wait() 
			until _G.StopTween == true or not _G.AutoTushitaSword or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5560.27295, 313.915466, -2663.89795)).Magnitude <= 10
			wait(0.5)
			repeat 
				TP(CFrame.new(-5561.37451, 313.342529, -2663.49487)) 
				wait() 
			until _G.StopTween == true or not _G.AutoTushitaSword or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5561.37451, 313.342529, -2663.49487)).Magnitude <= 10
			wait(1)
			repeat 
				TP(CFrame.new(5154.17676, 141.786423, 911.046326)) 
				wait() 
			until _G.StopTween == true or not _G.AutoTushitaSword or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5154.17676, 141.786423, 911.046326)).Magnitude <= 10
			wait(0.2)
			repeat 
				TP(CFrame.new(5148.03613, 162.352493, 910.548218)) 
				wait() 
			until _G.StopTween == true or not _G.AutoTushitaSword or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(5148.03613, 162.352493, 910.548218)).Magnitude <= 10
			wait(1)
			EquipWeapon("Holy Torch")
			wait(1)
			wait(0.4)
			repeat 
				TP(CFrame.new(-10752.7695, 412.229523, -9366.36328)) 
				wait() 
			until _G.StopTween == true or not _G.AutoTushitaSword or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752.7695, 412.229523, -9366.36328)).Magnitude <= 10
			wait(0.4)
			repeat 
				TP(CFrame.new(-11673.4111, 331.749023, -9474.34668)) 
				wait() 
			until _G.StopTween == true or not _G.AutoTushitaSword or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11673.4111, 331.749023, -9474.34668)).Magnitude <= 10
			wait(0.4)
			repeat 
				TP(CFrame.new(-12133.3389, 519.47522, -10653.1904)) 
				wait() 
			until _G.StopTween == true or not _G.AutoTushitaSword or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12133.3389, 519.47522, -10653.1904)).Magnitude <= 10
			wait(0.4)
			repeat 
				TP(CFrame.new(-13336.5, 485.280396, -6983.35254, 0.912677109)) 
				wait() 
			until _G.StopTween == true or not _G.AutoTushitaSword or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336.5, 485.280396, -6983.35254, 0.912677109)).Magnitude <= 10
			wait(0.4)
			repeat 
				TP(CFrame.new(-13487.4131, 334.84845, -7926.34863)) 
				wait() 
			until _G.StopTween == true or not _G.AutoTushitaSword or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13487.4131, 334.84845, -7926.34863)).Magnitude <= 10
			wait(1)
		elseif game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") or game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
			pcall(function()
				EquipWeapon(_G.SelectWeapon)
				pcall(function()
					local v = enemylongma()
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
					TP(v.HumanoidRootPart.CFrame * MethodFarm)
				end)
			end)
		elseif game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")  or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
			pcall(function()
				EquipWeapon(_G.SelectWeapon)
				pcall(function()
					local v = enemyrip()
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
					TP(v.HumanoidRootPart.CFrame * MethodFarm)
				end)
			end)
		elseif HopFunction then
			TP(CFrame.new(-12554.9443, 337.194092, -7501.44727, 0.906377554, 4.23948272e-08, -0.422468632, -1.89128269e-08, 1, 5.97740595e-08, 0.422468632, -4.61877896e-08, 0.906377554))
			wait(1)
			HopServer()
		end
	end
end

if World3 then
Weapon:Seperator(" Auto Enma & Yama ")

	Weapon:Toggle("Auto Enma & Yama",AutoYama,function(v)
		AutoYama = v
        StopTween(AutoYama)
	end)

	Weapon:Toggle("Auto Enma & Yama Hop",AutoYamaHOP,function(v)
	    AutoYamaHOP = v
	end)

	spawn(function()
		while wait() do
			if AutoYama then
				if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter", "Progress") < 30 then
					if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
							for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
								if string.find(v.Name,"Diablo") then
									YemaTween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
										if YemaTween then
											YemaTween:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
									end
								end	
								if string.find(v.Name,"Urban") then
									YemaTween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
										if YemaTween then
											YemaTween:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
									end
								end	
								if string.find(v.Name,"Deandre") then
									YemaTween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
										if YemaTween then
											YemaTween:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
									end
								end	
							end
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if AutoYama and string.find(v.Name,"Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
											Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Farmtween then
												Farmtween:Stop()
											end
											EquipWeapon(_G.SelectWeapon)
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)
										end 
									until not AutoYama or not v.Parent or v.Humanoid.Health <= 0
								end
								if AutoYama and string.find(v.Name,"Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
											Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Farmtween then
												Farmtween:Stop()
											end
											EquipWeapon(_G.SelectWeapon)
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)
										end 
									until not AutoYama or not v.Parent or v.Humanoid.Health <= 0
								end
								if AutoYama and string.find(v.Name,"Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
											Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Farmtween then
												Farmtween:Stop()
											end
											EquipWeapon(_G.SelectWeapon)
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)
										end 
									until not AutoYama or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							local string_1 = "EliteHunter";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
							Target:InvokeServer(string_1);
						end
					else
						if AutoYamaHOP and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
							local PlaceID = game.PlaceId
							local AllIDs = {}
							local foundAnything = ""
							local actualHour = os.date("!*t").hour
							local Deleted = false
							function TPReturner()
								local Site;
								if foundAnything == "" then
									Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
								else
									Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
								end
								local ID = ""
								if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
									foundAnything = Site.nextPageCursor
								end
								local num = 0;
								for i,v in pairs(Site.data) do
									local Possible = true
									ID = tostring(v.id)
									if tonumber(v.maxPlayers) > tonumber(v.playing) then
										for _,Existing in pairs(AllIDs) do
											if num ~= 0 then
												if ID == tostring(Existing) then
													Possible = false
												end
											else
												if tonumber(actualHour) ~= tonumber(Existing) then
													local delFile = pcall(function()
														-- delfile("NotSameServers.json")
														AllIDs = {}
														table.insert(AllIDs, actualHour)
													end)
												end
											end
											num = num + 1
										end
										if Possible == true then
											table.insert(AllIDs, ID)
											wait()
											pcall(function()
												-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
												wait()
												game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
											end)
											wait(1)
										end
									end
								end
							end
							function Teleport() 
								while wait() do
									pcall(function()
										TPReturner()
										if foundAnything ~= "" then
											TPReturner()
										end
									end)
								end
							end
							Teleport()
						else
							local string_1 = "EliteHunter";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
							Target:InvokeServer(string_1);
						end
					end
				else
					TweenYema = TP(game.Workspace.Map.Waterfall.SealedKatana.Handle.Position,game.Workspace.Map.Waterfall.SealedKatana.Handle.CFrame)
					if (game.Workspace.Map.Waterfall.SealedKatana.Handle.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
						if TweenYema then
							TweenYema:Stop()
						end
						if game.Workspace.Enemies:FindFirstChild("Ghost [Lv. 1500]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if AutoYama and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Ghost [Lv. 1500]" then
									repeat wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
											Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Farmtween then
												Farmtween:Stop()
											end
											EquipWeapon(_G.SelectWeapon)
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
										end 
									until not AutoYama or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							if TweenYema then
								TweenYema:Stop()
							end
							fireclickdetector(game.Workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
						end
					end
				end
			end
		end
	end)
end
	Weapon:Seperator("True Triple Katana ")

	Weapon:Toggle("Auto True Triple Katana",false,function(Value)
		_G.truetripleKatana = Value    
	end)

	spawn(function()
		while wait() do
			if _G.truetripleKatana then
				local string_1 = "MysteriousMan";
				local string_2 = "2";
				local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
				Target:InvokeServer(string_1, string_2);   
			end 
		end
	end)

Shisui = Weapon:Label("Shisui : Not Have")
Saddi = Weapon:Label("Saddi : Not Have")
Wando = Weapon:Label("Wando : Not Have")
TrueTripleKatana = Weapon:Label("True Triple Katana : Not Have")

task.spawn(function()
        while task.wait() do
            pcall(
                function()
                    for i, v in pairs(
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
                    ) do
                        if v.Name == "Shisui" then
                            Shisui:Set("Have : Shisui")
                        end
                        if v.Name == "Saddi" then
                            Saddi:Set("Have : Saddi")
                        end
                        if v.Name == "Wando" then
                            Wando:Set("Have : Wando")
                        end
                        if v.Name == "True Triple Katana" then
                            TrueTripleKatana:Set("Have : True Triple Katana")
                    end
                end
            end)
        end
end)
  
if World1 then
    Weapon:Seperator("  Pole V.1")

    local Pole_Status = Weapon:Label("Status : N/Q")

        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                        Pole_Status:Set("Status : Spawned")	
                    else
                        Pole_Status:Set("Status : Not Spawned")	
                    end
                end)
            end
        end)

Weapon:Toggle("Auto Pole V.1",_G.AutoPole,function(value)
        _G.AutoPole = value
        StopTween(_G.AutoPole)
    end)
    
    Weapon:Toggle("Auto Pole V.1 Hop",_G.AutoPoleHop,function(value)
        _G.AutoPoleHop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoPole then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Thunder God [Lv. 575] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                         
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoPole or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if _G.AutoPoleHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
 end

if World3 then
    Weapon:Seperator(" Serpent Bow ")

    local Serprnt_Bow_Status = Weapon:Label("Status : N/Q")

        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress [Lv. 1675] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                        Serprnt_Bow_Status:Set("Status : Spawned")	
                    else
                        Serprnt_Bow_Status:Set("Status : Not Spawned")	
                    end
                end)
            end
        end)

    Weapon:Toggle("Auto Serpent Bow",false,function(value)
        _G.AutoSerpentBow = value
        StopTween(_G.AutoSerpentBow)
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoSerpentBow then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Island Empress [Lv. 1675] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    end)
                                until _G.AutoSerpentBow == false or v.Humanoid.Health <= 0
                            end
                        end
						  else 
                            repeat task.wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5228.8842773438, 604.23400878906, 345.0400390625)) 
                        until (CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.AutoSerpentBow == false
					end
                end
            end
        end)
    end)
        
    Weapon:Toggle("Auto Serpent Bow Hop",_G.AutoSerpentBowHop,function(value)
        _G.AutoSerpentBowHop = value
    end)

    spawn(function()
        pcall(function()
            while wait(.1) do
                if (_G.AutoFarmCavander and _G.AutoFarmCavander_Hop) and World2 and not game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress [Lv. 1675] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                    Hop()
                end
            end
        end)
    end)
    end

    if World3 then
    Weapon:Seperator(" Buddy Sword ")
    
    local Cake_Queen_Status = Weapon:Label("Status : N/Q")

        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        Cake_Queen_Status:Set("Status : Spawned")	
                    else
                        Cake_Queen_Status:Set("Status : Not Spawned")	
                    end
                end)
            end
        end)

    Weapon:Toggle("Auto Buddy Sword",_G.AutoBudySword,function(value)
        _G.AutoBudySword = value
        StopTween(_G.AutoBudySword)
    end)
    
    Weapon:Toggle("Auto Buddy Sword Hop",_G.AutoBudySwordHop,function(value)
        _G.AutoBudySwordHop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoBudySword then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(55,55,55)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                         
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * MethodFarm)
                        else
                            if _G.AutoBudySwordHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
 end

 if World3 then
    Weapon:Seperator(" Elite ")
    
    local Elite_Hunter_Status = Weapon:Label("Status : N/Q")

        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                        Elite_Hunter_Status:Set("Status : Spawned")	
                    else
                        Elite_Hunter_Status:Set("Status : Not Spawned")	
                    end
                end)
            end
        end)

    local EliteProgress = Weapon:Label("")
    
    spawn(function()
        pcall(function()
            while wait() do
                EliteProgress:Set("Elite Progress : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
            end
        end)
    end)
    
    Weapon:Toggle("Auto Elite Hunter",_G.AutoEliteHunter,function(a)
		_G.AutoEliteHunter = a
        StopTween(_G.AutoEliteHunter)
	end)

	Weapon:Toggle("Auto Elite Hunter Hop",_G.AutoEliteHunterHop,function(a)
	    _G.AutoEliteHunterHOP = a
	end)

	spawn(function()
		while wait() do
			if _G.AutoEliteHunter then
				if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
						for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
							if string.find(v.Name,"Diablo") then
								EliteHunter = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
									if EliteHunter then
										EliteHunter:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
								end
							end
							if string.find(v.Name,"Urban") then
								EliteHunter = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
									if EliteHunter then
										EliteHunter:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
								end
							end	
							if string.find(v.Name,"Deandre") then
								EliteHunter = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
									if EliteHunter then
										EliteHunter:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
								end
							end	
						end
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if _G.AutoEliteHunter and string.find(v.Name,"Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
										Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
									elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Farmtween then
											Farmtween:Stop()
										end
										EquipWeapon(_G.SelectWeapon)
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)
										Click()
									end
								until not _G.AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
							end
							if _G.AutoEliteHunter and string.find(v.Name,"Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
										Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
									elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Farmtween then
											Farmtween:Stop()
										end
										EquipWeapon(_G.SelectWeapon)
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)
										Click()
									end 
								until not _G.AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
							end
							if _G.AutoEliteHunter and string.find(v.Name,"Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
										Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
									elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Farmtween then
											Farmtween:Stop()
										end
										EquipWeapon(_G.SelectWeapon)
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											local args = {
												[1] = "Buso"
											}
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)
										Click()
									end 
								until not _G.AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					else
						if _G.AutoEliteHunterHOP and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
							local PlaceID = game.PlaceId
							local AllIDs = {}
							local foundAnything = ""
							local actualHour = os.date("!*t").hour
							local Deleted = false
							function TPReturner()
								local Site;
								if foundAnything == "" then
									Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
								else
									Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
								end
								local ID = ""
								if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
									foundAnything = Site.nextPageCursor
								end
								local num = 0;
								for i,v in pairs(Site.data) do
									local Possible = true
									ID = tostring(v.id)
									if tonumber(4) > tonumber(v.playing) then
										for _,Existing in pairs(AllIDs) do
											if num ~= 0 then
												if ID == tostring(Existing) then
													Possible = false
												end
											else
												if tonumber(actualHour) ~= tonumber(Existing) then
													local delFile = pcall(function()
														-- delfile("NotSameServers.json")
														AllIDs = {}
														table.insert(AllIDs, actualHour)
													end)
												end
											end
											num = num + 1
										end
										if Possible == true then
											table.insert(AllIDs, ID)
											wait()
											pcall(function()
											 -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
												wait()
												game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
											end)
											wait(1)
										end
									end
								end
							end
							function Teleport() 
								while wait() do
									pcall(function()
										TPReturner()
										if foundAnything ~= "" then
											TPReturner()
										end
									end)
								end
							end
							Teleport()
						else
							local string_1 = "EliteHunter";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
							Target:InvokeServer(string_1);
						end
					end
				else
					if _G.AutoEliteHunterHOP and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
						local PlaceID = game.PlaceId
						local AllIDs = {}
						local foundAnything = ""
						local actualHour = os.date("!*t").hour
						local Deleted = false
						function TPReturner()
							local Site;
							if foundAnything == "" then
								Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
							else
								Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
							end
							local ID = ""
							if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
								foundAnything = Site.nextPageCursor
							end
							local num = 0;
							for i,v in pairs(Site.data) do
								local Possible = true
								ID = tostring(v.id)
								if tonumber(4) > tonumber(v.playing) then
									for _,Existing in pairs(AllIDs) do
										if num ~= 0 then
											if ID == tostring(Existing) then
												Possible = false
											end
										else
											if tonumber(actualHour) ~= tonumber(Existing) then
												local delFile = pcall(function()
													-- delfile("NotSameServers.json")
													AllIDs = {}
													table.insert(AllIDs, actualHour)
												end)
											end
										end
										num = num + 1
									end
									if Possible == true then
										table.insert(AllIDs, ID)
										wait()
										pcall(function()
											-- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
											wait()
											game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
										end)
										wait(1)
									end
								end
							end
						end
						function Teleport() 
							while wait() do
								pcall(function()
									TPReturner()
									if foundAnything ~= "" then
										TPReturner()
									end
								end)
							end
						end
						Teleport()
					else
						local string_1 = "EliteHunter";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
						Target:InvokeServer(string_1);
					end
				end
			end
		end	
	end)
end

if World3 then
    Weapon:Seperator(" Twin Hook ")

    local Twin_Hook_Status = Weapon:Label("Status : N/Q")

        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                        Twin_Hook_Status:Set("Status : Spawned")	
                    else
                        Twin_Hook_Status:Set("Status : Not Spawned")	
                    end
                end)
            end
        end)

    Weapon:Toggle("Auto Twin Hook",_G.Auto_Twin_Hook,function(value)
                _G.Auto_Twin_Hook = value
                StopTween(_G.Auto_Twin_Hook)
            end)

    Weapon:Toggle("Auto Twin Hook Hop",_G.Auto_Twin_Hook_Hop,function(value)
                _G.Auto_Twin_Hook_Hop = value
                StopTween(_G.Auto_Twin_Hook_Hop)
            end)
    
        spawn(function()
            while wait() do
                if _G.Auto_Twin_Hook then
                    pcall(function()
                        if _G.Auto_Twin_Hook and game.ReplicatedStorage:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") or game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                            if game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == "Captain Elephant [Lv. 1875] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        repeat wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until _G.Auto_Twin_Hook or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            else
                                TP(CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625))
                            end
                        else
                            if _G.Auto_Twin_Hook_Hop then
                                Hop()
                            end
                        end
                    end)
                end
            end
        end)
	end

    if World3 then
    Weapon:Seperator("Hallow Scythe ")
    
    local Hallow_Status = Weapon:Label("Status : N/Q")

        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                        Hallow_Status:Set("Status : Spawned")	
                    else
                        Hallow_Status:Set("Status : Not Spawned")	
                    end
                end)
            end
        end)

    Weapon:Toggle("Auto Hallow Scythe",_G.AutoFarmBossHallow,function(value)
        _G.AutoFarmBossHallow = value
        StopTween(_G.AutoFarmBossHallow)
    end)
    
    Weapon:Toggle("Auto Hallow Scythe Hop",_G.AutoFarmBossHallowHop,function(value)
        _G.AutoFarmBossHallowHop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarmBossHallow then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name , "Soul Reaper") then
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                    v.HumanoidRootPart.Transparency = 1
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat TP(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if _G.AutoFarmBossHallowHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
end
    
    if World3 then
    Weapon:Seperator("Dark Dagger")
    
    local rip_indra_Status = Weapon:Label("Status : N/Q")

        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                        rip_indra_Status:Set("Status : Spawned")	
                    else
                        rip_indra_Status:Set("Status : Not Spawned")	
                    end
                end)
            end
        end)

    Weapon:Toggle("Auto Dark Dagger",_G.AutoDarkDagger,function(value)
        _G.AutoDarkDagger = value
        StopTween(_G.AutoDarkDagger)
    end)
        
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoDarkDagger then
                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 5000] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == ("rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "rip_indra [Lv. 5000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                    end)
                                until _G.AutoDarkDagger == false or v.Humanoid.Health <= 0
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    Weapon:Toggle("Auto Dark Dagger Hop",_G.AutoDarkDagger_Hop,function(value)
        _G.AutoDarkDagger_Hop = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if (_G.AutoDarkDagger_Hop and _G.AutoDarkDagger) and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                    Hop()
                end
            end
        end)
    end)
end

    Weapon:Seperator("Dark Coat")

    local BlackBeardStatus = Weapon:Label("Status : N/Q")

        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
                        BlackBeardStatus:Set("Status : Spawned")	
                    else
                        BlackBeardStatus:Set("Status : Not Spawned")	
                    end
                end)
            end
        end)

Weapon:Toggle("Auto Dark Coat",_G.BlackBeard,function(value)
        _G.BlackBeard = value
        StopTween(_G.BlackBeard)
    end)
    
    Weapon:Toggle("Auto Dark Coat Hop",_G.BlackBeardHop,function(value)
        _G.BlackBeardHop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.BlackBeard then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name , "Fist of Darkness") then
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                    v.HumanoidRootPart.Transparency = 1
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until v.Humanoid.Health <= 0 or _G.BlackBeard == false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
                        repeat TP(CFrame.new(3777.564697265625, 14.876824378967285, -3499.460205078125)) wait() until (CFrame.new(3777.564697265625, 14.876824378967285, -3499.460205078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if _G.BlackBeard then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    Weapon:Seperator(" Swan Glasses ")
    
    local Don_Swan_Status = Weapon:Label("Status : N/Q")

        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                        Don_Swan_Status:Set("Status : Spawned")	
                    else
                        Don_Swan_Status:Set("Status : Not Spawned")	
                    end
                end)
            end
        end)

    Weapon:Toggle("Auto Swan Glasses",_G.AutoFarmSwanGlasses,function(value)
        _G.AutoFarmSwanGlasses = value
        StopTween(_G.AutoFarmSwanGlasses)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoFarmSwanGlasses then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    end)
                                until _G.AutoFarmSwanGlasses == false or v.Humanoid.Health <= 0
                            end
                        end
						  else 
                            repeat task.wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625)) 
                        until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.AutoFarmSwanGlasses == false
                    end
                end
            end
        end)
    end)
    
    Weapon:Toggle("Auto Swan Glasses Hop",_G.AutoFarmSwanGlasses_Hop,function(value)
        _G.AutoFarmSwanGlasses_Hop = value
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if (_G.AutoFarmSwanGlasses and _G.AutoFarmSwanGlasses_Hop) and World2 and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                    Hop()
                end
            end
        end)
    end)
    

    if World3 then
    Weapon:Seperator(" Cavander ")

    local Cavander_Status = Weapon:Label("Status : N/Q")

        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                        Cavander_Status:Set("Status : Spawned")	
                    else
                        Cavander_Status:Set("Status : Not Spawned")	
                    end
                end)
            end
        end)

    Weapon:Toggle("Auto Cavander",_G.AutoFarmCavander,function(value)
        _G.AutoFarmCavander = value
        StopTween(_G.AutoFarmCavander)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoFarmCavander then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    end)
                                until _G.AutoFarmCavander == false or v.Humanoid.Health <= 0
                            end
                        end
						  else 
                        repeat task.wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5315.6318359375, 22.562606811523438, -131.0099334716797)) 
                        until (CFrame.new(5315.6318359375, 22.562606811523438, -131.0099334716797).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.AutoFarmCavander == false
                    end
                end
            end
        end)
    end)
    
    Weapon:Toggle("Auto Cavander Hop",_G.AutoFarmCavander_Hop,function(value)
        _G.AutoFarmCavander_Hop = value
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if (_G.AutoFarmCavander and _G.AutoFarmCavander_Hop) and World2 and not game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                    Hop()
                end
            end
        end)
    end)
    end
	
 if World3 then
    Weapon:Seperator(" Bone ")

    local CheckingBone = Weapon:Label("")

spawn(function()
        pcall(function()
            while wait() do
               CheckingBone:Set("Checking Bone : "..(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")))
            end
        end)
    end)
 
    local BoneFarm = Weapon:Toggle("Auto Farm Bone",_G.Auto_Bone,function(value)
        _G.Auto_Bone = value
        StopTween(_G.Auto_Bone)
    end)
    
    spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function()
  pcall(function()
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Bone and StartMagnetBoneMon and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMonBone
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(10,10,10)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end)
  end)
 end)

spawn(function()
 while wait() do
 if _G.Auto_Bone and World3 then
 pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
  if v.Humanoid.Health > 0 then
  repeat task.wait()
  AutoHaki()
  EquipWeapon(_G.Select_Weapon)
  StartMagnetBoneMon = true
  v.HumanoidRootPart.CanCollide = false
  v.HumanoidRootPart.Size = Vector3.new(10,10,10)
  PosMonBone = v.HumanoidRootPart.CFrame
  TP(v.HumanoidRootPart.CFrame * MethodFarm)
game:GetService("VirtualUser"):CaptureController()
 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280 , 670),workspace.CurrentCamera.CFrame)
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
  until _G.Auto_Bone == false or not v.Parent or v.Humanoid.Health <= 0
  end
  end
  end
  else
   StartMagnetBoneMon = false
  for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
  if v.Name == "Reborn Skeleton [Lv. 1975]" then
  TP(v.HumanoidRootPart.CFrame * MethodFarm)
  elseif v.Name == "Living Zombie [Lv. 2000]" then
  TP(v.HumanoidRootPart.CFrame * MethodFarm)
  elseif v.Name == "Demonic Soul [Lv. 2025]" then
  TP(v.HumanoidRootPart.CFrame * MethodFarm)
  elseif v.Name == "Posessed Mummy [Lv. 2050]" then
  TP(v.HumanoidRootPart.CFrame * MethodFarm)
  end
  end
  TP(CFrame.new(-9466.72949, 171.162918, 6132.01514))
  end
  end)
 end
 end
 end)

    Weapon:Toggle("Auto Random Surprise",_G.Auto_Random_Bone,function(value)
        _G.Auto_Random_Bone = value
    end)

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Random_Bone then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                end
            end
        end)
    end)
    
 function TP(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 250 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    end
    
    function GetDistance(target)
        return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
    end


  if World1 then
    Weapon:Seperator(" Saber ")

    local AutoSaber_Status = Weapon:Label("Status : N/Q")

        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                        AutoSaber_Status:Set("Status : Spawned")	
                    else
                        AutoSaber_Status:Set("Status : Not Spawned")	
                    end
                end)
            end
        end)
    
			Weapon:Toggle("Auto Saber",_G.AutoSaber,function(value)
				_G.AutoSaber = value
			end)
			
			Weapon:Toggle("Auto Saber Hop",_G.AutoSaberHop,function(value)
				_G.AutoSaberHop = value
			end)
			
 spawn(function()
            while wait() do
                if _G.AutoSaber then
                    if game.Players.localPlayer.Data.Level.Value < 200 then
                    else
                        if game.Workspace.Map.Jungle.Final.Part.CanCollide == false then
                            if _G.AutoSaber and game.ReplicatedStorage:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                                if game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Saber Expert [Lv. 200] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                    Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Farmtween then
                                                        Farmtween:Stop()
                                                    end
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                end
                                            until not _G.Auto_Saber or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    end
                                else
                                    Questtween = TP(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                                    if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Questtween then
                                            Questtween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055, 0.885240912, 3.52892613e-08, 0.465132833, -6.60881128e-09, 1, -6.32913171e-08, -0.465132833, 5.29540891e-08, 0.885240912)
                                    end
                                end
                            else
                                if _G.AutoSaberHop then
                                    Hop()
                                end
                            end
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") and game.Players.localPlayer.Data.Level.Value >= 200 then
                            EquipWeapon("Relic")
                            wait(0.5)
                            Questtween = TP(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                            if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                if Questtween then
                                    Questtween:Stop()
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055, 0.885240912, 3.52892613e-08, 0.465132833, -6.60881128e-09, 1, -6.32913171e-08, -0.465132833, 5.29540891e-08, 0.885240912)
                            end
                        else
                            if Workspace.Map.Jungle.QuestPlates.Door.CanCollide == false then
                                if game.Workspace.Map.Desert.Burn.Part.CanCollide == false then
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") == 0 then
                                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                            if game.Workspace.Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                    if _G.AutoSaber and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Mob Leader [Lv. 120] [Boss]" then
                                                        repeat
                                                            pcall(function() wait() 
                                                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                                    Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                                    if Farmtween then
                                                                        Farmtween:Stop()
                                                                    end
                                                                    AutoHaki()
                                                                    EquipWeapon(_G.SelectWeapon)
                                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                        local args = {
                                                                            [1] = "Buso"
                                                                        }
                                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                                    end
                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                                    game:GetService'VirtualUser':CaptureController()
                                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                                end
                                                            end)
                                                        until not _G.AutoSaber or not v.Parent or v.Humanoid.Health <= 0
                                                    end
                                                end
                                            else
                                                Questtween = TP(CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position,CFrame.new(-2848.59399, 7.4272871, 5342.44043))
                                                if (CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Questtween then
                                                        Questtween:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.928248107)
                                                end
                                            end
                                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") then
                                                EquipWeapon("Relic")
                                                wait(0.5)
                                                Questtween = TP(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                                                if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Questtween then
                                                        Questtween:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055)
                                                end
                                            else
                                                Questtween = TP(CFrame.new(-910.979736, 13.7520342, 4078.14624).Position,CFrame.new(-910.979736, 13.7520342, 4078.14624))
                                                if (CFrame.new(-910.979736, 13.7520342, 4078.14624).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Questtween then
                                                        Questtween:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.979736, 13.7520342, 4078.14624, 0.00685182028, -1.53155766e-09, -0.999976516, 9.15205245e-09, 1, -1.46888401e-09, 0.999976516, -9.14177267e-09, 0.00685182028)
                                                    wait(.5)
                                                    local args = {
                                                        [1] = "ProQuestProgress",
                                                        [2] = "RichSon"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                            end
                                        else
                                            Questtween = TP(CFrame.new(-910.979736, 13.7520342, 4078.14624).Position,CFrame.new(-910.979736, 13.7520342, 4078.14624))
                                            if (CFrame.new(-910.979736, 13.7520342, 4078.14624).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if Questtween then
                                                    Questtween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.979736, 13.7520342, 4078.14624)
                                                local args = {
                                                    [1] = "ProQuestProgress",
                                                    [2] = "RichSon"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                        end
                                    else
                                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") or game.Players.LocalPlayer.Character:FindFirstChild("Cup") then
                                            EquipWeapon("Cup")
                                            if game.Players.LocalPlayer.Character.Cup.Handle:FindFirstChild("TouchInterest") then
                                                Questtween = TP(CFrame.new(1397.229, 37.3480148, -1320.85217).Position,CFrame.new(1397.229, 37.3480148, -1320.85217))
                                                if (CFrame.new(1397.229, 37.3480148, -1320.85217).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Questtween then
                                                        Questtween:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1397.229, 37.3480148, -1320.85217, -0.11285457, 2.01368788e-08, 0.993611455, 1.91641178e-07, 1, 1.50028845e-09, -0.993611455, 1.90586206e-07, -0.11285457)
                                                end
                                            else
                                                wait(0.5)
                                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                                    local args = {
                                                        [1] = "ProQuestProgress",
                                                        [2] = "SickMan"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                            end
                                        else
                                            Questtween = TP(game.Workspace.Map.Desert.Cup.Position,game.Workspace.Map.Desert.Cup.CFrame)
                                            if (game.Workspace.Map.Desert.Cup.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if Questtween then
                                                    Questtween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Desert.Cup.CFrame
                                            end
                                            firetouchinterest(game.Workspace.Map.Desert.Cup.TouchInterest,game.Players.LocalPlayer.Character.Head, 1)
                                        end
                                    end
                                else
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                        EquipWeapon("Torch")
                                        Questtween = TP(CFrame.new(1114.87708, 4.9214654, 4349.8501).Position,CFrame.new(1114.87708, 4.9214654, 4349.8501))
                                        if (CFrame.new(1114.87708, 4.9214654, 4349.8501).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Questtween then
                                                Questtween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.87708, 4.9214654, 4349.8501, -0.612586915, -9.68697833e-08, 0.790403247, -1.2634203e-07, 1, 2.4638446e-08, -0.790403247, -8.47679615e-08, -0.612586915)
                                        end
                                    else
                                        Questtween = TP(CFrame.new(-1610.00757, 11.5049858, 164.001587).Position,CFrame.new(-1610.00757, 11.5049858, 164.001587))
                                        if (CFrame.new(-1610.00757, 11.5049858, 164.001587).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Questtween then
                                                Questtween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408)
                                        end
                                    end
                                end
                            else
                                for i,v in pairs(Workspace.Map.Jungle.QuestPlates:GetChildren()) do
                                    if v:IsA("Model") then wait()
                                        if v.Button.BrickColor ~= BrickColor.new("Camo") then
                                            repeat wait()
                                                Questtween = TP(v.Button.Position,v.Button.CFrame)
                                                if (v.Button.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                    if Questtween then
                                                        Questtween:Stop()
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Button.CFrame
                                                end
                                            until not _G.AutoSaber or v.Button.BrickColor == BrickColor.new("Camo")
                                        end
                                    end
                                end    
                            end
                        end
                    end 
                end
            end
        end)
	end
    Weapon:Seperator(" Legendary Sword ")
    
    Weapon:Toggle("Auto Legendary Sword",_G.AutoBuyLegendarySword,function(value)
        _G.AutoBuyLegendarySword = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoBuyLegendarySword then
                pcall(function()
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "1"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "3"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    if _G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2 then
                        wait(10)
                        Hop()
                    end
                end)
            end 
        end
    end)
   
    Weapon:Toggle("Auto Legendary Sword Hop",_G.AutoBuyLegendarySword_Hop,function(value)
        _G.AutoBuyLegendarySword_Hop = value
    end)
    end

    if World2 or World3 then
    Weapon:Seperator("Enchancement")
    
    Weapon:Toggle("Auto Enchancement Colour",_G.AutoBuyEnchancementColour,function(value)
        _G.AutoBuyEnchancementColour = value
    end)
    
    Weapon:Toggle("Auto Enchancement Hop",_G.AutoBuyEnchancementColour_Hop,function(value)
        _G.AutoBuyEnchancementColour_Hop = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoBuyEnchancementColour then
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                if _G.AutoBuyEnchancementColour_Hop and _G.AutoBuyEnchancementColour and not World1 then
                    wait(10)
                    Hop()
                end
            end 
        end
    end)
    end

if World2 or World3 then
    Weapon:Seperator("Others")
end

    if World3 then
    Weapon:Toggle("Auto Musketeer Hat",_G.AutoMusketeerHat,function(value)
        _G.AutoMusketeerHat = value
        StopTween(_G.AutoMusketeerHat)
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoMusketeerHat then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Forest Pirate [Lv. 1825]" then
                                        repeat task.wait()
                                            pcall(function()
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                MusketeerHatMon = v.HumanoidRootPart.CFrame
                                                StartMagnetMusketeerhat = true
                                            end)
                                        until _G.AutoMusketeerHat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        StartMagnetMusketeerhat = false
                                    end
                                end
                            else
                                StartMagnetMusketeerhat = false
                                TP(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                            end
                        else
                            TP(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                            if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                        OldCFrameElephant = v.HumanoidRootPart.CFrame
                                        repeat task.wait()
                                            pcall(function()
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.CFrame = OldCFrameElephant
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            end)
                                        until _G.AutoMusketeerHat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                TP(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                            end
                        else
                            TP(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                            if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                        TP(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                    end
                end
            end
        end)
    end)
    end

    if World3 then
    Weapon:Toggle("Auto Observation Haki v2",_G.AutoObservationv2,function(value)
        _G.AutoObservationv2 = value
        StopTween(_G.AutoObservationv2)
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoObservationv2 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 3 then
                        _G.AutoMusketeerHat = false
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and  game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                            repeat 
                                TP(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
                                wait() 
                            until not _G.AutoObservationv2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                            repeat 
                                TP(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
                                wait() 
                            until not _G.AutoObservationv2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
                        else
                            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                                if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                                    v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
                                    wait()
                                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
                                    wait()
                                end
                            end   
                        end
                    end
                end
            end)
        end
    end)
 end

    if World3 then
Weapon:Toggle("Auto Haki Rainbow",_G.AutoHakiRainbow,function(value)
		_G.AutoHakiRainbow = value
        StopTween(_G.AutoHakiRainbow)
    end)

	spawn(function()
		while wait() do
			if _G.AutoHakiRainbow then
				if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
						if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
							if game.Workspace.Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if _G.AutoHakiRainbow and v.Name == "Stone [Lv. 1550] [Boss]" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											pcall(function() wait() 
												local string_1 = "HornedMan";
												local string_2 = "Bet";
												local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
												Target:InvokeServer(string_1, string_2);
												local string_1 = "HornedMan";
												local string_2 = "Bet";
												local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
												Target:InvokeServer(string_1, string_2);
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													EquipWeapon(_G.SelectWeapon)
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														local args = {
															[1] = "Buso"
														}
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
													Click()
												end 
											end)
										until not _G.AutoHakiRainbow or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else 
								if (CFrame.new(-1134, 40, 6877).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 250 then
									HakiRainbowTween = TP(CFrame.new(-1134, 40, 6877).Position,CFrame.new(-1134, 40, 6877))
								elseif (CFrame.new(-1134, 40, 6877).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
									if HakiRainbowTween then
										HakiRainbowTween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1134, 40, 6877)
								end
							end
						elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
							if game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if _G.AutoHakiRainbow and v.Name == "Island Empress [Lv. 1675] [Boss]" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											pcall(function() wait() 
												local string_1 = "HornedMan";
												local string_2 = "Bet";
												local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
												Target:InvokeServer(string_1, string_2);
												local string_1 = "HornedMan";
												local string_2 = "Bet";
												local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
												Target:InvokeServer(string_1, string_2);
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													EquipWeapon(_G.SelectWeapon)
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														local args = {
															[1] = "Buso"
														}
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												end 
											end)
										until not _G.AutoHakiRainbow or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								if (CFrame.new(5614, 603, 339).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 250 then
									HakiRainbowTween = toTarget(CFrame.new(5614, 603, 339).Position,CFrame.new(5614, 603, 339))
								elseif (CFrame.new(5614, 603, 339).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
									if HakiRainbowTween then
										HakiRainbowTween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5614, 603, 339)
								end
							end	
						elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
							if game.Workspace.Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if _G.AutoHakiRainbow and v.Name == "Kilo Admiral [Lv. 1750] [Boss]" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											pcall(function() wait() 
												local string_1 = "HornedMan";
												local string_2 = "Bet";
												local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
												Target:InvokeServer(string_1, string_2);
												local string_1 = "HornedMan";
												local string_2 = "Bet";
												local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
												Target:InvokeServer(string_1, string_2);
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													EquipWeapon(_G.SelectWeapon)
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														local args = {
															[1] = "Buso"
														}
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												end 
											end)
										until not _G.AutoHakiRainbow or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								if (CFrame.new(2879, 433, -7090).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 250 then
									HakiRainbowTween = TP(CFrame.new(2879, 433, -7090).Position,CFrame.new(2879, 433, -7090))
								elseif (CFrame.new(2879, 433, -7090).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
									if HakiRainbowTween then
										HakiRainbowTween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2879, 433, -7090)
								end
							end	
						elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
							if game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if _G.AutoHakiRainbow and v.Name == "Captain Elephant [Lv. 1875] [Boss]" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											pcall(function() wait() 
												local string_1 = "HornedMan";
												local string_2 = "Bet";
												local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
												Target:InvokeServer(string_1, string_2);
												local string_1 = "HornedMan";
												local string_2 = "Bet";
												local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
												Target:InvokeServer(string_1, string_2);
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													EquipWeapon(_G.SelectWeapon)
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														local args = {
															[1] = "Buso"
														}
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												end 
											end)
										until not _G.AutoHakiRainbow or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								if (CFrame.new(-13348, 406, -8574).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 250 then
									HakiRainbowTween = TP(CFrame.new(-13348, 406, -8574).Position,CFrame.new(-13348, 406, -8574))
								elseif (CFrame.new(-13348, 406, -8574).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
									if HakiRainbowTween then
										HakiRainbowTween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13348, 406, -8574)
								end
							end	
						elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
							if game.Workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if _G.AutoHakiRainbow and v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											pcall(function() wait() 
												local string_1 = "HornedMan";
												local string_2 = "Bet";
												local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
												Target:InvokeServer(string_1, string_2);
												local string_1 = "HornedMan";
												local string_2 = "Bet";
												local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
												Target:InvokeServer(string_1, string_2);
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = TP(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													EquipWeapon(_G.SelectWeapon)
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														local args = {
															[1] = "Buso"
														}
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
													end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												end 
											end)
										until not _G.AutoHakiRainbow or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								if (CFrame.new(5206, 23, -80).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 250 then
									HakiRainbowTween = TP(CFrame.new(5206, 23, -80).Position,CFrame.new(5206, 23, -80))
								elseif (CFrame.new(5206, 23, -80).Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 20000 then
									if HakiRainbowTween then
										HakiRainbowTween:Stop()
									end
									local TouchInterest = game:GetService("Workspace").Map.Turtle.Entrance.Door.BossDoor.Hitbox
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
								elseif (CFrame.new(5206, 23, -80).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
									if HakiRainbowTween then
										HakiRainbowTween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5206, 23, -80)
								end
							end	
						end
					else
						local string_1 = "HornedMan";
						local string_2 = "Bet";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
						Target:InvokeServer(string_1, string_2);
						local string_1 = "HornedMan";
						local string_2 = "Bet";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
						Target:InvokeServer(string_1, string_2);
					end
				else
					local string_1 = "HornedMan";
					local string_2 = "Bet";
					local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
					Target:InvokeServer(string_1, string_2);
					local string_1 = "HornedMan";
					local string_2 = "Bet";
					local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
					Target:InvokeServer(string_1, string_2);
				end
			end
		end
	end)
end

    if World2 then
    Weapon:Toggle("Auto Rengoku",_G.AutoRengoku,function(value)
        _G.AutoRengoku = value
        StopTween(_G.AutoRengoku)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoRengoku then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        TP(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    RengokuMon = v.HumanoidRootPart.CFrame
                                    TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    StartRengokuMagnet = true
                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
                                StartRengokuMagnet = false
                            end
                        end
                    else
                        StartRengokuMagnet = false
                        TP(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                    end
                end
            end
        end)
    end)
    end
    
    if World2 then
    Weapon:Toggle("Auto Evo Race",_G.Auto_EvoRace,function(value)
        _G.Auto_EvoRace = value
        StopTween(_G.Auto_EvoRace)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Auto_EvoRace then
                    if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                           TP(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                            if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.3)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                            end
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                            pcall(function()
                                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                                    TP(game:GetService("Workspace").Flower1.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                                    TP(game:GetService("Workspace").Flower2.CFrame)
                                elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Zombie [Lv. 950]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Zombie [Lv. 950]" then
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                    PosMonEvo = v.HumanoidRootPart.CFrame
                                                    StartEvoMagnet = true
                                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_EvoRace == false
                                                StartEvoMagnet = false
                                            end
                                        end
                                    else
                                        StartEvoMagnet = false
                                        TP(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                    end
                                end
                            end)
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                        end
                    end
                end
            end
        end)
    end)
end

    if World2 then
    Weapon:Toggle("Auto Bartlio Quest",_G.AutoBartilo,function(value)
        _G.AutoBartilo = value
        StopTween(_G.AutoBartilo)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoBartilo then
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                            if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                Ms = "Swan Pirate [Lv. 775]"
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Ms then
                                        pcall(function()
                                            repeat task.wait()
                                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()
                                                v.HumanoidRootPart.Transparency = 1
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                TP(v.HumanoidRootPart.CFrame * MethodFarm)												
                                                PosMonBarto =  v.HumanoidRootPart.CFrame
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                AutoBartiloBring = true
                                            until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            AutoBartiloBring = false
                                        end)
                                    end
                                end
                            else
                                repeat TP(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
                            end
                        else
                            repeat TP(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                        end 
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                            Ms = "Jeremy [Lv. 850] [Boss]"
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    OldCFrameBartlio = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                        v.HumanoidRootPart.Transparency = 1
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CFrame = OldCFrameBartlio
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                            repeat TP(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
                            wait(1)
                            repeat TP(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                            wait(2)
                        else
                            repeat TP(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                        repeat TP(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
                        wait(1)
                        repeat TP(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                    end
                end 
            end
        end)
    end)
    end

	if World3 then
Weapon:Toggle("Auto Open Color Haki",_G.Farm_Ob_Color,function(vu)
	Open_Color_Haki = vu
	_G.Farm_Ob_Color = vu
end)

spawn(function()
    while wait(.3) do
        pcall(function()
            if Open_Color_Haki then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
            	wait(0.5)
            	repeat TP(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
                wait(0.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
                wait(0.5)
                repeat TP(CFrame.new(-5414.41357, 309.865753, -2212.45776)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
                wait(0.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
                wait(0.5)
                repeat TP(CFrame.new(-4971.47559, 331.565765, -3720.02954)) wait() 
                until _G.StopTween == true or Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
                wait(0.5)
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
                wait(3)
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
            end
        end) 
    end
end)

Weapon:Toggle("Auto Holy Torch",_G.HolyTorch,function(value)
	_G.HolyTorch = value
    StopTween(_G.HolyTorch)
end)

	spawn(function()
		while wait() do
			if _G.HolyTorch then
				if game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and game:GetService("Workspace").Map.Turtle.TushitaGate.TushitaGate.Transparency == 1 then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") then
						EquipWeapon("Holy Torch")
					elseif game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
						if game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Particles.Main.Enabled ~= true then
							if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
								HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.CFrame)
							elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if HolyTorchtween then
									HolyTorchtween:Stop()
								end
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch1.CFrame
							end
						elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Particles.Main.Enabled ~= true then
							if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
								HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.CFrame)
							elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if HolyTorchtween then
									HolyTorchtween:Stop()
								end
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch2.CFrame
							end
						elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Particles.Main.Enabled ~= true then
							if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
								HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.CFrame)
							elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if HolyTorchtween then
									HolyTorchtween:Stop()
								end
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch3.CFrame
							end
						elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Particles.Main.Enabled ~= true then
							if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
								HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.CFrame)
							elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if HolyTorchtween then
									HolyTorchtween:Stop()
								end
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch4.CFrame
							end
						elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Particles.Main.Enabled ~= true then
							if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
								HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.CFrame)
							elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if HolyTorchtween then
									HolyTorchtween:Stop()
								end
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch5.CFrame
							end
						end
					else
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Waterfall.SecretRoom.Room.Door.Door.Hitbox.CFrame
					end
				end
			end
		end
	end)
end

if World3 then
    Weapon:Toggle("Auto Phoenix Advance Dungeon",_G.AutoAdvanceDungeon,function(value)
        _G.AutoAdvanceDungeon = value
        StopTween(_G.AutoAdvanceDungeon)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoAdvanceDungeon then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                                TP(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
                                if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal")
                                end
                            end
                        elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                            if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                                TP(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
                                if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal")
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
end

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function() CheckLevel()
        pcall(function()
            if _G.BringMonster then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.Auto_Farm_Level and StartMagnet and v.Name == Ms and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                    if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Level Farm" and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonNoQuest.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonNoQuest
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                    if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Easy Mode" and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonModeNear.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonModeNear
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                    if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Hard Mode" and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonFast.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonFast
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                    if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Easy Mode" and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonModeNear.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonModeNear
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                    if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "No Quest" and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonFast.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonFast
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                    if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Easy Mode" and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonModeNear.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonModeNear
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                    if _G.Auto_Farm_Level and _G.AutoKaitan or _G.Auto_Melee or _G.Auto_Sword or _G.NeareastFarm and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonFast.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonFast
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10,10,10)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                end
            end
        end)
    end)
end)

spawn(function()
			while task.wait() do
				if _G.BringMonster or _G.Auto_Farm_Level then
					pcall(function()
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == Ms and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 400 then
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								--v.Humanoid:ChangeState(14)
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.CFrame = MatPos
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						end
					end)
				end
			end
end)

-- BringMonster
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function() CheckLevel()
		pcall(function()
			if _G.BringMonster then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Auto_Farm_Level and StartMagnet and v.Name == Ms and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = PosMon
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end
		end)
    end)
	end)

   Weapon:Seperator(" Fighting Style ")
    
    Weapon:Toggle("Auto Superhuman",_G.Auto_Fully_Superhuman,function(value)
        _G.Auto_Fully_Superhuman = value
        StopTween(_G.Auto_Fully_Superhuman)
    end)
    
    spawn(function()
        while wait(.25) do
            if _G.AutoSuperhuman or _G.Auto_Fully_Superhuman and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then 
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Data.Beli.Value >= 500000 and (game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Combat")) then
                        _G.SelectWeapon = "Combat"
                        local args = {
                            [1] = "BuyElectro"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end   
                    if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                        _G.SelectWeapon = "Superhuman"
                    end  
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                        _G.SelectWeapon = "Black Leg"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                        _G.SelectWeapon = "Electro"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                        _G.SelectWeapon = "Fishman Karate"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                        _G.SelectWeapon = "Dragon Claw"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
                        local args = {
                            [1] = "BuyFishmanKarate"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
                        local args = {
                            [1] = "BuyFishmanKarate"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
                        local args = {
                            [1] = "BuyBlackLeg"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                        if _G.Auto_Fully_Superhuman and game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
                            if game.Players.LocalPlayer.Data.Level.Value > 1100 then
                                _G.SelectChip = "Flame"
                                _G.AutoBuyChip = true
                                _G.Auto_StartRaid = true
                                _G.Next_Islands = true
                                _G.KillAura = true
                            end
                        else
                            _G.AutoBuyChip = false
                            _G.Auto_StartRaid = false
                            _G.Next_Islands = false
                            _G.KillAura = false
                            local args = {
                                [1] = "BlackbeardReward",
                                [2] = "DragonClaw",
                                [3] = "2"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                        if _G.Auto_Fully_Superhuman and game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
                            if game.Players.LocalPlayer.Data.Level.Value > 1100 then
                                _G.SelectChip = "Flame"
                                _G.AutoBuyChip = true
                                _G.Auto_StartRaid = true
                                _G.Next_Islands = true
                                _G.KillAura = true
                            end
                        else
                            _G.AutoBuyChip = false
                            _G.Auto_StartRaid = false
                            _G.Next_Islands = false
                            _G.KillAura = false
                            local args = {
                                [1] = "BlackbeardReward",
                                [2] = "DragonClaw",
                                [3] = "2"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                        local args = {
                            [1] = "BuySuperhuman"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                        local args = {
                            [1] = "BuySuperhuman"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end 
                end)
            end
        end
    end)
    
    Weapon:Toggle("Auto Death Step",_G.Auto_Fully_Death_Step,function(value)
        _G.Auto_Fully_Death_Step = value
        StopTween(_G.Auto_Fully_Death_Step)
    end)
    
    spawn(function()
        while wait() do
            if _G.Auto_Fully_Death_Step then
                pcall(function()
                    if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                    end				
                    if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 then  
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") then
                            EquipWeapon("Library Key")
                            repeat wait() TP(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)) until (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Fully_Death_Step
                            if (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                wait(1.2)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                                wait(0.5)
                            end
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then  
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then 	
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then    
                                            repeat wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.Head.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Fully_Death_Step == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
                                        end
                                    end
                                else
                                    repeat wait() TP(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]").HumanoidRootPart.CFrame) until game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]")
                                end
                            else
                                Hop()
                            end
                        end
                    else 
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                    end
                end)
            end
        end
    end)
    
    Weapon:Toggle("Auto Sharkman Karate",_G.Auto_Fully_SharkMan_Karate,function(value)
        _G.Auto_Fully_SharkMan_Karate = value
        StopTween(_G.Auto_Fully_SharkMan_Karate)
        if _G.Auto_Fully_SharkMan_Karate then
	    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")                                
       end
    end)
    
  spawn(function()
        while wait() do
            if _G.Auto_Fully_SharkMan_Karate then
                pcall(function()
                    if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end		
                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                            repeat wait() TP(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365) until (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Fully_SharkMan_Karate
                            if (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        end
                        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then   
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then 	
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then    
                                            repeat wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.Head.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                TP(v.HumanoidRootPart.CFrame * MethodFarm)
										        game:GetService("VirtualUser"):CaptureController()
										        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Fully_SharkMan_Karate == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
                                        end
                                    end
                                else
                                    repeat wait() TP(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame) until game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]")
                                end
                            else
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
Weapon:Toggle("Auto Electric Claw",_G.AutoElectricClaw, function(value)
        _G.AutoElectricClaw = value
        StopTween(_G.AutoElectricClaw)
	    if _G.AutoElectricClaw then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
	end
end)

spawn(function()
	while wait(.1) do
		if _G.AutoElectricClaw then
			if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
			end
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
			end
			if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399) or (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value <= 399) then
				_G.SelectWeapon = "Electro"
			end
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") then
				_G.SelectWeapon = "Electric Claw"
			end
			if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400) then
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") == "..." and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start") == 4 then
					TP(CFrame.new(-12548.998046875, 332.40396118164, -7603.1865234375))
				    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 4 then
					_G.Auto_Farm_Level = false
					if (CFrame.new(-10369.7725, 331.654175, -10130.3047, 0.879783928, -1.15147909e-08, 0.475373745, -1.70712194e-10, 1, 2.45385472e-08, -0.475373745, -2.16697718e-08, 0.879783928).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
					else
						TP(CFrame.new(-10369.7725, 331.654175, -10130.3047, 0.879783928, -1.15147909e-08, 0.475373745, -1.70712194e-10, 1, 2.45385472e-08, -0.475373745, -2.16697718e-08, 0.879783928))
					end
				    elseif _G.AutoElectricClaw then
					_G.Auto_Farm_Level = true
				end
			end
		end
	end
end)

     Weapon:Toggle("Auto Dragon Talon",_G.AutoDragonTalon,function(value)
        _G.AutoDragonTalon = value
        StopTween(_G.AutoDragonTalon)
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoDragonTalon then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        _G.SelectWeapon = "Dragon Talon"
                    end  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        _G.SelectWeapon = "Dragon Talon"
                    end  
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
                        _G.SelectWeapon = "Dragon Claw"
                    end 
                else 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                end
            end
        end
    end)

    Weapon:Toggle("Auto God Human",_G.AutoFullyGodhuman,function(value)
        _G.AutoFullyGodhuman = value
		_G.Auto_God_Human = value
        StopTween(_G.AutoFullyGodhuman)
    end)

function CheckMaterial(matname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Material" then
				if v.Name == matname then
					return v.Count
				end
			end
		end
	end
	return 0
end

spawn(function()
	while wait() do
		if _G.AutoFullyGodhuman then
			pcall(function()
			if game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
				_G.SelectWeapon = "Godhuman"
				else
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value <= 399 and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value <= 399 and  game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value <= 399 and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value <= 399 then
					if not World3 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
					elseif World3 then
					if CheckMaterial("Fish Tail") <= 20 and World3 then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  	  	if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
                        		if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                           	 	repeat task.wait()
                               	 	EquipWeapon(_G.SelectWeapon)
                              		    v.HumanoidRootPart.CanCollide = false
                               	 	    v.Humanoid.WalkSpeed = 0
                                		v.Head.CanCollide = false
										PosMon = v.HumanoidRootPart.CFrame
										StartMagnet = true
                                		v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                		v.HumanoidRootPart.Transparency = 1
                                		TP(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                            		until not _G.AutoFullyGodhuman or not v.Parent or v.Humanoid.Health <= 0
                        		end
                  				else
								StartMagnet = false
                 				TP(CFrame.new(-10993,332, -8940))
                   	 		end
              		  	end
						elseif CheckMaterial("Dragon Scale") <= 10 and World3 then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  	  	if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
                        		if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                           	 	repeat task.wait()
                               	 	    EquipWeapon(_G.SelectWeapon)
                              		    v.HumanoidRootPart.CanCollide = false
                               	 	    v.Humanoid.WalkSpeed = 0
                                		v.Head.CanCollide = false
										PosMon = v.HumanoidRootPart.CFrame
										StartMagnet = true
                                		v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                		v.HumanoidRootPart.Transparency = 1
                                		TP(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                            		until not _G.AutoFullyGodhuman or not v.Parent or v.Humanoid.Health <= 0
                        		end
								else
									StartMagnet = false
									TP(CFrame.new(6594,383,139))
              		  		    end
							end
							if CheckMaterial("Dragon Scale") >= 10 and CheckMaterial("Fish Tail") >= 20 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							end
						end
						elseif not World2 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
						elseif World2 then
						if CheckMaterial("Magma Ore") <= 20 and World2 then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  	  	if v.Name == "Magma Ninja [Lv. 1175]" then
                        		if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                           	 	repeat task.wait()
                               	 	EquipWeapon(_G.SelectWeapon)
                              		  v.HumanoidRootPart.CanCollide = false
                               	 	v.Humanoid.WalkSpeed = 0
                                		v.Head.CanCollide = false
										PosMon = v.HumanoidRootPart.CFrame
										StartMagnet = true
                                		v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                		v.HumanoidRootPart.Transparency = 1
                                		TP(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                            		until not _G.AutoFullyGodhuman or not v.Parent or v.Humanoid.Health <= 0
                        		end
									else
										StartMagnet = false
										TP(CFrame.new(-5428,78, -5959))
              		  			    end
								end
						elseif CheckMaterial("Mystic Droplet") <= 10 and World2 then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  	  	if v.Name == "Water Fighter [Lv. 1450]" then
                        		if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                           	 	repeat task.wait()
                               	 	EquipWeapon(_G.SelectWeapon)
                              		    v.HumanoidRootPart.CanCollide = false
                               	 	    v.Humanoid.WalkSpeed = 0
                                		v.Head.CanCollide = false
										PosMon = v.HumanoidRootPart.CFrame
										StartMagnet = true
                                		v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                		v.HumanoidRootPart.Transparency = 1
                                		TP(v.HumanoidRootPart.CFrame * MethodFarm)
										game:GetService("VirtualUser"):CaptureController()
										game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                            		until not _G.AutoFullyGodhuman or not v.Parent or v.Humanoid.Health <= 0
                        		end
									else
										StartMagnet = false
										TP(CFrame.new(-3385,239, -10542))
              		  			    end
								end
								if not World3 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
								elseif World3 then
									if CheckMaterial("Mystic Droplet") >= 10 and CheckMaterial("Magma Ore") >= 20 and CheckMaterial("Dragon Scale") >= 10 and CheckMaterial("Fish Tail") >= 20 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
									wait(.3)
									_G.Auto_Farm_Level = true
									end
								end
							end
						end
						else 
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then
                       	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                      	 end
                    	if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    	end
                    	if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                  	  end
			       end
				end
			end)
		end
 	end
end)

Setting:Toggle("Auto Click",false,function(value)
 _G.click = value
end)
 

Setting:Toggle("Fast Attack ",false,function(value)
 _G.FastAttack1 = value
end)

-- [[ Fast Attack Fixed / Shadow Hub / Dont edit , or ur will be messed up! ]]

-- [[ Properties ]]

require(game.ReplicatedStorage.Util.CameraShaker):Stop()

xShadowFastAttackx = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)

xShadowx = debug.getupvalues(xShadowFastAttackx)[2]

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttack1 then
            if typeof(xShadowx) == "table" then
                pcall(function()
                    xShadowx.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                    xShadowx.activeController.timeToNextAttack = 0
                    xShadowx.activeController.hitboxMagnitude = 200
                    xShadowx.activeController.active = false
                    xShadowx.activeController.timeToNextBlock = 0
                    xShadowx.activeController.focusStart = 0
                    xShadowx.activeController.increment = 4
                    xShadowx.activeController.blocking = false
                    xShadowx.activeController.attacking = false
                    xShadowx.activeController.humanoid.AutoRotate = 50
                end)
            end
        end
    end)
end)

Setting:Toggle("Bring Mob",true,function(value)
        _G.BringMonster = value
    end)
    
Setting:Toggle("Bring Mob [Extra+Lag]",false,function(value)
 _G.BringExtra = value
end)

spawn(function()
 game:GetService("RunService").Heartbeat:Connect(function() CheckLevel()
  pcall(function()
   if _G.BringExtra then
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if _G.Auto_Farm_Level and StartMagnet and v.Name ~= "Ice Admiral [Lv. 700] [Boss]" and v.Name ~= "Don Swan [Lv. 3000] [Boss]" and v.Name ~= "Saber Expert [Lv. 200] [Boss]" and v.Name ~= "Longma [Lv. 2000] [Boss]" and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 350 then
   v.HumanoidRootPart.CFrame = PosMon
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   end
   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
   end
   end
   end
   end)
   end)
end)





local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
CamShake:Stop()
Setting:Seperator("Others")
 
    Setting:Toggle("No Camera Shaker",false,function(value)
        _G.CameraShaker = value
    end)

    Setting:Toggle("Disabled Damage",false,function(value)
        _G.DisabledDamage = value
    end)

-- [require module]

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

-- [Disabled Damage Interface]
function DisabledDamage()
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.DisabledDamage then
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
				else
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
				end
			end)
		end
	end)
end

-- [Camera Shaker Function]
function CameraShaker()
	task.spawn(function()
		local Camera = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
		while wait() do
			pcall(function()
				if _G.CameraShaker then
					Camera.CameraShakeInstance.CameraShakeState.Inactive = 0
				else
					Camera.CameraShakeInstance.CameraShakeState.Inactive = 3
				end
			end)
		end
	end)
end



Setting:Toggle("Anti AFK", true, function()
local vu = game:GetService("VirtualUser")
repeat wait() until game:IsLoaded() 
	game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   end)
end)

	Setting:Toggle("Auto Rejoin",true,function(value)
		_G.AutoRejoin = value
	end)

	spawn(function()
	    while wait() do
	        if _G.AutoRejoin then
	                getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                            game:GetService("TeleportService"):Teleport(game.PlaceId)
                        end
                     end)
	            end
	        end
	    end)
    
    Setting:Toggle("No Clip",_G.NoClip,function()
        _G.NoClip = value
    end)
    function Click()
    game:GetService("RunService").RenderStepped:Connect(function()
                game:GetService'VirtualUser':CaptureController()
            end)
			    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
        end
Setting:Toggle("Invisble Mob",false,function(value)
    _G.inv = value
    while _G.inv do wait()
        pcall(function()
for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
	if v.ClassName == "MeshPart" then
	v.Transparency = 1
end
end
for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
	if v.Name == "Head" then
	v.Transparency = 1
end
end
	for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
		if v.ClassName == "Accessory" then
			v.Handle.Transparency = 1
		end
	end
	for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
		if v.ClassName == "Decal" then
		v.Transparency = 1
		end
end
end)
end
end)

 Setting:Toggle("Auto Set Spawn Points",false,function(value)
        _G.AutoSetSpawn = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoSetSpawn then
                    if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                    end
                end
            end
        end)
    end)
    
     Setting:Toggle("White Screen [ Booster FPS ]",_G.WhiteScreen,function(value)
    _G.WhiteScreen = value
if _G.WhiteScreen  then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
else
    game:GetService("RunService"):Set3dRenderingEnabled(true)
end
end)

	Setting:Toggle("Auto Ken Haki", false,function(Value)
		AUTOHAKIObs = Value  
	end)
Setting:Toggle("Auto Haki", true,function(vu)
      _G.AutoHakiBuso = vu
   end)

     spawn(function()
      while wait(.1) do
         if _G.AutoHakiBuso then
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
               game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            end
         end
      end
     end)
     
    Setting:Toggle("Remove Death Effect",_G.Remove_EffectDeath,function(value)
     _G.Remove_EffectDeath = value
    end)

spawn(function()
    game:GetService('RunService').Stepped:Connect(function()
        if _G.Remove_EffectDeath or _G.AutoKaitan then
            for i, v in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) do
                if v.Name == "Death" then
                    v:Destroy() 
                end
            end
        end
    end)
end)

    Setting:Toggle("Remove Sound",_G.Remove_Effect,function(value)
        _G.Remove_Effect = value
	end)

spawn(function()
    game:GetService('RunService').Stepped:Connect(function()
        if _G.Remove_Effect or _G.AutoKaitan then
            for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                if v.Name == "CurvedRing" or v.Name == "SwordSlash" or v.Name == "Sounds" or v.Name == "SlashHit" or v.Name == "DamageCounter" then--or v.Name == "SlashHit"
                    v:Destroy() 
                end
            end
        end
    end)
end)

spawn(function()
	while task.wait() do
		pcall(function()
			if _G.Auto_Farm_Level and _G.Select_Mode_Farm == "Level Farm" and _G.Select_Mode_Farm == "Easy Mode" and _G.Select_Mode_Farm == "Hard Mode" and _G.Select_Mode_Farm == "Fast Mode" and _G.Select_Mode_Farm == "No Quest" then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Name == Ms and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
						v.Humanoid.WalkSpeed = 0
						v.Humanoid.JumpPower = 0
						v.HumanoidRootPart.Size = Vector3.new(60,60,60)
						v.HumanoidRootPart.CanCollide = false
						v.Head.CanCollide = false
						v.HumanoidRootPart.CFrame = FarmPos
						if v.Humanoid:FindFirstChild('Animator') then
							v.Humanoid.Animator:Destroy()
						end
						v.Humanoid:ChangeState(11)
						v.Humanoid:ChangeState(14)
						sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
					end
				end
			end
		end)
	end
end)

  Setting:Toggle("Remove Attack",_G.RemoveAnimation,function(value)
         _G.RemoveAnimation = value
	end)

		Stats:Seperator(" Stats ")
    
local Point = Stats:Label("Point : ")
local Melee = Stats:Label("Melee : ")
local Defense = Stats:Label("Defense : ")
local Sword = Stats:Label("Sword : ")
local Gun = Stats:Label("Gun : ")
local Fruit = Stats:Label("Fruit : ")
spawn(function()
    while wait() do
        Point:Set("Point : "..game.Players.localPlayer.Data.Points.Value)
        Melee:Set("Melee : "..game.Players.localPlayer.Data.Stats.Melee.Level.Value)
        Defense:Set("Defense : "..game.Players.localPlayer.Data.Stats.Defense.Level.Value)
        Sword:Set("Sword : "..game.Players.localPlayer.Data.Stats.Sword.Level.Value)
        Gun:Set("Gun : "..game.Players.localPlayer.Data.Stats.Gun.Level.Value)
        Fruit:Set("Fruit : "..game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value)
        if _G.LockLevel == true then
            if game:GetService("Players").LocalPlayer.Data.Level.Value >= _G.Levelclose then
                game:Shutdown()
            end
        elseif _G.LockBeli == true then
            if game:GetService("Players").LocalPlayer.Data.Beli.Value >= _G.LevelcloseBeli then
                game:Shutdown()
            end
        elseif _G.LockFragments == true then
            if game:GetService("Players").LocalPlayer.Data.Fragments.Value >= _G.LevelcloseFragments then
                game:Shutdown()
            end
        end
    end
end)

	Stats:Toggle("Auto Stats Kaitan", _G.Fullystats, function(state)
    _G.Fullystats = state
end)

    Stats:Toggle("Auto Melee",_G.Auto_Melee,function(value)
        _G.Auto_Melee = value
    end)
    
    Stats:Toggle("Auto Defense",_G.Auto_Defense,function(value)
        _G.Auto_Defense = value
    end)
    
    Stats:Toggle("Auto Sword",_G.Auto_Sword,function(value)
        _G.Auto_Sword = value
    end)
    
    Stats:Toggle("Auto Gun",_G.Auto_Gun,function(value)
        _G.Auto_Gun = value
    end)
    
    Stats:Toggle("Auto Devil Fruits",_G.Auto_DevilFruit,function(value)
        _G.Auto_DevilFruit = value
    end)
    
    if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
    _G.PointStats = 1
    Stats:Slider("Select Point",1,100,1,function(value)
        _G.PointStats = value
    end)
    else
Stats:Slider("Select Point",1,100,1,function(value)
        _G.PointStats = value
    end)
end

	

    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Melee then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Defense then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",_G.PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Sword then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",_G.PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Gun then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",_G.PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_DevilFruit then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",_G.PointStats)
                    end
                end
            end)
        end
    end)
    

P:Toggle("Use",_G.Remove_Effect,function(value)
        _G.Remove_Effect = value
	end)
	
P:Seperator(" use abot ")

Teleport:Seperator(" World   Monster")
    
    Teleport:Button("Teleport To Old World",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end)
    
    Teleport:Button("Teleport To Second Sea",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end)
    
    Teleport:Button("Teleport To Third Sea",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end)

    Teleport:Button("Stop Tween",function()
        TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        _G.Clip = false
    end)

    Teleport:Seperator(" Island")

    if World1 then
        Teleport:Dropdown("Select Island",{
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Sky Island 2",
            "Sky Island 3",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City",
            "Shank Room",
            "Mob Island"
            },function(value)
            _G.SelectIsland = value
        end)
    end
    
    if World2 then
        Teleport:Dropdown("Select Island",{
            "The Cafe",
            "Frist Spot",
            "Dark Area",
            "Flamingo Mansion",
            "Flamingo Room",
            "Green Zone",
            "Factory",
            "Colossuim",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island",
            "Ussop Island",
            "Mini Sky Island"
            },function(value)
            _G.SelectIsland = value
        end)
    end
    
    if World3 then
        Teleport:Dropdown("Select Island",{
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "MiniSky", 
            "Hydra Island",
            "Floating Turtle",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
			"Sea to Treats New"
            },function(value)
            _G.SelectIsland = value
        end)
    end
    
    Teleport:Toggle("Teleport",false,function(value)
        _G.TeleportIsland = value
        if _G.TeleportIsland == true then
            repeat wait()
                if _G.SelectIsland == "WindMill" then
                    TP(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif _G.SelectIsland == "Marine" then
                    TP(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif _G.SelectIsland == "Middle Town" then
                    TP(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif _G.SelectIsland == "Jungle" then
                    TP(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif _G.SelectIsland == "Pirate Village" then
                    TP(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif _G.SelectIsland == "Desert" then
                    TP(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif _G.SelectIsland == "Snow Island" then
                    TP(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif _G.SelectIsland == "MarineFord" then
                    TP(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif _G.SelectIsland == "Colosseum" then
                    TP( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif _G.SelectIsland == "Sky Island 1" then
                    TP(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif _G.SelectIsland == "Sky Island 2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif _G.SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif _G.SelectIsland == "Prison" then
                    TP( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif _G.SelectIsland == "Magma Village" then
                    TP(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif _G.SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectIsland == "Fountain City" then
                    TP(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif _G.SelectIsland == "Shank Room" then
                    TP(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif _G.SelectIsland == "Mob Island" then
                    TP(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif _G.SelectIsland == "The Cafe" then
                    TP(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif _G.SelectIsland == "Frist Spot" then
                    TP(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif _G.SelectIsland == "Dark Area" then
                    TP(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    TP(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.SelectIsland == "Flamingo Room" then
                    TP(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.SelectIsland == "Green Zone" then
                    TP( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif _G.SelectIsland == "Factory" then
                    TP(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif _G.SelectIsland == "Colossuim" then
                    TP( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif _G.SelectIsland == "Zombie Island" then
                    TP(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    TP(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif _G.SelectIsland == "Punk Hazard" then
                    TP(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif _G.SelectIsland == "Cursed Ship" then
                    TP(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                elseif _G.SelectIsland == "Ice Castle" then
                    TP(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif _G.SelectIsland == "Forgotten Island" then
                    TP(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif _G.SelectIsland == "Ussop Island" then
                    TP(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.SelectIsland == "Mini Sky Island" then
                    TP(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.SelectIsland == "Great Tree" then
                    TP(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    TP(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
                elseif _G.SelectIsland == "MiniSky" then
                    TP(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif _G.SelectIsland == "Port Town" then
                    TP(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif _G.SelectIsland == "Hydra Island" then
                    TP(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
                elseif _G.SelectIsland == "Floating Turtle" then
                    TP(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif _G.SelectIsland == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                elseif _G.SelectIsland == "Haunted Castle" then
                    TP(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    TP(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif _G.SelectIsland == "Peanut Island" then
                    TP(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif _G.SelectIsland == "Cake Island" then
                    TP(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
				elseif _G.SelectIsland == "Sea to Treats New" then
                    TP(CFrame.new(-1141.0223388671875, 47.25519561767578, -14204.609375))	
                end
            until not _G.TeleportIsland
        end
        StopTween(_G.TeleportIsland)
    end)

    Teleport:Seperator("Island Bypass Tp ")

    if World1 then
        Teleport:Dropdown("Select Island",{
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City"
            },function(value)
            _G.SelectWarp = value
        end)
    end
    
    if World2 then
        Teleport:Dropdown("Select Island",{
            "The Cafe",
            "Frist Spot",
            "Flamingo Room",
            "Green Zone",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island"
            },function(value)
            _G.SelectWarp = value
        end)
    end
    
    if World3 then
        Teleport:Dropdown("Select Island",{
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "Hydra Island",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
            "Sea to Treats",
            "Sea to Treats New"
            },function(value)
            _G.SelectWarp = value
        end)
    end

 Teleport:Button("Teleport",function(value)
        if _G.TeleportWarp == "Manslon" then
                elseif _G.SelectWarp == "WindMill" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Marine" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Middle Town" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Jungle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Pirate Village" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Desert" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Snow Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "MarineFord" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Colosseum" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Sky Island 1" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Prison" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Magma Village" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Under Water Island" then
					wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectWarp == "Fountain City" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Shank Room" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mob Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "The Cafe" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Frist Spot" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Dark Area" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Flamingo Mansion" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()      
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Flamingo Room" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2284.4140625, 15.152037620544, 875.72534179688)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()        
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Green Zone" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()      
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Factory" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.12698364258, 211.16171264648, -427.54049682617)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()      
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Colossuim" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()  
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")      
                elseif _G.SelectWarp == "Zombie Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()       
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint") 
                elseif _G.SelectWarp == "Two Snow Mountain" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()    
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")    
                elseif _G.SelectWarp == "Punk Hazard" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Cursed Ship" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(923.40197753906, 125.05712890625, 32885.875)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ice Castle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Forgotten Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ussop Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mini Sky Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-288.74060058594, 49326.31640625, -35248.59375)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Great Tree" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Castle On The Sea" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5085.23681640625, 316.5072021484375, -3156.202880859375)
                elseif _G.SelectWarp == "MiniSky" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Port Town" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Hydra Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5749.7861328125, 611.9736938476562, -276.2497863769531)
                elseif _G.SelectWarp == "Floating Turtle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mansion" then
					wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Haunted Castle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ice Cream Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Peanut Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375)
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Cake Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375) 
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Sea to Treats Old" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(508.21466064453125, 25.07753562927246, -12438.2294921875) 
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Sea to Treats New" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1141.0223388671875, 47.25519561767578, -14204.609375) 
                    game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                 end
 end)    
           

    Teleport:Seperator("NPC")

 if World1 then
        Teleport:Dropdown("Select NPC",{
            "Random Devil Fruit",
            "Blox Fruits Dealer",
            "Remove Devil Fruit",
            "Ability Teacher",
            "Dark Step", 
            "Electro",
            "Fishman Karate"
            },function(value)
            _G.SelectNPC = value
        end)
    end

    if World2 then
        Teleport:Dropdown("Select NPC",{
            "Dargon Berath",
            "Mtsterious Man",
            "Mysterious Scientist",
            "Awakening Expert",
            "Nerd", 
            "Bar Manager",
            "Blox Fruits Dealer",
            "Trevor",
            "Enhancement Editor",
            "Pirate Recruiter",
            "Marines Recruiter",
            "Chemist",
            "Cyborg",
            "Ghoul Mark",
            "Guashiem",
            "El Admin",
            "El Rodolfo",
            "Arowe"
            },function(value)
            _G.SelectNPC = value
        end)
    end

    if World3 then
        Teleport:Dropdown("Select NPC",{
            "Blox Fruits Dealer",
            "Remove Devil Fruit",
            "Horned Man",
            "Hungey Man",
            "Previous Hero", 
            "Butler",
            "Lunoven",
            "Trevor",
            "Elite Hunter",
            "Player Hunter",
            "Uzoth"
            },function(value)
            _G.SelectNPC = value
        end)
    end

    Teleport:Toggle("Teleport",_G.TeleportNPC,function(value)
        _G.TeleportNPC = value
        if _G.TeleportNPC == true then
            repeat wait()
                if _G.SelectNPC == "Dargon Berath" then
                    TP(CFrame.new(703.372986, 186.985519, 654.522034, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Mtsterious Man" then
                    TP(CFrame.new(-2574.43335, 1627.92371, -3739.35767, 0.378697902, -9.06400288e-09, 0.92552036, -8.95582009e-09, 1, 1.34578926e-08, -0.92552036, -1.33852689e-08, 0.378697902))
                elseif _G.SelectNPC == "Mysterious Scientist" then
                    TP(CFrame.new(-6437.87793, 250.645355, -4498.92773, 0.502376854, -1.01223634e-08, -0.864648759, 2.34106086e-08, 1, 1.89508653e-09, 0.864648759, -2.11940012e-08, 0.502376854))
                elseif _G.SelectNPC == "Awakening Expert" then
                    TP(CFrame.new(-408.098846, 16.0459061, 247.432846, 0.028394036, 6.17599138e-10, 0.999596894, -5.57905944e-09, 1, -4.59372484e-10, -0.999596894, -5.56376767e-09, 0.028394036))
                elseif _G.SelectNPC == "Nerd" then
                    TP(CFrame.new(-401.783722, 73.0859299, 262.306702, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Bar Manager" then
                    TP(CFrame.new(-385.84726, 73.0458984, 316.088806, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Blox Fruits Dealer" then
                    TP(CFrame.new(-450.725464, 73.0458984, 355.636902, -0.780352175, -2.7266168e-08, 0.625340283, 9.78516468e-09, 1, 5.58128797e-08, -0.625340283, 4.96727601e-08, -0.780352175))
                elseif _G.SelectNPC == "Trevor" then
                    TP(CFrame.new(-341.498322, 331.886444, 643.024963, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Plokster" then
                    TP( CFrame.new(-1885.16016, 88.3838196, -1912.28723, -0.513468027, 0, 0.858108759, 0, 1, 0, -0.858108759, 0, -0.513468027))
                elseif _G.SelectNPC == "Enhancement Editor" then
                    TP(CFrame.new(-346.820221, 72.9856339, 1194.36218, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Pirate Recruiter" then  
                    TP(CFrame.new(-428.072998, 72.9495239, 1445.32422, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Marines Recruiter" then
                    TP(CFrame.new(-1349.77295, 72.9853363, -1045.12964, 0.866493046, 0, -0.499189168, 0, 1, 0, 0.499189168, 0, 0.866493046))
                elseif _G.SelectNPC == "Chemist" then
                    TP( CFrame.new(-2777.45288, 72.9919434, -3572.25732, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Ghoul Mark" then
                    TP(CFrame.new(635.172546, 125.976357, 33219.832, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Cyborg" then
                    TP(CFrame.new(629.146851, 312.307373, -531.624146, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Guashiem" then
                    TP(CFrame.new(937.953003, 181.083359, 33277.9297, 1, -8.60126406e-08, 3.81773896e-17, 8.60126406e-08, 1, -1.89969598e-16, -3.8177373e-17, 1.89969598e-16, 1))
                elseif _G.SelectNPC == "El Admin" then
                    TP(CFrame.new(1322.80835, 126.345039, 33135.8789, 0.988783717, -8.69797603e-08, -0.149354503, 8.62223786e-08, 1, -1.15461916e-08, 0.149354503, -1.46101409e-09, 0.988783717))
                elseif _G.SelectNPC == "El Rodolfo" then
                    TP(CFrame.new(941.228699, 40.4686775, 32778.9922, -0.818029106, -1.19524382e-08, 0.575176775, -1.28741648e-08, 1, 2.47053866e-09, -0.575176775, -5.38394795e-09, -0.818029106))
                elseif _G.SelectNPC == "Arowe" then
                    TP(CFrame.new(-1994.51038, 125.519142, -72.2622986, -0.16715166, -6.55417338e-08, -0.985931218, -7.13315558e-08, 1, -5.43836585e-08, 0.985931218, 6.12376851e-08, -0.16715166))
                elseif _G.SelectNPC == "Random Devil Fruit" then
                    TP(CFrame.new(-1436.19727, 61.8777695, 4.75247526, -0.557794094, 2.74216543e-08, 0.829979479, 5.83273234e-08, 1, 6.16037932e-09, -0.829979479, 5.18467118e-08, -0.557794094))
                elseif _G.SelectNPC == "Blox Fruits Dealer" then
                    TP(CFrame.new(-923.255066, 7.67800522, 1608.61011, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Remove Devil Fruit" then
                    TP(CFrame.new(5664.80469, 64.677681, 867.85907, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Ability Teacher" then
                    TP(CFrame.new(-1057.67822, 9.65220833, 1799.49146, -0.865874112, -9.26330159e-08, 0.500262439, -7.33759435e-08, 1, 5.816689e-08, -0.500262439, 1.36579752e-08, -0.865874112))
                elseif _G.SelectNPC == "Dark Step" then
                    TP( CFrame.new(-987.873047, 13.7778397, 3989.4978, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Electro" then
                    TP(CFrame.new(-5389.49561, 13.283, -2149.80151, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Fishman Karate" then
                    TP( CFrame.new(61581.8047, 18.8965912, 987.832703, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Random Devil Fruit" then
                    TP(CFrame.new(-12491, 337, -7449))
                elseif _G.SelectNPC == "Blox Fruits Dealer" then
                    TP(CFrame.new(-12511, 337, -7448))
                elseif _G.SelectNPC == "Remove Devil Fruit" then
                    TP(CFrame.new(-5571, 1089, -2661))
                elseif _G.SelectNPC == "Horned Man" then
                    TP(CFrame.new(-11890, 931, -8760))
                elseif _G.SelectNPC == "Hungey Man" then
                    TP(CFrame.new(-10919, 624, -10268))
                elseif _G.SelectNPC == "Previous Hero" then
                    TP(CFrame.new(-10368, 332, -10128))
                elseif _G.SelectNPC == "Butler" then
                    TP(CFrame.new(-5125, 316, -3130))
                elseif _G.SelectNPC == "Lunoven" then
                    TP(CFrame.new(-5117, 316, -3093))
                elseif _G.SelectNPC == "Elite Hunter" then
                    TP(CFrame.new(-5420, 314, -2828))
                elseif _G.SelectNPC == "Player Hunter" then
                    TP(CFrame.new(-5559, 314, -2840))
                elseif _G.SelectNPC == "Uzoth" then
                    TP(CFrame.new(-9785, 852, 6667))
                end
            until not _G.TeleportNPC
        end
        StopTween(_G.TeleportNPC)
    end)    
    
    
    
    
    if World1 then
    Dungeon:Label("Do Not Dungeon World First 1")
end

if World2 or World3 then
    local TimeRaid = Dungeon:Label("Wait For Dungeon")

    spawn(function()
        pcall(function()
            while wait() do
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                    TimeRaid:Set(game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
                else
                    TimeRaid:Set("Wait For Dungeon")
                end
            end
        end)
    end)

    Dungeon:Toggle("Auto Farm Dungeon",_G.Auto_Dungeon,function(value)
        _G.Auto_Dungeon = value
        StopTween(_G.Auto_Dungeon)
    end)
    
    spawn(function()
        pcall(function() 
            while wait() do
                if _G.Auto_Dungeon then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                pcall(function()
                                    repeat wait()
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        v.Humanoid.Health = 0
                                        v.HumanoidRootPart.CanCollide = false
                                    until not _G.Auto_Dungeon or not v.Parent or v.Humanoid.Health <= 0
                                end)
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Auto_Dungeon then
                  if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                            TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                            TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                            TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                            TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,80,100))
                        end
                    end
                end
            end
        end)
    end)

Dungeon:Toggle("Auto Farm Kill Mob",_G.Raid,function(kill)
    _G.Raid = kill
    StopTween(_G.Raid)
 end)

  spawn(function()
     pcall(function() 
     while wait() do
          if _G.Raid then
              for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                  if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                     Pos = (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                     if Pos <= 1000 then 
                     pcall(function()
                          repeat wait()
                              v.HumanoidRootPart.CanCollide = false
                              v.HumanoidRootPart.Size = Vector3.new(120,120,120)
                              v.HumanoidRootPart.Transparency = 1
                              v.Humanoid.WalkSpeed = 0
                              v.Humanoid.JumpPower = 0 
                              EquipWeapon(_G.SelectWeapon)
                              TPDOUN(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame*CFrame.new(0,45,0))
                             game:GetService'VirtualUser':CaptureController()
                             game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                          until not _G.Raid or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1")
                      end)
                     end
                 else
                     if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                         Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- Ã Â¸Ë†Ã Â¸Â¸Ã Â¸â€Ã Â¸â€”Ã Â¸ÂµÃ Â¹Ë†Ã Â¸Ë†Ã Â¸Â°Ã Â¹â€žÃ Â¸â€º Position Only
                         Speed = 150 -- Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¹â‚¬Ã Â¸Â£Ã Â¹â€¡Ã Â¸Â§Ã Â¸â€šÃ Â¸Â­Ã Â¸â€¡Ã Â¸Â¡Ã Â¸Â¶Ã Â¸â€¡
                         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Cubic)
                         tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,20,0)})
                         tween:Play()
                     elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                         Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- Ã Â¸Ë†Ã Â¸Â¸Ã Â¸â€Ã Â¸â€”Ã Â¸ÂµÃ Â¹Ë†Ã Â¸Ë†Ã Â¸Â°Ã Â¹â€žÃ Â¸â€º Position Only
                         Speed = 150 -- Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¹â‚¬Ã Â¸Â£Ã Â¹â€¡Ã Â¸Â§Ã Â¸â€šÃ Â¸Â­Ã Â¸â€¡Ã Â¸Â¡Ã Â¸Â¶Ã Â¸â€¡
                         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Cubic)
                         tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,20,0)})
                         tween:Play()
                     elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                         Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- Ã Â¸Ë†Ã Â¸Â¸Ã Â¸â€Ã Â¸â€”Ã Â¸ÂµÃ Â¹Ë†Ã Â¸Ë†Ã Â¸Â°Ã Â¹â€žÃ Â¸â€º Position Only
                         Speed = 150 -- Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¹â‚¬Ã Â¸Â£Ã Â¹â€¡Ã Â¸Â§Ã Â¸â€šÃ Â¸Â­Ã Â¸â€¡Ã Â¸Â¡Ã Â¸Â¶Ã Â¸â€¡
                         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Cubic)
                         tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,20,0)})
                         tween:Play()
                     elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                         Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- Ã Â¸Ë†Ã Â¸Â¸Ã Â¸â€Ã Â¸â€”Ã Â¸ÂµÃ Â¹Ë†Ã Â¸Ë†Ã Â¸Â°Ã Â¹â€žÃ Â¸â€º Position Only
                         Speed = 150 -- Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¹â‚¬Ã Â¸Â£Ã Â¹â€¡Ã Â¸Â§Ã Â¸â€šÃ Â¸Â­Ã Â¸â€¡Ã Â¸Â¡Ã Â¸Â¶Ã Â¸â€¡
                         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Cubic)
                         tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,20,0)})
                         tween:Play()
                     elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                         Distance = (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- Ã Â¸Ë†Ã Â¸Â¸Ã Â¸â€Ã Â¸â€”Ã Â¸ÂµÃ Â¹Ë†Ã Â¸Ë†Ã Â¸Â°Ã Â¹â€žÃ Â¸â€º Position Only
                         Speed = 150 -- Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¹â‚¬Ã Â¸Â£Ã Â¹â€¡Ã Â¸Â§Ã Â¸â€šÃ Â¸Â­Ã Â¸â€¡Ã Â¸Â¡Ã Â¸Â¶Ã Â¸â€¡
                         tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Cubic)
                         tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,20,0)})
                         tween:Play()
                     else
                      if World2 then                        
                              Lab2 = Vector3.new(-6438.73535, 250.645355, -4501.50684)
                              local Distance = (Lab2 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                              local Speed = 150 -- Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¹â‚¬Ã Â¸Â£Ã Â¹â€¡Ã Â¸Â§Ã Â¸â€šÃ Â¸Â­Ã Â¸â€¡Ã Â¸Â¡Ã Â¸Â¶Ã Â¸â€¡
                              tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Cubic)
                              tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-6438.73535, 250.645355, -4501.50684)})
                              tween:Play()
                              _G.Clip = true
                              wait(Distance/Speed)   
                              _G.Clip = false                
                      end
                      if World3 then                        
                              Lab3 = Vector3.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818)
                              local Distance = (Lab3 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                              local Speed = 150 -- Ã Â¸â€žÃ Â¸Â§Ã Â¸Â²Ã Â¸Â¡Ã Â¹â‚¬Ã Â¸Â£Ã Â¹â€¡Ã Â¸Â§Ã Â¸â€šÃ Â¸Â­Ã Â¸â€¡Ã Â¸Â¡Ã Â¸Â¶Ã Â¸â€¡
                              tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Cubic)
                              tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818)})
                              tween:Play() 
                              _G.Clip = true
                              wait(Distance/Speed)   
                              _G.Clip = false    
                     end        
                   end       
                 end
              end
          end
      end
     end)
  end)

    Dungeon:Toggle("Kill Aura",_G.KillAura,function(vu)
   _G.KillAura = vu
end)

spawn(function()
  pcall(function() 
  while wait() do
       if _G.KillAura then
           for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
               if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                   pcall(function()
                       repeat wait()
                           sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                           v.Humanoid.Health = 0
                           v.HumanoidRootPart.CanCollide = false
                           v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                           v.HumanoidRootPart.Transparency = 1
                       until not _G.KillAura or not v.Parent or v.Humanoid.Health <= 0
                   end)
               end
           end
       end
   end
  end)
end)

Dungeon:Toggle("Auto Raid",_G.Auto_Raid,function(vu)
	_G.Auto_Raid = vu
    StopTween(_G.Auto_Raid)
end)

Dungeon:Toggle("Auto Raid Hop",_G.Auto_Raid_Hop,function(vu)
	_G.Auto_Raid_Hop = vu
end)

Dungeon:Toggle("Next Islands",_G.Next_Islands,function(vu)
	_G.Next_Islands = vu
    StopTween(_G.Next_Islands)
end)
if _G.Auto_Raid_Hop then
end

if type(_G.Select_Map) ~= 'string' then
    _G.SelectChip = "Flame"
end
function Buy_Chip()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
end
spawn(function()
	while wait(.5) do
		pcall(function()
			if _G.Auto_Raid then
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							repeat wait(.1)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								v.Humanoid.Health = 0
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v.HumanoidRootPart.Transparency = 0.5
							until not _G.Auto_Raid or not v.Parent or v.Humanoid.Health <= 0
						end
					end
				end
			else
				wait(3)
			end
		end)
	end
end)
spawn(function()
	while wait(.5) do
		pcall(function()
			if _G.Next_Islands then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 5" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2300 then
							TP(v.CFrame*CFrame.new(0,70,0))
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 4" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							TP(v.CFrame*CFrame.new(0,70,0))
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2100 then
							TP(v.CFrame*CFrame.new(0,70,0))
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							TP(v.CFrame*CFrame.new(0,10,0))
						end
					end
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
						if v.Name == "Island 1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
							TP(v.CFrame*CFrame.new(0,70,0))
						end
					end
				else
					wait(1)
				end
			else
				wait(2)
			end
		end)
	end
end)

spawn(function()
	while wait(2) do
		pcall(function()
			if _G.Auto_Raid_Farm then
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
					_G.StopTween = true
				elseif game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
					_G.StopTween = false
				end
			end
		end)
	end
end)

spawn(function()
	while wait(.5) do
		pcall(function()
			if _G.Auto_Raid then
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
						_G.Auto_Raid_Farm = true
						if World2 then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
							repeat wait(1)
							until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true
						elseif World3 then
							fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
							repeat wait(1)
							until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true
						end
					else
						if _G.Auto_Raid_Hop or _G.Melee_Hop then
							_G.Have_Fruit = nil
							Raid_FG()
						end
						Buy_Chip()
						wait(1)
						if _G.Auto_Raid_Hop and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
							Hop()
							wait(50)
						elseif _G.Auto_Raid_Farm and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
							_G.Stop_Tween = nil
							_G.Auto_Raid_Farm = nil
local AkaliNotif = loadstring(game:HttpGet("https://pst.klgrth.io/paste/kvtu4/raw"))();
local Notify = AkaliNotif.Notify;

wait(1);

Notify({
Description = "There are no devil fruits left.";
Title = "NEVA HUB";
Duration = 5;
});
						end
					end
				elseif game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
					repeat wait(1)
					until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false
					if _G.Auto_Awaken then
						wait(2)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
					end
				end
			end
		end)
	end
end)


    Dungeon:Toggle("Auto Awakener",_G.Auto_Awakener,function(value)
        _G.Auto_Awakener = value
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Awakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end)
    end)
end

if World2 or World3 then
    
    Dungeon:Dropdown("Select Chips",{"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},function(value)
        _G.SelectChip = value
    end)
                                                                                            
    Dungeon:Toggle("Auto Select Dungeon",_G.AutoSelectDungeon,function(value)
        _G.AutoSelectDungeon = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoSelectDungeon then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame") then
                        _G.SelectChip = "Flame"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice") then
                        _G.SelectChip = "Ice"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake") then
                        _G.SelectChip = "Quake"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light") then
                        _G.SelectChip = "Light"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark") then
                        _G.SelectChip = "Dark"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String") then
                        _G.SelectChip = "String"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble") then
                        _G.SelectChip = "Rumble"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma") then
                        _G.SelectChip = "Magma"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        _G.SelectChip = "Human: Buddha"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand") then
                        _G.SelectChip = "Sand"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                        _G.SelectChip = "Bird: Phoenix"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough") then
                        _G.SelectChip = "Dough"
                    else
                        _G.SelectChip = "Flame"
                    end
                end)
            end
        end
    end)
    
    Dungeon:Toggle("Auto Start Raid",_G.Auto_StartRaid,function(value)
        _G.Auto_StartRaid = value
    end)
    
    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.Auto_StartRaid then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                            if World2 then
                                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                            elseif World3 then
                                fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    Dungeon:Button("Start Raid",function()
        if World2 then
            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif World3 then
            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
        end
    end)

    Dungeon:Toggle("Auto Buy Chip",_G.AutoBuyChip,function(value)
        _G.AutoBuyChip = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoBuyChip then
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                        end
                    end
                end
            end
        end)
    end)

    Dungeon:Button("Buy Chip Select",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip)
    end)
end

if World2 or World3 then
    Dungeon:Button("Next Island",function()
        pcall(function()
            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,70,100))
            end
        end)
    end)
end

    if World2 then
        Dungeon:Button("Teleport to Lab",function()
            TP(CFrame.new(-6438.73535, 250.645355, -4501.50684))
            end)
    elseif World3 then
        Dungeon:Button("Teleport to Lab",function()
            TP(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
        end)
    end

    if World2 then
        Dungeon:Button("Awakening Room",function()
            TP(CFrame.new(266.227783, 1.39509034, 1857.00732))
        end)
    elseif World3 then
        Dungeon:Button("Awakening Room",function()
            TP(CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062))
        end)
    end
    
    Dungeon:Seperator("\\\\\  ESP  //")
    
    Dungeon:Toggle("ESP Player",false,function(value)
        ESPPlayer = value
        while ESPPlayer do wait()
            UpdatePlayerChams()
        end
    end)
    spawn(function()
		while wait() do
			if ESPPlayer then
				UpdatePlayerChams()
			end
		end
	end)
    
    Dungeon:Toggle("ESP Chest",false,function(value)
        ChestESP = value
        while ChestESP do wait()
            UpdateChestEsp() 
        end
    end)
    
    Dungeon:Toggle("ESP Fruit",false,function(value)
        DevilFruitESP = value
        while DevilFruitESP do wait()
            UpdateBfEsp() 
        end
    end)
    
if World2 then
    Dungeon:Toggle("ESP Flower",false,function(value)
        FlowerESP = value
        while FlowerESP do wait()
            UpdateFlowerEsp() 
        end
    end)
end


        Dungeon:Toggle('Npc ESP',false, function(nec)
            NpcESP = nec
        end)
        spawn(function()
            while wait() do
                pcall(function()
                    if NpcESP then
                        for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                            if v:FindFirstChild('HumanoidRootPart') then
                                if not v:FindFirstChild("NpcEspes") then
                                    local BillboardGui = Instance.new("BillboardGui")
                                    local TextLabel = Instance.new("TextLabel")

                                    BillboardGui.Parent = v
                                    BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                    BillboardGui.Active = true
                                    BillboardGui.Name = "NpcEspes"
                                    BillboardGui.AlwaysOnTop = true
                                    BillboardGui.LightInfluence = 1.000
                                    BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                                    BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                                    TextLabel.Parent = BillboardGui
                                    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                    TextLabel.BackgroundTransparency = 1.000
                                    TextLabel.Size = UDim2.new(0, 200, 0, 50)
                                    TextLabel.Font = Enum.Font.GothamBold
                                    TextLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
                                    TextLabel.Text.Size = 35
                                end
                                local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                                v.NpcEspes.TextLabel.Text = v.Name.." - ["..Dis.." M]"
                            end
                        end
                    else
                        for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                            if v:FindFirstChild("NpcEspes") then
                                v.NpcEspes:Destroy()
                            end
                        end
                    end
                end)
            end
        end)
    
    Dungeon:Toggle("ESP Island",IslandESP,function(value)
        IslandESP = value
        while IslandESP do wait()
            UpdateIslandESP() 
        end
    end)

if World2 or World3 then
	Dungeon:Toggle("ESP Sea Beast",SeaBeastsESP,function(value)
        SeaBeastsESP = value
        while SeaBeastsESP do wait()
            UpdateSeaBeastsESP() 
        end
    end)
end

if World3 then
	Dungeon:Toggle("ESP Real Fruit",esprealfruit,function(a)
		RealFruitESP = a
		UpdateRealFruitChams() 
	end)

   spawn(function()
	  while wait() do
        if RealFruitESP then
		   UpdateRealFruitChams()
			end
		end
	end)
end

Shop:Seperator("Abilities ")
    
    Shop:Button("Buy Geppo [ $10,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
    end)
    
    Shop:Button("Buy Buso Haki [ $25,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
    end)
    
    Shop:Button("Buy Soru [ $25,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    end)
    
    Shop:Button("Buy Observation Haki [ $750,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
    end)
    
Shop:Toggle("Auto Buy Abilities", false, function(t)
    Abilities = t
    while Abilities do wait(.1)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    end
end)

Shop:Seperator("Boats")

BoatList = {
    "Pirate Sloop",
    "Enforcer",
    "Rocket Boost",
    "Dinghy",
    "Pirate Basic",
    "Pirate Brigade"
}

spawn(function()
    while wait() do
        pcall(function()
            if SelectBoat == "Pirate Sloop" then
                _G.SelectBoat = "PirateSloop"
            else
                if SelectBoat == "Enforcer" then
                    _G.SelectBoat = "Enforcer"
                else
                    if SelectBoat == "RocketBoost" then
                        _G.SelectBoat = "RocketBoost"
                    else
                        if SelectBoat == "PirateBasic" then
                            _G.SelectBoat = "PirateBasic"
                        else
                            if SelectBoat == "PirateBrigade" then
                                _G.SelectBoat = "PirateBrigade"
                            end
                        end
                    end
                end
            end
        end)
    end
end)

Shop:Dropdown("Select Boats",BoatList,function(value)
    SelectBoat = value
end)

Shop:Button("Buy Boat",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat",_G.SelectBoat)
end)

    Shop:Seperator("Fighting Style ")
    
    Shop:Button("Buy Black Leg [ $150,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end)
    
    Shop:Button("Buy Electro [ $550,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end)
    
    Shop:Button("Buy Fishman Karate [ $750,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end)
    
    Shop:Button("Buy Dragon Claw [ $1,500 Fragments ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
    end)
    
    Shop:Button("Buy Superhuman [ $3,000,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end)
    
    Shop:Button("Buy Death Step [ $5,000 Fragments $5,000,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end)
    
    Shop:Button("Buy Sharkman Karate [ $5,000 Fragments $2,500,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end)
    
    Shop:Button("Buy Electric Claw [ $5,000 Fragments $3,000,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end)
    
    Shop:Button("Buy Dragon Talon [ $5,000 Fragments $3,000,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end)

    Shop:Button("Buy God Human [ $5,000 Fragments $5,000,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end)
    -----Shop----------------
    
    Shop:Seperator("Sword ")
    
    Shop:Button("Cutlass [ $1,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
    end)

    Shop:Button("Katana [ $1,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
    end)
    
    Shop:Button("Iron Mace [ $25,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
    end)
    
    Shop:Button("Dual Katana [ $12,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
    end)
    
    Shop:Button("Triple Katana [ $60,000 Beli ]", function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
    end)
    
    Shop:Button("Pipe [ $100,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
    end)
    
    Shop:Button("Dual-Headed Blade [ $400,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
    end)
    
    Shop:Button("Bisento [ $1,200,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
    end)
    
    Shop:Button("Soul Cane [ $750,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
    end)

    Shop:Button("Pole v.2 [ 5,000 Fragments ]",function()
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
	end)

    Shop:Toggle("Yama Sword [ Elite Hunter 30 ]",_G.AutoYama,function(value)
        _G.AutoYama = value
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoYama then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                    repeat wait(.1)
                        fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                end
            end
        end
    end)


    Shop:Seperator("Gun ")
    
    Shop:Button("Slingshot [ $5,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
    end)
    
    Shop:Button("Musket [ $8,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
    end)
    
    Shop:Button("Flintlock [ $10,500 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
    end)
    
    Shop:Button("Refined Slingshot [ $30,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
    end)
    
    Shop:Button("Refined Flintlock [ $65,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Refined Flintlock"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
    
    Shop:Button("Cannon [ $100,000 Beli ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
    end)
    
    Shop:Button("Kabucha [ 1,500 Fragments]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
    end)

          Shop:Button("Bizarre Rifle [ 250 Ectoplasm ]", function()
                                    local A_1 = "Ectoplasm"
                                    local A_2 = "Buy"
                                    local A_3 = 1
                                    local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                                    Event:InvokeServer(A_1, A_2, A_3) 
                                    local A_1 = "Ectoplasm"
                                    local A_2 = "Buy"
                                    local A_3 = 1
                                    local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
                                    Event:InvokeServer(A_1, A_2, A_3)
                                end)

    ------------Bone------------------
    
    Shop:Seperator("Bones")
    
    Shop:Button("Buy Surprise [ $50 Bone ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
    end)
    
    Shop:Button("Stat Refund [ $50 Bone ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,2)
    end)
        
    Shop:Button("Race Reroll [ $50 Bone ]",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,3)
    end)
    
    ------------Stat------------------
    
    Shop:Seperator("Stat ")

Shop:Button("Reset Stats (Use 2.5K Fragments)", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)

Shop:Button("Random Race (Use 3K Fragments)", function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
end)
    --------------Accessories-----------------
    	Shop:Seperator("  Accessories  ")
	Shop:Button("Black Cape [ $50,000 Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Black Cape"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	Shop:Button("Swordsman Hat [ 150k Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Swordsman Hat"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	Shop:Button("Tomoe Ring [ $500k Beli ]",function()
		local args = {
			[1] = "BuyItem",
			[2] = "Tomoe Ring"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	
	Shop:Seperator("Race")
	Shop:Button("Race Ghoul (Use 2.5K Fragments)",function()
		local args = {
			[1] = "Ectoplasm",
			[2] = "BuyCheck",
			[3] = 4
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "Ectoplasm",
			[2] = "Change",
			[3] = 4
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	Shop:Button("Race Cyborg (Use 2.5K Fragments)",function()
		local args = {
			[1] = "CyborgTrainer",
			[2] = "Buy"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	
    D:Seperator("Sniper")
    
    FruitList = {
        "Bomb-Bomb",
        "Spike-Spike",
        "Chop-Chop",
        "Spring-Spring",
        "Kilo-Kilo",
        "Spin-Spin",
        "Bird: Falcon",
        "Smoke-Smoke",
        "Flame-Flame",
        "Ice-Ice",
        "Sand-Sand",
        "Dark-Dark",
        "Revive-Revive",
        "Diamond-Diamond",
        "Light-Light",
        "Love-Love",
        "Rubber-Rubber",
        "Barrier-Barrier",
        "Magma-Magma",
        "Door-Door",
        "Quake-Quake",
        "Human-Human: Buddha",
        "String-String",
        "Bird-Bird: Phoenix",
        "Rumble-Rumble",
        "Paw-Paw",
        "Gravity-Gravity",
        "Dough-Dough",
        "Venom-Venom",
        "Shadow-Shadow",
        "Control-Control",
        "Soul-Soul",
        "Dragon-Dragon"
    }
    
    _G.SelectFruit = ""
    D:Dropdown("Select Fruits Sniper",FruitList,function(value)
        _G.SelectFruit = value
    end)
    
    D:Toggle("Auto Buy Fruit Sniper",_G.AutoBuyFruitSniper,function(value)
        _G.AutoBuyFruitSniper = value
    end)

    D:Seperator("Others")
    
    D:Dropdown("Select Fruits Eat",FruitList,function(value)
        _G.SelectFruitEat = value
    end)
    
    D:Toggle("Auto Eat Fruit",_G.AutoEatFruit,function(value)
        _G.AutoEatFruit = value
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoEatFruit then
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer()
                end
            end
        end)
    end)
    
    D:Toggle("Auto Eat Fruit Hop",_G.AutoEatFruitHop,function(value)
        _G.AutoEatFruitHop = value
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do wait(10)
                if _G.AutoEatFruitHop and _G.SelectFruitEat ~= nil then
                    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat) or not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(_G.SelectFruitEat) then
                        Hop()
                    else
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer()
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoBuyFruitSniper then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectFruit)
                end 
            end
        end)
    end)

D:Toggle("Get Fruit Inventory",_G.Get_Fruit,function(vu)
	_G.Get_Fruit = vu
end)
spawn(function()
    while wait(.5) do
        pcall(function()
            if _G.Get_Fruit then
                if Inventory_Fruit then
                    Inventory_Fruit = nil
                end
                fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
                for i,v in pairs(fruit) do
                    if v["Price"] < 10000000 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
                    end
                end
			else
				wait(2)
            end
        end)
    end
end)

    D:Button("Random Fruit",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    end)

    D:Toggle("Auto Random Fruit",_G.Random_Auto,function(value)
        _G.Random_Auto = value
    end)

 spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Random_Auto then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                end 
            end
        end)
    end)

    D:Toggle("Auto Drop Fruit",_G.DropFruit,function(value)
        _G.DropFruit = value
    end)
        
    spawn(function()
        while wait() do
            if _G.DropFruit then
                pcall(function()
                    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                        if string.find(v.Name, "Fruit") then
                            EquipWeapon(v.Name)
                            wait(.1)
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
                            end
                            EquipWeapon(v.Name)
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
                        end
                    end
                for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                        if string.find(v.Name, "Fruit") then
                            EquipWeapon(v.Name)
                            wait(.1)
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
                            end
                            EquipWeapon(v.Name)
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
                        end
                    end
                end)
            end
        end
    end)
    
    D:Toggle("Auto Store Fruit",_G.AutoStoreFruit,function(value)
        _G.AutoStoreFruit = value
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.AutoStoreFruit then
                    for i,v in pairs(FruitList) do
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Store",v)
                    end
                end
            end
        end)
    end)

D:Toggle("Auto Bring Fruit",_G.AutoBringFruit,function(value)
    _G.AutoBringFruit = value
end)

spawn(function()
	pcall(function()
		while wait(.1) do
			if _G.AutoBringFruit then
				for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
					if string.find(v.Name, "Fruit") then
						if v:IsA("Tool") then
							v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
							wait(.2)
							firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
						end
					end
				end
			end
		end
	end)
end)

D:Toggle("Teleport To Spawn Fruit",false,function(value)
 _G.Grabfruit = value
end)

spawn(function()
			while wait(.1) do
				if _G.Grabfruit then
					for i,v in pairs(game.Workspace:GetChildren()) do
						if string.find(v.Name, "Fruit") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
						end
					end
				end
end
end)

Misc:Seperator(" Server ")
    
    Misc:Button("Rejoin Server",function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end)

  Misc:Button("Hop Server",function()
   Hop()
  end)
  
  Misc:Button("Hop Lower Server",function()
    HopServer()
  end)
    
    Misc:Button("Destroy Ui",function()
        if game.CoreGui:FindFirstChild("ZEN HUB") then
            game.CoreGui:FindFirstChild("ZEN HUB"):Destroy()
            game.CoreGui:FindFirstChild("PADOXHUBMODILE"):Destroy()
        end
    end)

    Misc:Seperator("  Ui ")
    
    Misc:Button("Open Devil Shop",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end)
    
    Misc:Button("Open Inventory",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
        wait(1)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
    end)
    
  Misc:Button("Open Inventory Fruit",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
    end)
  
    Misc:Button("Open Title Name",function()
		local args = {
			[1] = "getTitles"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
	end)
	
	Misc:Button("Open Color Haki",function()
		game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
	end)
	
	Misc:Button("Open Awakenings Expert",function()
     game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
end)

    Misc:Seperator(" Teams ")
    
Misc:Button("Join Pirates Team", function()
    local args = {
        [1] = "SetTeam",
        [2] = "Pirates"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
    local args = {
        [1] = "BartiloQuestProgress"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

Misc:Button("Join Marines Team",function()
    local args = {
        [1] = "SetTeam",
        [2] = "Marines"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BartiloQuestProgress"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
    
    

    Misc:Seperator("Abilities ")
    
    Misc:Toggle("Infinite Energy",false,function(value)
        InfiniteEnergy = value
        originalstam = LocalPlayer.Character.Energy.Value
    end)

local LocalPlayer = game:GetService'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
    LocalPlayer.Character.Energy.Changed:connect(function()
        if InfinitsEnergy then
            LocalPlayer.Character.Energy.Value = originalstam
        end 
    end)
end
spawn(function()
    while wait(.1) do
        if InfinitsEnergy then
            wait(0.3)
            originalstam = LocalPlayer.Character.Energy.Value
            infinitestam()
        end
    end
end)

Misc:Toggle("Infinite Ability",false,function(infA)
if infA then
	    local Agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
	Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	    local Agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
	Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		local Agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
	Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		local Agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
	Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		local Agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
	Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		local Agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
	Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		local Agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
	Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		local Agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
	Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		local Agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
	Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		local Agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
	Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		local Agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
	Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
else
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Agility"]:Destroy()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Agility"]:Destroy()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Agility"]:Destroy()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Agility"]:Destroy()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Agility"]:Destroy()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Agility"]:Destroy()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Agility"]:Destroy()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Agility"]:Destroy()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Agility"]:Destroy()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Agility"]:Destroy()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Agility"]:Destroy()
end
end)
    
    Misc:Toggle("Infinite Obversation Range",getgenv().InfiniteObRange,function(value)
        getgenv().InfiniteObRange = value
        local VS = game:GetService("Players").LocalPlayer.VisionRadius.Value
        while getgenv().InfiniteObRange do
            wait()
            local player = game:GetService("Players").LocalPlayer
            local char = player.Character
            local VisionRadius = player.VisionRadius
            if player then
                if char.Humanoid.Health <= 0 then 
                    wait(5) 
                end
                VisionRadius.Value = math.huge
            elseif getgenv().InfiniteObRange == false and player then
                VisionRadius.Value = VS
            end
        end
    end)
    
    Misc:Toggle("Infinite Geppo",getgenv().InfGeppo,function(value)
        getgenv().InfGeppo = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().InfGeppo then
                    for i,v in next, getgc() do
                        if game:GetService("Players").LocalPlayer.Character.Geppo then
                            if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo then
                                for i2,v2 in next, getupvalues(v) do
                                    if tostring(i2) == "9" then
                                        repeat wait(.1)
                                            setupvalue(v,i2,0)
                                        until not getgenv().InfGeppo or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0 
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    Misc:Toggle("Infinite Soru",getgenv().InfSoru,function(value)
        getgenv().InfSoru = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().InfSoru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
                    for i,v in next, getgc() do
                        if game:GetService("Players").LocalPlayer.Character.Soru then
                            if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
                                for i2,v2 in next, getupvalues(v) do
                                    if typeof(v2) == "table" then
                                        repeat wait(.1)
                                            v2.LastUse = 0
                                        until not getgenv().InfSoru or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

 Misc:Toggle("Infinite Jump", nil, function(State)
Infinite = State
game:GetService("UserInputService").JumpRequest:connect(function()
	if Infinite then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end) 
end)

    Misc:Seperator("  Highlight ")

Misc:Toggle("Show Chat disabled", _G.chat, function(value)
    _G.chat = value
    if _G.chat == true then
local StarterGui = game:GetService('StarterGui')
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)    
elseif _G.chat == false then
local StarterGui = game:GetService('StarterGui')
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)    
end
  end)

  Misc:Toggle("Show leaderboard disabled", _G.leaderboard, function(a)
    _G.leaderboard = a
    if _G.leaderboard == true then
local StarterGui = game:GetService('StarterGui')
game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)   
elseif _G.leaderboard == false then
local StarterGui = game:GetService('StarterGui')
game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)   
end
  end)

    Misc:Toggle("Highlight Mode",false,function(value)
        if value == true then
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = false
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = false
        else
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = true
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = true
        end
    end)

Misc:Toggle("Graphic",false,function(v)
			if v then
				getgenv().mode = "Autumn" -- Choose from Summer and Autumn
				local a = game.Lighting
				a.Ambient = Color3.fromRGB(33, 33, 33)
				a.Brightness = 0.3
				a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
				a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
				a.EnvironmentDiffuseScale = 0.105
				a.EnvironmentSpecularScale = 0.522
				a.GlobalShadows = true
				a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
				a.ShadowSoftness = 0.04
				a.GeographicLatitude = -15.525
				a.ExposureCompensation = 0.75
				local b = Instance.new("BloomEffect", a)
				b.Name = "BloomEffect_Graphic"
				b.Enabled = true
				b.Intensity = 0.04
				b.Size = 1900
				b.Threshold = 0.915
				local c = Instance.new("ColorCorrectionEffect", a)
				c.Name = 'ColorCorrectionEffect1_Graphic'
				c.Brightness = 0.176
				c.Contrast = 0.39
				c.Enabled = true
				c.Saturation = 0.2
				c.TintColor = Color3.fromRGB(217, 145, 57)
				if getgenv().mode == "Summer" then
					c.TintColor = Color3.fromRGB(255, 220, 148)
				elseif getgenv().mode == "Autumn" then
					c.TintColor = Color3.fromRGB(242, 193, 79)
				end
				local d = Instance.new("DepthOfFieldEffect", Graphic)
				d.Name =  'DepthOfFieldEffect_Graphic'
				d.Enabled = true
				d.FarIntensity = 0.077
				d.FocusDistance = 21.54
				d.InFocusRadius = 20.77
				d.NearIntensity = 0.277
				local e = Instance.new("ColorCorrectionEffect", a)
				e.Name = 'ColorCorrectionEffect2_Graphic'
				e.Brightness = 0
				e.Contrast = -0.07
				e.Saturation = 0
				e.Enabled = true
				e.TintColor = Color3.fromRGB(255, 247, 239)
				local e2 = Instance.new("ColorCorrectionEffect", a)
				e2.Name = 'ColorCorrectionEffect3_Graphic'
				e2.Brightness = 0.2
				e2.Contrast = 0.45
				e2.Saturation = -0.1
				e2.Enabled = true
				e2.TintColor = Color3.fromRGB(255, 255, 255)
				local s = Instance.new("SunRaysEffect", a)
				s.Name = 'SunRaysEffect_Graphic'
				s.Enabled = false
				s.Intensity = 0.01
				s.Spread = 0.146
			else
				local a = game.Lighting
				a.Ambient = Color3.fromRGB(170, 170, 170)
				a.Brightness = 2
				a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
				a.ColorShift_Top = Color3.fromRGB(0, 0, 0)
				a.EnvironmentDiffuseScale = 0.105
				a.EnvironmentSpecularScale = 0.522
				a.GlobalShadows = false
				a.OutdoorAmbient = Color3.fromRGB(127, 127, 127)
				a.ShadowSoftness = 0
				a.GeographicLatitude = 66
				a.ExposureCompensation = 0.2
				game:GetService("Lighting")["BloomEffect_Graphic"]:Destroy()
				game:GetService("Lighting")["ColorCorrectionEffect1_Graphic"]:Destroy()
				game:GetService("Lighting")["ColorCorrectionEffect2_Graphic"]:Destroy()
				game:GetService("Lighting")["ColorCorrectionEffect3_Graphic"]:Destroy()
				game:GetService("Lighting")["SunRaysEffect_Graphic"]:Destroy()
			end
		end)

	Misc:Toggle("Xray",false,function(value)
		NoWorld = value
		if NoWorld == true then
			transparent = true
			x(transparent)
		elseif NoWorld == false then
			transparent = false
			x(transparent)
		end
	end)

	local transparent = false -- xray
	function x(v)
		if v then
			for _,i in pairs(workspace:GetDescendants()) do
				if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
					i.LocalTransparencyModifier = 0.7
				end
			end
		else
			for _,i in pairs(workspace:GetDescendants()) do
				if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
					i.LocalTransparencyModifier = 0
				end
			end
		end
	end

	---- [RainbowHaki]
	spawn(function()
		while wait() do
			if RainbowHaki then
				pcall(function()
					if game.Players.LocalPlayer.Character.HasBuso then
						for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetChildren()) do
							if v.Name == "RightLowerArm_BusoLayer1" or v.Name == "RightLowerArm_BusoLayer2" or v.Name == "RightHand_BusoLayer1" or v.Name == "RightHand_BusoLayer2" or v.Name == "LeftLowerArm_BusoLayer1" or v.Name == "LeftLowerArm_BusoLayer2" or v.Name == "LeftHand_BusoLayer1" or v.Name == "LeftHand_BusoLayer2" or v.Name == "LeftHand_BusoLayer1" or v.Name == "RightUpperArm_BusoLayer1" or v.Name == "RightUpperArm_BusoLayer2" or v.Name == "LeftUpperArm_BusoLayer1" or v.Name == "LeftUpperArm_BusoLayer2" or v.Name == "UpperTorso_BusoLayer1" or v.Name == "UpperTorso_BusoLayer2" or v.Name == "LowerTorso_BusoLayer1" or v.Name == "LowerTorso_BusoLayer2" or v.Name == "Head_BusoLayer1" or v.Name == "Head_BusoLayer2" or v.Name == "RightUpperLeg_BusoLayer1" or v.Name == "RightUpperLeg_BusoLayer2" or v.Name == "LeftUpperLeg_BusoLayer1" or v.Name == "LeftUpperLeg_BusoLayer2" or v.Name == "RightLowerLeg_BusoLayer1" or v.Name == "RightLowerLeg_BusoLayer2" or v.Name == "LeftLowerLeg_BusoLayer1" or v.Name == "LeftLowerLeg_BusoLayer2" or v.Name == "LeftFoot_BusoLayer1" or v.Name == "LeftFoot_BusoLayer2" or v.Name == "RightFoot_BusoLayer1" or v.Name == "RightFoot_BusoLayer2" then
								v.Color = Color3.fromHSV(tick() * 24 % 255/255, 1, 1)
							end
						end
					end
				end)
			end
		end
	end)

	Misc:Toggle("Rainbow Haki",false,function(value)
		RainbowHaki = value
	end)

	Misc:Toggle("Rainbow Yoru",false,function(value)
		RainbowYoru = value
	end)

	---- [RainbowYoru]

	spawn(function()
		while wait() do
			if RainbowYoru then
				pcall(function()
					for i,v in pairs(game.Players.LocalPlayer.Character.DarkBlade.Right:GetChildren()) do
						if v.Name == "Runes" or v.Name == "Hold" or v.Name == "Bottom" or v.Name == "Gems" or v.Name == "Wings" or v.Name == "Blade" or v.Name == "Tape" then
							v.Color = Color3.fromHSV(tick() * 24 % 255/255, 1, 1)
							v.Material = "Neon"
						end

					end
				end)
			end
		end
	end)

	spawn(function()
		while wait(1) do
			if RainbowYoru then
				pcall(function()
					for i,v in pairs(game.Players.LocalPlayer.Character.DarkBlade.Right.Handle:GetChildren()) do
						if v.Name == "Trail" then
							v.LightEmission = 1
						end

					end
				end)
			end
		end
	end)

	spawn(function()
		while wait(1) do
			if RainbowYoru then
				pcall(function()
					for i,v in pairs(game.Players.LocalPlayer.Character.DarkBlade.Right.Handle.Attachment0:GetChildren()) do
						if v.Name == "Beam" then
							v.LightEmission = 1 v.Texture = 0 v.Width0 = 0 v.Width1 = 0
						end

					end
				end)
			end
		end
	end)

    Misc:Seperator("Misc ")

	   
 
 function Click()
    game:GetService("RunService").RenderStepped:Connect(function()
                game:GetService'VirtualUser':CaptureController()
            end)
			    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
        end


    
    	Misc:Button("Remove Lave",function()
		for i,v in pairs(game.Workspace:GetDescendants()) do
			if v.Name == "Lava" then   
				v:Destroy()
			end
		end
		for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
			if v.Name == "Lava" then   
				v:Destroy()
			end
		end
	end)

    Misc:Button("Invisible (lag)",function()
	game.Players.LocalPlayer.Character.LowerTorso.Root:Destroy()
end)
	
    Misc:Button("Invisible [Remove]",function()
local removeNametags = true -- remove custom billboardgui nametags from hrp, could trigger anticheat

local plr = game:GetService("Players").LocalPlayer
local character = plr.Character
local hrp = character.HumanoidRootPart
local old = hrp.CFrame

if not character:FindFirstChild("LowerTorso") or character.PrimaryPart ~= hrp then
return print("unsupported")
end

if removeNametags then
local tag = hrp:FindFirstChildOfClass("BillboardGui")
if tag then tag:Destroy() end

hrp.ChildAdded:Connect(function(item)
if item:IsA("BillboardGui") then
task.wait()
item:Destroy()
end
end)
end

local newroot = character.LowerTorso.Root:Clone()
hrp.Parent = workspace
character.PrimaryPart = hrp
character:MoveTo(Vector3.new(old.X,9e9,old.Z))
hrp.Parent = character
task.wait(0.5)
newroot.Parent = hrp
hrp.CFrame = old
end)
  

	Misc:Button("Max Zoom", function()
		while wait() do
			game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718
			end
	end)

	Misc:Button("Buddha Big", function()
local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character:FindFirstChildOfClass("Humanoid")

function rm()
	for i,v in pairs(Character:GetDescendants()) do
		if v:IsA("BasePart") then
			if v.Name == "Handle" or v.Name == "Head" then
				if Character.Head:FindFirstChild("OriginalSize") then
					Character.Head.OriginalSize:Destroy()
				end
			else
				for i,cav in pairs(v:GetDescendants()) do
					if cav:IsA("Attachment") then
						if cav:FindFirstChild("OriginalPosition") then
							cav.OriginalPosition:Destroy()  
						end
					end
				end
				v:FindFirstChild("OriginalSize"):Destroy()
				if v:FindFirstChild("AvatarPartScaleType") then
					v:FindFirstChild("AvatarPartScaleType"):Destroy()
				end
			end
		end
	end
end

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
wait(1)
end)
Misc:Seperator("Codes ")
    
    local x2Code = {
        "FUDD10",
        "BIGNEWS",
        "THEGREATACE",
        "SUB2GAMERROBOT_EXP1",
        "StrawHatMaine",
        "Sub2OfficialNoobie",
        "SUB2NOOBMASTER123",
        "Sub2Daigrock",
        "Axiore",
        "TantaiGaming",
        "JCWK",
        "Starcodeheo",
        "Sub2Fer999",
        "Magicbus",
        "Enyu_is_Pro",
        "Bluxxy",
        "KittGaming",
       }
    
    Misc:Button("Redeem All Codes",function()
        function RedeemCode(value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
        end
        for i,v in pairs(x2Code) do
            RedeemCode(v)
        end
    end)
    
    Misc:Dropdown("Selected Codes",{"FUDD10","KittGaming","BIGNEWS","THEGREATACE","SUB2GAMERROBOT_EXP1","StrawHatMaine","Sub2OfficialNoobie","SUB2NOOBMASTER123","Sub2Daigrock","Axiore","TantaiGaming","JCWK","Starcodeheo","Sub2Fer999","Magicbus","Enyu_is_Pro","Bluxxy"},function(value)
        _G.CodeSelect = value
    end)
    
    Misc:Button("Redeem Code",function()
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect)
    end)
    
    Misc:Seperator(" State ")
    
    Misc:Dropdown("Select Haki State",{"State 0","State 1","State 2","State 3","State 4","State 5"},function(value)
        _G.SelectStateHaki = value
    end)
    
    Misc:Button("Change Buso Haki State",function()
        if _G.SelectStateHaki == "State 0" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",0)
        elseif _G.SelectStateHaki == "State 1" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",1)
        elseif _G.SelectStateHaki == "State 2" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",2)
        elseif _G.SelectStateHaki == "State 3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",3)
        elseif _G.SelectStateHaki == "State 4" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",4)
        elseif _G.SelectStateHaki == "State 5" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",5)
        end
    end)
    
    Misc:Seperator("Boost FPS ")
    
    local a = game.Lighting
    local c = Instance.new("ColorCorrectionEffect", a)
    local e = Instance.new("ColorCorrectionEffect", a)
    OldAmbient = a.Ambient
    OldBrightness = a.Brightness
    OldColorShift_Top = a.ColorShift_Top
    OldBrightnessc = c.Brightness
    OldContrastc = c.Contrast
    OldTintColorc = c.TintColor
    OldTintColore = e.TintColor

    Misc:Toggle("RTX Mode",_G.RTXMode,function(value)
        _G.RTXMode = value
        if not _G.RTXMode then return end
        while _G.RTXMode do wait()
            a.Ambient = Color3.fromRGB(33, 33, 33)
            a.Brightness = 0.3
            c.Brightness = 0.176
            c.Contrast = 0.39
            c.TintColor = Color3.fromRGB(217, 145, 57)
            game.Lighting.FogEnd = 999
            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PointLight") then
                local a2 = Instance.new("PointLight")
                a2.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                a2.Range = 15
                a2.Color = Color3.fromRGB(217, 145, 57)
            end
            if not _G.RTXMode then
                a.Ambient = OldAmbient
                a.Brightness = OldBrightness
                a.ColorShift_Top = OldColorShift_Top
                c.Contrast = OldContrastc
                c.Brightness = OldBrightnessc
                c.TintColor = OldTintColorc
                e.TintColor = OldTintColore
                game.Lighting.FogEnd = 2500
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PointLight"):Destroy()
            end
        end
    end)
    
    Misc:Toggle("Remove Fog",RemoveFog,function(value)
        RemoveFog = value
        if not RemoveFog then return end
        while RemoveFog do wait()
            game.Lighting.FogEnd = 9e9
            if not RemoveFog then
                game.Lighting.FogEnd = 2500
            end
        end
    end)
    
Misc:Toggle("Super FPS boost",false,function(value)
		 _G.SuperFPSboost = value
	end)

	spawn(function()
		while wait() do
	   if _G.SuperFPSboost then
		for i,v in pairs(game.Workspace.Map:GetDescendants()) do
			if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
				v:Destroy()
			end
		end 
		for i,v in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do
			if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
				v:Destroy()
			end
		end
		for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if v:IsA("Accessory") or v.Name == "Pants" or v.Name == "Shirt" then
				v:Destroy()
			end
		end
		local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
		local g = game
		local w = g.Workspace
		local l = g.Lighting
		local t = w.Terrain
		t.WaterWaveSize = 0
		t.WaterWaveSpeed = 0
		t.WaterReflectance = 0
		t.WaterTransparency = 0
		l.GlobalShadows = false
		l.FogEnd = 9e9
		l.Brightness = 0
		settings().Rendering.QualityLevel = "Level01"
		for i, v in pairs(g:GetDescendants()) do
			if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
				v.Material = "Plastic"
				v.Reflectance = 0
			elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
				v.Transparency = 1
			elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
				v.Lifetime = NumberRange.new(0)
			elseif v:IsA("Explosion") then
				v.BlastPressure = 1
				v.BlastRadius = 1
			elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
				v.Enabled = false
			elseif v:IsA("MeshPart") then
				v.Material = "Plastic"
				v.Reflectance = 0
				v.TextureID = 10385902758728957
			end
		end
		for i, e in pairs(l:GetChildren()) do
			if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
				e.Enabled = false
			end
		end
	end
end
end)
if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
    Misc:Slider("FPS Lock",0,499,60,function(K)setfpscap(tonumber(K));
    end)
    else
Misc:Slider("FPS Lock",0,499,60,function(K)setfpscap(tonumber(K));
    end)
end
  
    Misc:Button("FPS Boost",function()
        pcall(function()
            game:GetService("Lighting").FantasySky:Destroy()
            local g = game
            local w = g.Workspace
            local l = g.Lighting
            local t = w.Terrain
            t.WaterWaveSize = 0
            t.WaterWaveSpeed = 0
            t.WaterReflectance = 0
            t.WaterTransparency = 0
            l.GlobalShadows = false
            l.FogEnd = 9e9
            l.Brightness = 0
            settings().Rendering.QualityLevel = "Level01"
            for i, v in pairs(g:GetDescendants()) do
                if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
                    v.Material = "Plastic"
                    v.Reflectance = 0
                elseif v:IsA("Decal") or v:IsA("Texture") then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false
                elseif v:IsA("MeshPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957
                end
            end
            for i, e in pairs(l:GetChildren()) do
                if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                    e.Enabled = false
                end
            end
            for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
                if v.Name == ("Water;") then
                    v.Transparency = 1
                    v.Material = "Plastic"
                end
            end
        end)
    end)

     Misc:Button("Unlock Portal",function()
        _G.UnlockPortal = true
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.UnlockPortal == true then
                    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text,"cannot") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if _G.UnlockPortal == true then
                    CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
                    MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
                    Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
                    HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
                    if (CastlePostoMansion.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                    end
                    if (MansiontoCastlePos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    end
                    if (Castletophydra.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                    end
                    if (HydratoCastle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    end
                end
            end)
        end
    end)
    
    Misc:Button("Unlock FPS",function()
        setfpscap(500)
    end)

    Misc:Button("FPS delete color",function()
for _,v in pairs(workspace:GetDescendants()) do
if v.ClassName == "Part"
or v.ClassName == "SpawnLocation"
or v.ClassName == "WedgePart"
or v.ClassName == "Terrain"
or v.ClassName == "MeshPart" then
v.BrickColor = BrickColor.new(155, 155, 155)
v.Material = "Plastic"
end
end
end)

    Misc:Button("FPS Fast Mode",function()
for _,v in pairs(workspace:GetDescendants()) do
if v.ClassName == "Part"
or v.ClassName == "SpawnLocation"
or v.ClassName == "WedgePart"
or v.ClassName == "Terrain"
or v.ClassName == "MeshPart" then
v.Material = "Plastic"
end
end
end)

    Misc:Seperator("Race Boost ")

    Misc:Toggle("Auto Active Race",_G.AutoAgility,function(value)
        _G.AutoAgility = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoAgility then
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                end
            end
        end)
    end)

	if game.workspace:FindFirstChild("WaterWalk") then
		game.workspace:FindFirstChild("WaterWalk"):Destroy()
	end
	platform = Instance.new("Part")
	platform.Name = "WaterWalk"
	platform.Size = Vector3.new(math.huge, 1, math.huge)
	platform.Transparency = 1
	platform.Anchored = true
	platform.Parent = game.workspace
Misc:Toggle("Walk on Water",true,function(value)
        _G.WalkWater = value
end)
  
spawn(function()
			while task.wait() do
				pcall(function()
					if _G.WalkWater then
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
					else
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
					end
				end)
			end
		end)

  Misc:Toggle("Dodge No Cooldown",false,function(value)
        nododgecool = value
        NoDodgeCool()
    end)
    

    Race:Seperator("Race V4")
    
Race:Button("Teleport To Top Of GreatTree",function()
  TP(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625))
    end)
    
    Race:Button("Teleport To Timple Of Time",function()
  Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
    end)
    
Race:Button("Teleport To Lever Pull",function()
  TP(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
end)

Race:Button("Teleport To Acient One (Must Be in Temple Of Time!)",function()
  TP(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
end)
   
   Race:Button("Unlock Lever.", function()
venyx:Notify("Unlocked")
if game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild("ProximityPrompt") then
    game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild("ProximityPrompt"):Remove()
else
--[[]]
end
wait(0.1)
local ProximityPrompt = Instance.new("ProximityPrompt")
ProximityPrompt.Parent = game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt
ProximityPrompt.MaxActivationDistance = 10
ProximityPrompt.ActionText = "Secrets Beholds Inside"
ProximityPrompt.ObjectText = "An unknown lever of time"

function onProximity()
local part = game:GetService("Workspace").Map["Temple of Time"].MainDoor1
local TweenService = game:GetService("TweenService")

local startPosition = part.Position
local endPosition = startPosition + Vector3.new(0, -50, 0)

local tweenInfo = TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
local tween = TweenService:Create(part, tweenInfo, {Position = endPosition})

tween:Play()

local partnew = game:GetService("Workspace").Map["Temple of Time"].MainDoor2
local TweenService = game:GetService("TweenService")

local startPosition = partnew.Position
local endPosition = startPosition + Vector3.new(0, -50, 0)

local tweenInfo = TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
local tween = TweenService:Create(partnew, tweenInfo, {Position = endPosition})

tween:Play()

local SoundSFX = Instance.new("Sound")
SoundSFX.Parent = workspace
SoundSFX.SoundId = "rbxassetid://1904813041"
SoundSFX:Play()
SoundSFX.Name = "POwfpxzxzfFfFF"
game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild("ProximityPrompt"):Remove()
wait(5)
workspace:FindFirstChild("POwfpxzxzfFfFF"):Remove()
game:GetService("Workspace").Map["Temple of Time"].NoGlitching:Remove()
game:GetService("Workspace").Map["Temple of Time"].NoGlitching:Remove()
game:GetService("Workspace").Map["Temple of Time"].NoGlitching:Remove()
end

ProximityPrompt.Triggered:Connect(onProximity)
end)

Race:Button("Clock Acces.", function()
    game:GetService("Workspace").Map["Temple of Time"].DoNotEnter:Remove()
    game:GetService("Workspace").Map["Temple of Time"].ClockRoomExit:Remove()
end)

Race:Toggle("Disabled Inf Stairs", nil, function(value)
	game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = value
end)
 
  Race:Button("Teleport Cyborg Door (Must Be in Temple Of Time!)",function()
  TP(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
  end)
  
  Race:Button("Teleport Fish Door (Must Be in Temple Of Time!)",function()
  TP(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
  end)
  
  Race:Button("Teleport Ghoul Door (Must Be in Temple Of Time!)",function()
  TP(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
  end)
  
  Race:Button("Teleport Human Door (Must Be in Temple Of Time!)",function()
  TP(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
  end)
  
  Race:Button("Teleport Mink Door (Must Be in Temple Of Time!)",function()
  TP(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
  end)
  
  Race:Button("Teleport Sky Door (Must Be in Temple Of Time!)",function()
  TP(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
  end)
  
  
  
  Race:Seperator("Auto Trials")
Race:Button("Auto Complete Angel Trial",function(t)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.SkyTrial.Model.FinishPart.CFrame
        end)

        Race:Button("Auto Complete Rabbit Trial",function(t)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.MinkTrial.Ceiling.CFrame * CFrame.new(0,-5,0)
        end)

        Race:Button("Auto Complete Cyborg Trial",function(t)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,300,0)
        end)
  
  
  Race:Button("Teleport To Safe Zone When Pvp (Must Be in Temple Of Time!)",function()
  TP(CFrame.new(28273.0859375, 14896.5078125, 157.42063903808594))
  end)
  
  Race:Button("Teleport Pvp Zone (Must Be in Temple Of Time!)",function()
  TP(CFrame.new(28766.681640625, 14967.1455078125, -164.13290405273438))
  end)
