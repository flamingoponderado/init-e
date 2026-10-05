import Tools.GenSmallStages
import InitE.SmallStages.Oracles329
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 329 InitE.WordStages.source329.2.1 InitE.WordStages.source329.2.2 InitE.SmallStages.Oracles329.oracle329
