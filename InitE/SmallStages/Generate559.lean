import Tools.GenSmallStages
import InitE.SmallStages.Oracles559
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 559 InitE.WordStages.source559.2.1 InitE.WordStages.source559.2.2 InitE.SmallStages.Oracles559.oracle559
