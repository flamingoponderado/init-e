import Tools.GenSmallStages
import InitE.SmallStages.Oracles554
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 554 InitE.WordStages.source554.2.1 InitE.WordStages.source554.2.2 InitE.SmallStages.Oracles554.oracle554
