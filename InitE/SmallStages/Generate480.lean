import Tools.GenSmallStages
import InitE.SmallStages.Oracles480
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 480 InitE.WordStages.source480.2.1 InitE.WordStages.source480.2.2 InitE.SmallStages.Oracles480.oracle480
