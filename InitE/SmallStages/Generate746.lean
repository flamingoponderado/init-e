import Tools.GenSmallStages
import InitE.SmallStages.Oracles746
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 746 InitE.WordStages.source746.2.1 InitE.WordStages.source746.2.2 InitE.SmallStages.Oracles746.oracle746
