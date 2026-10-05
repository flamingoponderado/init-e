import Tools.GenSmallStages
import InitE.SmallStages.Oracles269
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 269 InitE.WordStages.source269.2.1 InitE.WordStages.source269.2.2 InitE.SmallStages.Oracles269.oracle269
