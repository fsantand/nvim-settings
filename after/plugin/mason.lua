local mason = require("mason")

mason.setup({
    ensure_installed = {
        "pyright",
        "flake8",
        "isort",
        "black"
    }
})
