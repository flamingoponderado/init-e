import Tools.GenSmallStages
import InitE.SmallStages.Oracles253
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 253 InitE.WordStages.source253.2.1 InitE.WordStages.source253.2.2 InitE.SmallStages.Oracles253.oracle253
