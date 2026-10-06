import Tools.GenSmallStages
import InitE.SmallStages.Oracles860
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 860 InitE.WordStages.source860.2.1 InitE.WordStages.source860.2.2 InitE.SmallStages.Oracles860.oracle860
