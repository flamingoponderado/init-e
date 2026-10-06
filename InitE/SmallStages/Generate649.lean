import Tools.GenSmallStages
import InitE.SmallStages.Oracles649
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 649 InitE.WordStages.source649.2.1 InitE.WordStages.source649.2.2 InitE.SmallStages.Oracles649.oracle649
