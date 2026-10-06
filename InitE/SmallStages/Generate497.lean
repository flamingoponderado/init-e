import Tools.GenSmallStages
import InitE.SmallStages.Oracles497
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 497 InitE.WordStages.source497.2.1 InitE.WordStages.source497.2.2 InitE.SmallStages.Oracles497.oracle497
