import Tools.GenSmallStages
import InitE.SmallStages.Oracles614
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 614 InitE.WordStages.source614.2.1 InitE.WordStages.source614.2.2 InitE.SmallStages.Oracles614.oracle614
