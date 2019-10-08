proc main {.discardable.} =
  ## ここをエントリーとして扱う
  return

when isMainModule:
  import cligen
  dispatch(main, help = {})
