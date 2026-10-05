import Tools.GenSmallStages
import InitE.SmallStages.Oracles352
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 352 InitE.WordStages.source352.2.1 InitE.WordStages.source352.2.2 InitE.SmallStages.Oracles352.oracle352
