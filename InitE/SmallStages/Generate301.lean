import Tools.GenSmallStages
import InitE.SmallStages.Oracles301
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 301 InitE.WordStages.source301.2.1 InitE.WordStages.source301.2.2 InitE.SmallStages.Oracles301.oracle301
