import Tools.GenSmallStages
import InitE.SmallStages.Oracles553
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 553 InitE.WordStages.source553.2.1 InitE.WordStages.source553.2.2 InitE.SmallStages.Oracles553.oracle553
