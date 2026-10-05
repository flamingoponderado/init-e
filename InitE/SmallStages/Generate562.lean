import Tools.GenSmallStages
import InitE.SmallStages.Oracles562
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 562 InitE.WordStages.source562.2.1 InitE.WordStages.source562.2.2 InitE.SmallStages.Oracles562.oracle562
