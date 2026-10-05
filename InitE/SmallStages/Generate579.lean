import Tools.GenSmallStages
import InitE.SmallStages.Oracles579
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 579 InitE.WordStages.source579.2.1 InitE.WordStages.source579.2.2 InitE.SmallStages.Oracles579.oracle579
