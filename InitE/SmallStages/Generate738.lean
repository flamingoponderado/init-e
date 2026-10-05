import Tools.GenSmallStages
import InitE.SmallStages.Oracles738
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 738 InitE.WordStages.source738.2.1 InitE.WordStages.source738.2.2 InitE.SmallStages.Oracles738.oracle738
