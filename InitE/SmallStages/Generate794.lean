import Tools.GenSmallStages
import InitE.SmallStages.Oracles794
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 794 InitE.WordStages.source794.2.1 InitE.WordStages.source794.2.2 InitE.SmallStages.Oracles794.oracle794
