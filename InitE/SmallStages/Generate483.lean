import Tools.GenSmallStages
import InitE.SmallStages.Oracles483
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 483 InitE.WordStages.source483.2.1 InitE.WordStages.source483.2.2 InitE.SmallStages.Oracles483.oracle483
