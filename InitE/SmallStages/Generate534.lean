import Tools.GenSmallStages
import InitE.SmallStages.Oracles534
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 534 InitE.WordStages.source534.2.1 InitE.WordStages.source534.2.2 InitE.SmallStages.Oracles534.oracle534
