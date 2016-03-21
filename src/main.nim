# import grid
import options
import macros
import future
import prelude

var test = some(3)

test.ifPresent(x):
   echo("helllloooo" & $x)

match(test):
   some(x): echo("one" & $x)
   none: echo("two")
