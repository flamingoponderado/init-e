import Tools.GenSmallStages
import InitE.SmallStages.Oracles815
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 815 InitE.WordStages.source815.2.1 InitE.WordStages.source815.2.2 InitE.SmallStages.Oracles815.oracle815
