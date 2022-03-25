local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  return
end

comment.setup{
    ---@param ctx Ctx
    pre_hook = function(ctx)
        return require('ts_context_commentstring.internal').calculate_commentstring()
    end

}

