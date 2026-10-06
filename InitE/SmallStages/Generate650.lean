import Tools.GenSmallStages
import InitE.SmallStages.Oracles650
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 650 InitE.WordStages.source650.2.1 InitE.WordStages.source650.2.2 InitE.SmallStages.Oracles650.oracle650
