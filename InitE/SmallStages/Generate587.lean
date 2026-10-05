import Tools.GenSmallStages
import InitE.SmallStages.Oracles587
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 587 InitE.WordStages.source587.2.1 InitE.WordStages.source587.2.2 InitE.SmallStages.Oracles587.oracle587
