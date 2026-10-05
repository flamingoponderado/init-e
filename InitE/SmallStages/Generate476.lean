import Tools.GenSmallStages
import InitE.SmallStages.Oracles476
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 476 InitE.WordStages.source476.2.1 InitE.WordStages.source476.2.2 InitE.SmallStages.Oracles476.oracle476
