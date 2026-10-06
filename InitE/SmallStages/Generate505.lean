import Tools.GenSmallStages
import InitE.SmallStages.Oracles505
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 505 InitE.WordStages.source505.2.1 InitE.WordStages.source505.2.2 InitE.SmallStages.Oracles505.oracle505
