import Tools.GenSmallStages
import InitE.SmallStages.Oracles377
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 377 InitE.WordStages.source377.2.1 InitE.WordStages.source377.2.2 InitE.SmallStages.Oracles377.oracle377
