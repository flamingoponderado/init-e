import Tools.GenSmallStages
import InitE.SmallStages.Oracles451
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 451 InitE.WordStages.source451.2.1 InitE.WordStages.source451.2.2 InitE.SmallStages.Oracles451.oracle451
