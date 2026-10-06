import Tools.GenSmallStages
import InitE.SmallStages.Oracles237
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 237 InitE.WordStages.source237.2.1 InitE.WordStages.source237.2.2 InitE.SmallStages.Oracles237.oracle237
