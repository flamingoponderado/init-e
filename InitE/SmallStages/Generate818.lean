import Tools.GenSmallStages
import InitE.SmallStages.Oracles818
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 818 InitE.WordStages.source818.2.1 InitE.WordStages.source818.2.2 InitE.SmallStages.Oracles818.oracle818
