import Tools.GenSmallStages
import InitE.SmallStages.Oracles521
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 521 InitE.WordStages.source521.2.1 InitE.WordStages.source521.2.2 InitE.SmallStages.Oracles521.oracle521
