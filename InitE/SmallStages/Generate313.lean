import Tools.GenSmallStages
import InitE.SmallStages.Oracles313
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 313 InitE.WordStages.source313.2.1 InitE.WordStages.source313.2.2 InitE.SmallStages.Oracles313.oracle313
