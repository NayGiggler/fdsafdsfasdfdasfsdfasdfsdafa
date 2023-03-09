getgenv().Fatality = {
    Underground = {
        ["Enabled"] = true,
        ["Amount"] = 150,
        ["Keybind"] = "Z",
    },
    Sky = {
        ["Enabled"] = false,
        ["Amount"] = 150,
        ["Keybind"] = "N",
    },
    CustomVelocity = {
        ["Enabled"] = false,
        ["CustomX"] = 50,
        ["CustomY"] = -150,
        ["CustomZ"] = 0,
        ["Keybind"] = "M",
    },
    Shake = {
        ["Enabled"] = false,
        ["Keybind"] = "B",
    },
    AimViewer = {
        ["Enabled"] = false,
        ["ViewTarget"] = true,
        ["RainbowBeam"] = false,
        ["Keybind"] = "T",
        ["Width"] = 0.5,
        ["Color"] = Color3.fromRGB(255, 0, 0),
    },
    Miscellaneous = {
        ["VelocityStatistics"] = false
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/tailgater/Fatality/main/StandaloneAntiLock", true))()
