import Tools.GenSmallStages
import InitE.SmallStages.Oracles620
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 620 InitE.WordStages.source620.2.1 InitE.WordStages.source620.2.2 InitE.SmallStages.Oracles620.oracle620
