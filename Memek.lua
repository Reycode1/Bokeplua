-- =========================================
-- ATOMIC HUB | OFFICIAL UI REWORK v2.1.1
-- =========================================

if getgenv().ATOMIC_HUB_LOADED then return end
getgenv().ATOMIC_HUB_LOADED = true

-- ======================
-- CONFIG
-- ======================
local HUB_VERSION = "v2.1.1"
local DISCORD_LINK = ""
local SCRIPT_STATUS = "🟢 Work"

-- ======================
-- LOAD WINDUI
-- ======================
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

-- ======================
-- THEME
-- ======================
WindUI:AddTheme({
    Name = "Atomic Exploit",
    Accent = WindUI:Gradient({
        ["0"] = { Color = Color3.fromHex("#1f1f23"), Transparency = 0 },
        ["100"] = { Color = Color3.fromHex("#18181b"), Transparency = 0 },
    }, {Rotation = 0}),
    Dialog = Color3.fromHex("#161616"),
    Outline = Color3.fromHex("#FFFFFF"),
    Text = Color3.fromHex("#FFFFFF"),
    Placeholder = Color3.fromHex("#7a7a7a"),
    Background = Color3.fromHex("#101010"),
    Button = Color3.fromHex("#52525b"),
    Icon = Color3.fromHex("#a1a1aa")
})

-- ======================
-- WINDOW
-- ======================
local Window = WindUI:CreateWindow({
    Title = "⚛️ Atomic Hub | " .. HUB_VERSION,
    Icon = "rbxassetid://106899268176689",
    Author = "Atomic Dev",
    Folder = "AtomicConfig",

    Size = UDim2.fromOffset(530, 320),
    MinSize = Vector2.new(320, 300),
    MaxSize = Vector2.new(900, 600),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 150,
    BackgroundImageTransparency = 0.42,
})

Window:SetToggleKey(Enum.KeyCode.G)

-- ======================
-- OPEN BUTTON (MOBILE)
-- ======================
Window:EditOpenButton({
    Title = "Atomic",
    Icon = "rbxassetid://106899268176689",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"),
        Color3.fromHex("F89B29")
    ),
    OnlyMobile = true,
    Enabled = true,
    Draggable = true,
})

Window:SetIconSize(35)

-- ======================
-- TAG FREEMIUM + VERSION + STATUS
-- ======================
Window:Tag({
    Title = "Freemium",
    Color = Color3.fromHex("#30ff6a"),
    Radius = 13,
})

Window:Tag({
    Title = HUB_VERSION,
    Color = Color3.fromHex("#a1a1aa"),
    Radius = 8,
})

Window:Tag({
    Title = SCRIPT_STATUS,
    Color = SCRIPT_STATUS == "🟢 Work" and Color3.fromHex("#00ff00") or Color3.fromHex("#ff0000"),
    Radius = 8,
})

-- ======================
-- TAB INFO
-- ======================
local InfoTab = Window:Tab({Title = "Info", Icon = "info"})

-- Custom Section + Discord Copy
local Section = InfoTab:Section({ 
    Title = "Have Problem / Need Help? Join Server Now",
    Box = true,
    TextTransparency = 0.05,
    TextXAlignment = "Center",
    TextSize = 17, 
    Opened = true,
})

InfoTab:Select()

local function copyLink(link, buttonTitle, notifTitle, notifContent)
    local Button = InfoTab:Button({
        Title = buttonTitle or "Copy Link",
        Desc = "Klik untuk menyalin link",
        Locked = false,
        Callback = function()
            if setclipboard then setclipboard(link) end
            WindUI:Notify({
                Title = notifTitle or "Copied!",
                Content = notifContent or ("Link '" .. link .. "' berhasil dicopy ✅"),
                Duration = 3,
                Icon = "bell",
            })
            print("Link copied:", link)
        end
    })
    return Button
end

copyLink(
    "https://discord.gg/YagexWWu6", 
    "Copy Discord Link",              
    "Discord Copied!",                 
    "Link berhasil disalin ke clipboard ✅" 
)

-- Additional Info Paragraph
InfoTab:Paragraph({
    Title = "Atomic Hub Information",
    Desc = [[
━━━━━━━━━━━━━━━━━━━━
Status : ]] .. SCRIPT_STATUS .. [[
Version : ]] .. HUB_VERSION .. [[

Atomic Script Only
NO Premium ❌

Semua fitur gratis.
Semua update untuk semua user.

Developer : Atomic Dev
⚠️ Dilarang menjual ulang!
━━━━━━━━━━━━━━━━━━━━
]]
})

InfoTab:Button({
    Title = "Copy Discord",
    Desc = DISCORD_LINK,
    Callback = function()
        if setclipboard then setclipboard(DISCORD_LINK) end
        WindUI:Notify({Title="Copied!", Content="Discord dicopy ✅", Duration=3})
    end
})

-- ======================
-- TAB MAIN
-- ======================
local MainTab = Window:Tab({Title = "Main 🚀", Icon = "rocket"})

MainTab:Paragraph({
    Title = "🔥 New Script EGCFB",
    Desc = [[
━━━━━━━━━━━━━━━━━━━━
Auto Clip
God Mode
Teleport 12 Tempat
Auto Upgrade Carry
Auto Upgrade Base
Auto Sell
Auto AFK
━━━━━━━━━━━━━━━━━━━━
]]
})

MainTab:Button({
    Title = "Execute EGCFB",
    Desc = "Run latest script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/cyaahekel/NoxiusHub/refs/heads/main/noxius", true))()
        WindUI:Notify({Title="Atomic Hub", Content="EGCFB Loaded 🚀", Duration=3})
    end
})

-- ======================
-- TAB UNIVERSAL
-- ======================
local UniversalTab = Window:Tab({Title = "Universal 🌐", Icon = "globe"})

UniversalTab:Button({
    Title = "Fish It",
    Desc = "Run Fish It script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MajestySkie/Chloe-X/main/Main/ChloeX"))()
        WindUI:Notify({Title="Universal", Content="Loaded 🚀", Duration=3})
    end
})
UniversalTab:Button({
    Title = "Tsunami",
    Desc = "Run Tsunami  script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CyrusOffc/scriptcyrus/refs/heads/main/roblox/loader.lua"))()
        WindUI:Notify({Title="Universal", Content="Loaded 🚀", Duration=3})
    end
})
-- ======================
-- TAB TSUNAMI
-- ======================
local TsunamiTab = Window:Tab({Title = "Tsunami 🌊", Icon = "water"})

TsunamiTab:Paragraph({
Title = "Tsunami Scripts",
Desc = [[
━━━━━━━━━━━━━━━━━━━━
Semua script tsunami terbaru bisa dijalankan di sini.
━━━━━━━━━━━━━━━━━━━━
]]
})

TsunamiTab:Button({
Title = "Execute Tsunami Script 1",
Desc = "Run Tsunami Script Example",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/EscapeTsunamiForBrainrots"))()
WindUI:Notify({
Title = "Tsunami Tab",
Content = "Script 1 berhasil dijalankan 🌊",
Duration = 3
})
end
})

TsunamiTab:Button({
Title = "Execute Tsunami Script 2",
Desc = "Run Tsunami Script Example 2",
Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/Ai5WqH8N", true))()
WindUI:Notify({
Title = "Tsunami Tab",
Content = "Script 2 berhasil dijalankan 🌊",
Duration = 3
})
end
}) 
-- ======================
-- TAB SHOP
-- ======================
local ShopTab = Window:Tab({Title = "Shop 🛒", Icon = "shopping_cart"})
ShopTab:Paragraph({Title="Coming Soon", Desc="Shop masih dikembangkan"})

-- ======================
-- TAB SETTING
-- ======================
local SettingTab = Window:Tab({Title = "Setting 🔧", Icon = "settings"})

-- Paragraph penjelasan
SettingTab:Paragraph({
    Title = "Pengaturan Atomic Hub",
    Desc = [[
━━━━━━━━━━━━━━━━━━━━
Di sini lo bisa atur tampilan, notifikasi, dan keybind hub.
━━━━━━━━━━━━━━━━━━━━
]]
})

-- Toggle Notifikasi
local notifEnabled = true
SettingTab:Toggle({
    Title = "Enable Notifications",
    Desc = "Nyalakan atau matikan notifikasi pop-up",
    Enabled = notifEnabled,
    Callback = function(state)
        notifEnabled = state
        WindUI:Notify({
            Title = "Setting",
            Content = "Notifications " .. (state and "Enabled ✅" or "Disabled ❌"),
            Duration = 3
        })
    end
})

-- Theme Switcher
local themes = {"Dark", "Light", "Ocean", "Crimson"} -- tambahin Crimson
local currentTheme = "Dark"
SettingTab:Dropdown({
    Title = "Select Theme",
    Desc = "Ganti tampilan hub",
    Options = themes,
    Default = currentTheme,
    Callback = function(selected)
        currentTheme = selected
        -- Set theme manual, termasuk custom Crimson
        if selected == "Crimson" then
            WindUI:AddTheme({
                Name = "Crimson",
                Accent = WindUI:Gradient({
                    ["0"] = { Color = Color3.fromHex("#8B0000"), Transparency = 0 },
                    ["100"] = { Color = Color3.fromHex("#FF0000"), Transparency = 0 },
                }, {Rotation = 0}),
                Dialog = Color3.fromHex("#5C0000"),
                Outline = Color3.fromHex("#FFFFFF"),
                Text = Color3.fromHex("#FFFFFF"),
                Placeholder = Color3.fromHex("#B22222"),
                Background = Color3.fromHex("#3E0000"),
                Button = Color3.fromHex("#660000"),
                Icon = Color3.fromHex("#FF4500")
            })
        end
        Window:SetTheme(selected)
        WindUI:Notify({
            Title = "Setting",
            Content = "Theme changed to " .. selected,
            Duration = 3
        })
    end
})

-- Change Toggle Key
SettingTab:Keybind({
    Title = "Change Toggle Key",
    Desc = "Ganti tombol buka/tutup hub",
    Default = Enum.KeyCode.G,
    Callback = function(newKey)
        Window:SetToggleKey(newKey)
        WindUI:Notify({
            Title = "Setting",
            Content = "Toggle key set to " .. tostring(newKey),
            Duration = 3
        })
    end
})
-- TAB UPDATE LOG
-- ======================
local UpdateTab = Window:Tab({Title = "Update Log 📝", Icon = "clipboard"})

UpdateTab:Paragraph({
    Title = "Changelog",
    Desc = [[
v2.0 - UI REWORK 🌟
- Tampilan baru modern
- Theme baru: Dark, Light, Ocean, Crimson Fix
- Mobile Open Button
- Window toggle key bisa diganti
- Freemium + Version + Status tag
- Info Tab update link Discord

v1.9 - Tsunami Tab 🌊
- Tambah Tsunami scripts
- Bisa jalankan langsung dari hub

v1.89 - Minor UI & Tag Update
- Window Tags: Freemium + Version + Status
- Discord Section Update
- Info Tab paragraph update

v1.88 - UI Rework
- Tampilan baru
- Theme baru
- Mobile button
- Lebih modern

v1.x
- EGCFB Added
- Universal Added
]]
})
-- ======================
-- TAB CREDITS
-- ======================
local CreditTab = Window:Tab({Title = "Credits ⭐", Icon = "star"})

CreditTab:Paragraph({
    Title = "Atomic Hub Credit",
    Desc = [[
━━━━━━━━━━━━━━━━━━━━
Developed by : FayintX ⚛️
UI Library   : WindUI
Special Thanks: Atomic Community
━━━━━━━━━━━━━━━━━━━━
]]
})
-- ======================
-- WELCOME
-- ======================
WindUI:Notify({
    Title = "⚛️ Atomic Hub",
    Content = "Loaded 🚀 | "..HUB_VERSION.." | "..SCRIPT_STATUS,
    Duration = 5,
})
