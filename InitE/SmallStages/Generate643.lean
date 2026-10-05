import Tools.GenSmallStages
import InitE.SmallStages.Oracles643
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 643 InitE.WordStages.source643.2.1 InitE.WordStages.source643.2.2 InitE.SmallStages.Oracles643.oracle643
