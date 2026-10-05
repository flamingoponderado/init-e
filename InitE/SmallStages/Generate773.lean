import Tools.GenSmallStages
import InitE.SmallStages.Oracles773
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 773 InitE.WordStages.source773.2.1 InitE.WordStages.source773.2.2 InitE.SmallStages.Oracles773.oracle773
