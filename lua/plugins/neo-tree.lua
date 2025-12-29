return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      -- Cache to track directory names and which have matching .rs files
      local known_dirs = {}
      local known_rs_bases = {}

      opts.sort_function = function(a, b)
        if a.name == nil then return false end
        if b.name == nil then return true end

        -- Track directories and .rs file bases
        if a.type == "directory" then known_dirs[a.name] = true end
        if b.type == "directory" then known_dirs[b.name] = true end

        -- Special Rust files that always stay with regular files
        local special_rs = {
          ["main.rs"] = true,
          ["lib.rs"] = true,
          ["mod.rs"] = true,
          ["build.rs"] = true,
        }

        -- Get base name for .rs files
        local a_rs_base = a.type == "file" and not special_rs[a.name] and a.name:match("^(.+)%.rs$")
        local b_rs_base = b.type == "file" and not special_rs[b.name] and b.name:match("^(.+)%.rs$")

        if a_rs_base then known_rs_bases[a_rs_base] = true end
        if b_rs_base then known_rs_bases[b_rs_base] = true end

        -- Check if items are part of a Rust module pair
        local a_has_pair = (a_rs_base and known_dirs[a_rs_base]) or
                          (a.type == "directory" and known_rs_bases[a.name])
        local b_has_pair = (b_rs_base and known_dirs[b_rs_base]) or
                          (b.type == "directory" and known_rs_bases[b.name])

        -- Sort levels: 1=unpaired dirs, 2=unpaired files, 3=pairs
        local function get_level(item, rs_base, has_pair)
          if has_pair then
            return 3  -- pairs go last
          elseif item.type == "directory" then
            return 1  -- unpaired directories first
          else
            return 2  -- unpaired files in middle
          end
        end

        local a_level = get_level(a, a_rs_base, a_has_pair)
        local b_level = get_level(b, b_rs_base, b_has_pair)

        -- Different levels: sort by level
        if a_level ~= b_level then
          return a_level < b_level
        end

        -- Same level 3 (pairs): sort by base name, file before directory
        if a_level == 3 then
          local a_sort = a_rs_base or a.name
          local b_sort = b_rs_base or b.name

          if a_sort:lower() ~= b_sort:lower() then
            return a_sort:lower() < b_sort:lower()
          end
          -- Same base name: .rs file comes before directory
          return a.type == "file"
        end

        -- Same level 1 or 2: alphabetical
        return a.name:lower() < b.name:lower()
      end

      opts.filesystem = opts.filesystem or {}
      opts.filesystem.filtered_items = {
        visible = false,
        hide_dotfiles = true,
        always_show = { ".gitignore" },
      }
      opts.filesystem.window = { position = "float" }
      opts.popup_border_style = "rounded"

      return opts
    end,
  },
}
