local M = {}

--- @param tbl table
--- @return table
function M.deep_copy_table(tbl)
  local new_tbl = {}
  if type(tbl) == "table" then
    for k, v in pairs(tbl) do
      new_tbl[k] = M.deep_copy_table(v)
    end
  else
    new_tbl = tbl
  end
  return new_tbl
end

--- Update an existing table with the
--- values of a new table. Works recursively
--- and creates a new table in the process
--- @param old table
--- @param new table
--- @return table
function M.update_table(old, new)
  local updated = M.deep_copy_table(old)
  for k, v in pairs(new) do
    if type(v) == "table" then
      local old_v = updated[k]
      if type(old_v) == "table" then
        updated[k] = M.update_table(old_v, v)
      else
        updated[k] = M.deep_copy_table(v)
      end
    else
      updated[k] = v
    end
  end
  return updated
end

return M
