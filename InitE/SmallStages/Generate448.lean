import Tools.GenSmallStages
import InitE.SmallStages.Oracles448
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 448 InitE.WordStages.source448.2.1 InitE.WordStages.source448.2.2 InitE.SmallStages.Oracles448.oracle448
