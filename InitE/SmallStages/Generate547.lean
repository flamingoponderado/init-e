import Tools.GenSmallStages
import InitE.SmallStages.Oracles547
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 547 InitE.WordStages.source547.2.1 InitE.WordStages.source547.2.2 InitE.SmallStages.Oracles547.oracle547
