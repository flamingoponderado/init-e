import Tools.GenSmallStages
import InitE.SmallStages.Oracles568
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 568 InitE.WordStages.source568.2.1 InitE.WordStages.source568.2.2 InitE.SmallStages.Oracles568.oracle568
