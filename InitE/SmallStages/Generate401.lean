import Tools.GenSmallStages
import InitE.SmallStages.Oracles401
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 401 InitE.WordStages.source401.2.1 InitE.WordStages.source401.2.2 InitE.SmallStages.Oracles401.oracle401
