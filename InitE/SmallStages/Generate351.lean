import Tools.GenSmallStages
import InitE.SmallStages.Oracles351
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 351 InitE.WordStages.source351.2.1 InitE.WordStages.source351.2.2 InitE.SmallStages.Oracles351.oracle351
