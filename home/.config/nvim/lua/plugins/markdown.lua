return {
  {
    "iamcco/markdown-preview.nvim",
    init = function()
      vim.g.mkdp_echo_preview_url = 1
      vim.g.mkdp_browserfunc = "OpenMarkdownPreview"

      vim.cmd([[
        function! OpenMarkdownPreview(url) abort
          call jobstart(['xdg-open', a:url], {'detach': v:true})
        endfunction
      ]])
    end,
  },
}
