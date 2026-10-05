import Tools.GenSmallStages
import InitE.SmallStages.Oracles435
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 435 InitE.WordStages.source435.2.1 InitE.WordStages.source435.2.2 InitE.SmallStages.Oracles435.oracle435
