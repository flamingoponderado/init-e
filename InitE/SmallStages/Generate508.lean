import Tools.GenSmallStages
import InitE.SmallStages.Oracles508
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 508 InitE.WordStages.source508.2.1 InitE.WordStages.source508.2.2 InitE.SmallStages.Oracles508.oracle508
