import Tools.GenSmallStages
import InitE.SmallStages.Oracles611
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 611 InitE.WordStages.source611.2.1 InitE.WordStages.source611.2.2 InitE.SmallStages.Oracles611.oracle611
