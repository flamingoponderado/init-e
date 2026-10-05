import Tools.GenSmallStages
import InitE.SmallStages.Oracles769
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 769 InitE.WordStages.source769.2.1 InitE.WordStages.source769.2.2 InitE.SmallStages.Oracles769.oracle769
