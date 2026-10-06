import Tools.GenSmallStages
import InitE.SmallStages.Oracles450
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 450 InitE.WordStages.source450.2.1 InitE.WordStages.source450.2.2 InitE.SmallStages.Oracles450.oracle450
