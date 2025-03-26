return {
  "L3MON4D3/LuaSnip",
  config = function ()
    local ls = require("luasnip")
    local snip = ls.snippet
    local text = ls.text_node
    local insert = ls.insert_node

    local function get_date_time(args)
      if args == "zettle" then
        return os.date("%Y%m%d%H%M%S", os.time())
      elseif args == "date" then
        return os.date("%d/%m/%Y", os.time())
      elseif args == "time" then
        return os.date("%H:%M")
      end
    end

    local function get_filename()
      local filename = vim.fn.fnamemodify(vim.fn.expand('%'),':t')
      return filename:match("(.+)%..+$") or filename
    end

    ls.add_snippets("markdown", {
      snip("core", {
        text({
          "---",
          "zettle: " .. get_date_time("zettle"),
          "date: " .. get_date_time("date"),
          "time: " .. get_date_time("time"),
          "category: null",
          "type: Note",
          "---" ,
          "# " .. get_filename(),
          "",
          "status: #idea",
          ""
        }),
        text({ "tags: " }), insert(1),
        text({
          "",
          "___",
          "",
          "## References"
        })
      })
    })

    require("luasnip.loaders.from_vscode").lazy_load()
  end
}
