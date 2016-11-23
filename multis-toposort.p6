multi a(Int) { say 1 }
multi a(Str) { say 2 }
multi a(Any) { say 3 }

multi a(Any, Any) { say 4 }
multi a(Any, Str) { say 5 }
multi a(Int, Int) { say 6 }
multi a(Int, Cool) { say 7 }

a 2, 'x'

