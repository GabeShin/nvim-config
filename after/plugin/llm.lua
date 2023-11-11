vim.keymap.set("v", "<leader>]", ":Gen<CR>")
vim.keymap.set("n", "<leader>]", ":Gen<CR>")

require("gen").prompts["Review_Code"] = {
	prompt = "Review the code and provide feedback on how to improve it.:\n$text",
	replace = true,
}

require("gen").prompts["Fix_Code"] = {
	prompt = "Fix the following code. Only ouput the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
	replace = true,
	extract = "```$filetype\n(.-)```",
}
