import Tools.GenSmallStages
import InitE.SmallStages.Oracles262
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 262 InitE.WordStages.source262.2.1 InitE.WordStages.source262.2.2 InitE.SmallStages.Oracles262.oracle262
