import Tools.GenSmallStages
import InitE.SmallStages.Oracles594
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 594 InitE.WordStages.source594.2.1 InitE.WordStages.source594.2.2 InitE.SmallStages.Oracles594.oracle594
