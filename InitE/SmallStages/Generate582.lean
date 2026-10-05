import Tools.GenSmallStages
import InitE.SmallStages.Oracles582
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 582 InitE.WordStages.source582.2.1 InitE.WordStages.source582.2.2 InitE.SmallStages.Oracles582.oracle582
