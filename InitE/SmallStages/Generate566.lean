import Tools.GenSmallStages
import InitE.SmallStages.Oracles566
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 566 InitE.WordStages.source566.2.1 InitE.WordStages.source566.2.2 InitE.SmallStages.Oracles566.oracle566
