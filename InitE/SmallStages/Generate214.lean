import Tools.GenSmallStages
import InitE.SmallStages.Oracles214
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 214 InitE.WordStages.source214.2.1 InitE.WordStages.source214.2.2 InitE.SmallStages.Oracles214.oracle214
