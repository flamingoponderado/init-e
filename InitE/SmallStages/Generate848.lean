import Tools.GenSmallStages
import InitE.SmallStages.Oracles848
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 848 InitE.WordStages.source848.2.1 InitE.WordStages.source848.2.2 InitE.SmallStages.Oracles848.oracle848
