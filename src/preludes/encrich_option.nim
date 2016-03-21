import options

template ifPresent*[T](opt : Option[T], x : typed, toDo : stmt): untyped {.immediate.} =
   if opt.isSome:
      let x = opt.unsafeGet()
      toDo

template match*[T] (opt : Option[T], toDo : stmt) : untyped {.immediate.} =
   template some(x : typed, presentFunc : stmt): untyped {.immediate.} =
      if opt.isSome:
         let x {.inject.} = opt.unsafeGet()
         presentFunc

   template none (absentFunc : stmt): untyped {.immediate.} =
      if opt.isNone:
         absentFunc
   toDo
