import Tools.GenSmallStages
import InitE.SmallStages.Oracles499
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 499 InitE.WordStages.source499.2.1 InitE.WordStages.source499.2.2 InitE.SmallStages.Oracles499.oracle499
