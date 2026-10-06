import Tools.GenSmallStages
import InitE.SmallStages.Oracles479
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 479 InitE.WordStages.source479.2.1 InitE.WordStages.source479.2.2 InitE.SmallStages.Oracles479.oracle479
