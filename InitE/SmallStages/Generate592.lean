import Tools.GenSmallStages
import InitE.SmallStages.Oracles592
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 592 InitE.WordStages.source592.2.1 InitE.WordStages.source592.2.2 InitE.SmallStages.Oracles592.oracle592
