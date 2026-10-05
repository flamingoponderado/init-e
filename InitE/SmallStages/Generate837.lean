import Tools.GenSmallStages
import InitE.SmallStages.Oracles837
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 837 InitE.WordStages.source837.2.1 InitE.WordStages.source837.2.2 InitE.SmallStages.Oracles837.oracle837
