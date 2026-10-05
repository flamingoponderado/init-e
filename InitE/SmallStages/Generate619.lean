import Tools.GenSmallStages
import InitE.SmallStages.Oracles619
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 619 InitE.WordStages.source619.2.1 InitE.WordStages.source619.2.2 InitE.SmallStages.Oracles619.oracle619
