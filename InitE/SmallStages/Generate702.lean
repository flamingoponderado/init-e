import Tools.GenSmallStages
import InitE.SmallStages.Oracles702
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 702 InitE.WordStages.source702.2.1 InitE.WordStages.source702.2.2 InitE.SmallStages.Oracles702.oracle702
