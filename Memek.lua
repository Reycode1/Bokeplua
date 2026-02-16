-- =========================================
-- ATOMIC HUB | FULL NO KEY | OFFICIAL
-- =========================================

if getgenv().ATOMIC_HUB_LOADED then return end
getgenv().ATOMIC_HUB_LOADED = true

-- ======================
-- LOAD WINDUI
-- ======================
local WindUI = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"
))()

local DISCORD_LINK = "https://discord.gg/thanhub"
local SCRIPT_STATUS = "🟢 Work"

-- ======================
-- MAIN WINDOW
-- ======================
local Window = WindUI:CreateWindow({
    Title = "⚛️ Atomic Hub",
    Icon = "rbxassetid://124740020119419",
    Author = "Atomic Dev",
    Folder = "AtomicHubOfficial",
    Size = UDim2.fromOffset(520, 450),
    Transparent = true,
    Theme = "Light",
    SideBarWidth = 120
})

-- ======================
-- TAB INFO
-- ======================
local InfoTab = Window:Tab({Title = "Info", Icon = "info"})
InfoTab:Paragraph({
    Title = "Status Hub",
    Desc = [[
━━━━━━━━━━━━━━━━━━━━
Status Script: ]] .. SCRIPT_STATUS .. [[

Atomic Script Only - Freemium
NO Premium ❌

🔥 Semua fitur gratis, semua user bisa pakai
🔥 Tidak ada akses premium

⚡ Developer: Atomic Dev
⚠️ Jangan menjual script ini!
━━━━━━━━━━━━━━━━━━━━
Versi resmi Atomic Hub
]]
})
InfoTab:Button({
    Title = "Copy Discord",
    Desc = DISCORD_LINK,
    Callback = function()
        if setclipboard then setclipboard(DISCORD_LINK) end
        WindUI:Notify({Title = "Copied!", Content = "Discord link dicopy ✅", Duration = 3})
    end
})

-- ======================
-- TAB MAIN (EGCFB)
-- ======================
local MainTab = Window:Tab({Title = "Main", Icon = "rocket"})

MainTab:Paragraph({
    Title = "🔥 New Script EGCFB",
    Desc = [[
━━━━━━━━━━━━━━━━━━━━
[+] Added Auto Clip
[+] Added God Mode
[+] Added Teleport 12 Tempat
[+] Added Auto Upgrade Carry
[+] Added Auto Upgrade Base
[+] Added Auto Sell
[+] Added Auto AFK
━━━━━━━━━━━━━━━━━━━━
]]
})

MainTab:Button({
    Title = "Execute EGCFB",
    Desc = "Jalankan script terbaru",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/cyaahekel/NoxiusHub/refs/heads/main/noxius", true))()

        WindUI:Notify({
            Title = "Atomic Hub",
            Content = "EGCFB berhasil dijalankan 🚀",
            Duration = 3,
        })
    end
})

-- ======================
-- TAB UNIVERSAL
-- ======================
local UniversalTab = Window:Tab({Title = "Universal 🌐", Icon = "globe"})
UniversalTab:Paragraph({Title = "Universal Script", Desc = "Kumpulan fitur universal"})
UniversalTab:Button({
    Title = "Fish It",
    Desc = "Jalankan Fish It script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MajestySkie/Chloe-X/main/Main/ChloeX"))()
        WindUI:Notify({Title = "Universal", Content = "Fish It berhasil dijalankan 🚀", Duration = 3})
    end
})

-- ======================
-- TAB SHOP
-- ======================
local ShopTab = Window:Tab({Title = "Shop 🛒", Icon = "shopping_cart"})
ShopTab:Paragraph({
    Title = "Coming Soon 🚀",
    Desc = "Tab Shop masih dalam pengembangan"
})

-- ======================
-- TAB SETTING
-- ======================
local SettingTab = Window:Tab({Title = "Setting 🔧", Icon = "settings"})
SettingTab:Paragraph({
    Title = "Coming Soon 🚀",
    Desc = "Fitur Setting masih dalam pengembangan"
})

-- ======================
-- TAB UPDATE LOG
-- ======================
local UpdateTab = Window:Tab({Title = "Update Log 📝", Icon = "clipboard"})

local UPDATE_DESC = [[
v1.2 - Main Activated
- 🔥 Tab Main sekarang berisi New Script EGCFB
- 🚀 Tombol execute langsung jalan
- 🔔 Notifikasi sukses setelah load

v1.1 - Enhancement
- 🔔 Notifikasi popup lebih rapi
- 🎨 Tambahan theme / warna baru
- ⚡ Optimasi performa script
- 🔗 Link Discord lebih interaktif

v1.0 - Official Release
- 🔰 Atomic Hub resmi dirilis
- ✅ No Key, langsung buka UI
- 📄 Tab lengkap
]]

UpdateTab:Paragraph({Title = "Changelog", Desc = UPDATE_DESC})

-- ======================
-- WELCOME
-- ======================
WindUI:Notify({
    Title = "⚛️ Atomic Hub",
    Content = "Atomic Hub Loaded 🚀 | Status: " .. SCRIPT_STATUS,
    Duration = 5
})
