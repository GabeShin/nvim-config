require("venv-selector").setup({
	settings = {
		search = {
			find_code_venvs = {
				command = "fd /bin/python$ /Users/gabe/person/ --full-path",
			},
		},
	},
})
