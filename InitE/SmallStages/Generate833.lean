import Tools.GenSmallStages
import InitE.SmallStages.Oracles833
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 833 InitE.WordStages.source833.2.1 InitE.WordStages.source833.2.2 InitE.SmallStages.Oracles833.oracle833
