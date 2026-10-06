import Tools.GenSmallStages
import InitE.SmallStages.Oracles511
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 511 InitE.WordStages.source511.2.1 InitE.WordStages.source511.2.2 InitE.SmallStages.Oracles511.oracle511
