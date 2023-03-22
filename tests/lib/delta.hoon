/-  *delta
/+  *test
/=  agent  /app/delta
|%
+$  state-0  [%0 values=(list @)]
++  test-delta
  =|  run=@ud
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~nut 10.000]))
  =+  !<(=state-0 on-save:agent)
  ~&  >>  state-0
  %:  expect-eq
    !>  `(list @)`~[10.000]
    !>  values.state-0
  ==
++  test-delta-pop
  =|  run=@ud
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%pop ~nut]))
  =+  !<(=state-0 on-save:agent)
  %:  expect-eq
    !>  ~
    !>  values.state-0
  ==
++  bowl
  |=  run=@ud
  ^-  bowl:gall
  :*  [~nut ~nut %hark-store]
    [~ ~]
    [run `@uvJ`(shax run) (add (mul run ~s1) *time) [~nut %delta ud+run]]
  ==
--
