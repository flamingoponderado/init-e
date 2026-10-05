import Tools.GenSmallStages
import InitE.SmallStages.Oracles593
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 593 InitE.WordStages.source593.2.1 InitE.WordStages.source593.2.2 InitE.SmallStages.Oracles593.oracle593
