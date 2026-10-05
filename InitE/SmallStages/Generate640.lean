import Tools.GenSmallStages
import InitE.SmallStages.Oracles640
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 640 InitE.WordStages.source640.2.1 InitE.WordStages.source640.2.2 InitE.SmallStages.Oracles640.oracle640
