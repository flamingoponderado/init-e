import Tools.GenSmallStages
import InitE.SmallStages.Oracles625
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 625 InitE.WordStages.source625.2.1 InitE.WordStages.source625.2.2 InitE.SmallStages.Oracles625.oracle625
