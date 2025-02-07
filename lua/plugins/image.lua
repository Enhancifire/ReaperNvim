return {
	{
		"3rd/image.nvim",
		opts = {},
		config = function()
			require('image').setup({
				integrations = {
					markdown = {
						resolve_image_path = function(document_path, image_path, fallback)
							return fallback(document_path, image_path)
						end,
					}
				}
			})
		end,
	},
}
