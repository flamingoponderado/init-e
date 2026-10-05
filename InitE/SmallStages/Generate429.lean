import Tools.GenSmallStages
import InitE.SmallStages.Oracles429
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 429 InitE.WordStages.source429.2.1 InitE.WordStages.source429.2.2 InitE.SmallStages.Oracles429.oracle429
