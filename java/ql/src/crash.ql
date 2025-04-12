overlay[local]
class Foo extends int {
  pragma[inline_late]
  bindingset[this]
  Foo() { this > 42 }
}


from Foo x
where x in [41..43]
select x

