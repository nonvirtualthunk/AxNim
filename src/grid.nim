# type Option*[T] = object
#    val: T
#    present : bool
#
# proc isPresent* (o: Option): bool =
#    o.present
#
#
# proc some*[T](val: T): Option[T] =
#   ## Returns a ``Option`` that has this value.
#   result.present = true
#   result.val = val
#
# proc none*(T: typedesc): Option[T] =
#   ## Returns a ``Option`` for this type that has no value.
#   result.present = false
