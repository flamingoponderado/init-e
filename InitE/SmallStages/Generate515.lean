import Tools.GenSmallStages
import InitE.SmallStages.Oracles515
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 515 InitE.WordStages.source515.2.1 InitE.WordStages.source515.2.2 InitE.SmallStages.Oracles515.oracle515
