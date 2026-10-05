import Tools.GenSmallStages
import InitE.SmallStages.Oracles571
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 571 InitE.WordStages.source571.2.1 InitE.WordStages.source571.2.2 InitE.SmallStages.Oracles571.oracle571
