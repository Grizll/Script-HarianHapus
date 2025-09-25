-- Fungsi untuk menjalankan loadstring dengan error handling
local function executeLoadstring(url, name)
    local success, error = pcall(function()
        loadstring(game:HttpGet(url, true))()
    end)
    
    if not success then
        warn("Gagal menjalankan " .. name .. ": " .. error)
    else
        print("Berhasil menjalankan " .. name)
    end
end

-- Menjalankan kedua loadstring
executeLoadstring("https://raw.githubusercontent.com/Grizll/Script-HarianHapus/refs/heads/main/3-hari.lua", "Vip Menus")

