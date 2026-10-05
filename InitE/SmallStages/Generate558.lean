import Tools.GenSmallStages
import InitE.SmallStages.Oracles558
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 558 InitE.WordStages.source558.2.1 InitE.WordStages.source558.2.2 InitE.SmallStages.Oracles558.oracle558
