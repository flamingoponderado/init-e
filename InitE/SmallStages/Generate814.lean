import Tools.GenSmallStages
import InitE.SmallStages.Oracles814
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 814 InitE.WordStages.source814.2.1 InitE.WordStages.source814.2.2 InitE.SmallStages.Oracles814.oracle814
