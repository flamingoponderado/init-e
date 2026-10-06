import Tools.GenSmallStages
import InitE.SmallStages.Oracles703
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 703 InitE.WordStages.source703.2.1 InitE.WordStages.source703.2.2 InitE.SmallStages.Oracles703.oracle703
