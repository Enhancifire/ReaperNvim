return {
	"nomnivore/ollama.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	-- All the user commands added by the plugin
	cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop" },

	-- Sample keybind for prompting. Note that the <c-u> is important for selections to work properly.
	keys = {
		{
			"<leader>oo",
			":<c-u>lua require('ollama').prompt()<cr>",
			desc = "ollama prompt",
			mode = { "n", "v" },
		},
	},

	---@type Ollama.Config
	opts = {
		-- model = "mistral:latest",
		model = "codellama:7b-code",
		prompts = {
			Yes_No = {
				prompt =
				"I have a question about this: $input\n\n Here is the code:\n```$ftype\n$sel```\n Answer if this is possible or not with a simple Yes or No",
				input_label = "  ",

			}

		}
	}
}
