import Tools.GenSmallStages
import InitE.SmallStages.Oracles239
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 239 InitE.WordStages.source239.2.1 InitE.WordStages.source239.2.2 InitE.SmallStages.Oracles239.oracle239
