# This is just an example to get you started. A typical hybrid package
# uses this file as the main entry point of the application.

import rdstdin, strutils, terminal
import posix


proc lsh_read_line(): string =
  result = readLineFromStdin(">").strip

proc lsh_split_line(line: string): seq[string] {.discardable.} =
  stdout.write(line)
  

proc lsh_execute(args: seq[string]): int =
  return 0

proc runForever() =
  var line: string
  var args: seq[string]
  var status: int

  while (status == 0):
    line = lsh_read_line()
    args = lsh_split_line(line)
    status = lsh_execute(args)

proc init() = 
  stdout.writeLine("Wellcome to nimsh! 🍣")
  return

proc main() =
  init()
  runForever()

when isMainModule:
  import cligen
  dispatch(main, help = {})
