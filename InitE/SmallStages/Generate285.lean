import Tools.GenSmallStages
import InitE.SmallStages.Oracles285
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 285 InitE.WordStages.source285.2.1 InitE.WordStages.source285.2.2 InitE.SmallStages.Oracles285.oracle285
