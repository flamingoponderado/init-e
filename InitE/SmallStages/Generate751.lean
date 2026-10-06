import Tools.GenSmallStages
import InitE.SmallStages.Oracles751
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 751 InitE.WordStages.source751.2.1 InitE.WordStages.source751.2.2 InitE.SmallStages.Oracles751.oracle751
