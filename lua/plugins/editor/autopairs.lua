return {
	"windwp/nvim-autopairs",
	opts = {
		fast_wrap = {
			map = "<M-e>",
			chars = { "{", "[", "(", '"', "'" },
			pattern = [=[[%'%"%)%>%]%)%}%,]]=],
			end_key = "$",
			before_key = "h",
			after_key = "i",
			cursor_pos_before = true,
			keys = "qwfpgjluyzxcvbkmarstdheio",
			manual_position = true,
			highlight = "Search",
			highlight_grey = "Comment",
		},
	},
	event = "InsertEnter",
}
