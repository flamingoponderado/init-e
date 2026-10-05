import Tools.GenSmallStages
import InitE.SmallStages.Oracles654
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 654 InitE.WordStages.source654.2.1 InitE.WordStages.source654.2.2 InitE.SmallStages.Oracles654.oracle654
