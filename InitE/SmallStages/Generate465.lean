import Tools.GenSmallStages
import InitE.SmallStages.Oracles465
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 465 InitE.WordStages.source465.2.1 InitE.WordStages.source465.2.2 InitE.SmallStages.Oracles465.oracle465
