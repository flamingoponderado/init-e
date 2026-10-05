import Tools.GenSmallStages
import InitE.SmallStages.Oracles349
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 349 InitE.WordStages.source349.2.1 InitE.WordStages.source349.2.2 InitE.SmallStages.Oracles349.oracle349
