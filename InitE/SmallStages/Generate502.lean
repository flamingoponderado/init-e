import Tools.GenSmallStages
import InitE.SmallStages.Oracles502
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 502 InitE.WordStages.source502.2.1 InitE.WordStages.source502.2.2 InitE.SmallStages.Oracles502.oracle502
