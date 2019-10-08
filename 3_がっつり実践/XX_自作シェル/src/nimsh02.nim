proc init() {.discardable.} = 
  stdout.writeLine("Wellcome to nimsh! 🍣")

proc main() =
  init()

when isMainModule:
  import cligen
  dispatch(main, help = {})

  var num: int = 0
  num.add()