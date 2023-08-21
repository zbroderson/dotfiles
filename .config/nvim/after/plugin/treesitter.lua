require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "c_sharp" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- Base highlights
vim.cmd "hi! keyword guifg=#66D8EF"
vim.cmd "hi! link @keyword.operator keyword"
vim.cmd "hi! link @keyword.function keyword"
vim.cmd "hi! link @keyword.return keyword"
vim.cmd "hi! link @conditional keyword"
vim.cmd "hi! link @include keyword"
vim.cmd "hi! link @repeat keyword"
vim.cmd "hi! link @boolean keyword"
vim.cmd "hi! link razorhtmlTag keyword"

vim.cmd "hi! @punctuation.delimiter guifg=#F92673"
vim.cmd "hi! @punctuation.delimiter guifg=#F92673"
vim.cmd "hi! @operator guifg=#F92673"

vim.cmd "hi! @punctuation.bracket guifg=#FFFFFF"
vim.cmd "hi! function guifg=#FFFFFF"
vim.cmd "hi! link @method.call function"
vim.cmd "hi! link @function.call function"
vim.cmd "hi! link @constructor function"
vim.cmd "hi! link @function.builtin function"
vim.cmd "hi! @parameter gui=NONE guifg=#FFFFFF"
vim.cmd "hi! @namespace gui=NONE guifg=#FFFFFF"
vim.cmd "hi! variable guifg=#FFFFFF"
vim.cmd "hi! link @property variable"
vim.cmd "hi! link @field variable"
vim.cmd "hi! link @constant variable"
vim.cmd "hi! link @constant.builtin variable"

vim.cmd "hi! type guifg=#FD9720"
vim.cmd "hi! link @type.builtin type"

vim.cmd "hi! @number guifg=#AD81FF"

vim.cmd "hi! @string guifg=#E6DB74"

-- Semantic highlights
vim.cmd "hi! link @lsp.type.namespace @namespace"
vim.cmd "hi! link @lsp.type.class @type"
vim.cmd "hi! link @lsp.type.interface @type"
vim.cmd "hi! link @lsp.type.property.cs @variable"
vim.cmd "hi! link @lsp.type.parameter @variable"
vim.cmd "hi! link @lsp.type.method @variable"
vim.cmd "hi! link @lsp.type.method @variable"
vim.cmd "hi! link @lsp.type.operator @operator"
-- Todo decide if comments should be italic and if the struct should be different color
vim.cmd "hi! link @lsp.type.struct @operator"

vim.cmd "hi! @lsp.type.enum guifg=#71FA44"
vim.cmd "hi! @lsp.type.struct guifg=#00BFA2"
