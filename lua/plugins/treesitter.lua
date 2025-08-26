return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = { "lua", "go" },
        auto_install = false,
        highligth = { enabled = true },
        indent = { enabled = true }
    }
}
