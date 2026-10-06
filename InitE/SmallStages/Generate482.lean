import Tools.GenSmallStages
import InitE.SmallStages.Oracles482
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 482 InitE.WordStages.source482.2.1 InitE.WordStages.source482.2.2 InitE.SmallStages.Oracles482.oracle482
