import Tools.GenSmallStages
import InitE.SmallStages.Oracles596
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 596 InitE.WordStages.source596.2.1 InitE.WordStages.source596.2.2 InitE.SmallStages.Oracles596.oracle596
