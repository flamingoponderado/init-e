import Tools.GenSmallStages
import InitE.SmallStages.Oracles403
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 403 InitE.WordStages.source403.2.1 InitE.WordStages.source403.2.2 InitE.SmallStages.Oracles403.oracle403
