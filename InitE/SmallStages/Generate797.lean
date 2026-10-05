import Tools.GenSmallStages
import InitE.SmallStages.Oracles797
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 797 InitE.WordStages.source797.2.1 InitE.WordStages.source797.2.2 InitE.SmallStages.Oracles797.oracle797
