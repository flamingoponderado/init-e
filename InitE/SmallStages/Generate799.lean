import Tools.GenSmallStages
import InitE.SmallStages.Oracles799
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 799 InitE.WordStages.source799.2.1 InitE.WordStages.source799.2.2 InitE.SmallStages.Oracles799.oracle799
