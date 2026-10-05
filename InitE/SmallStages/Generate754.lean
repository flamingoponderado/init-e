import Tools.GenSmallStages
import InitE.SmallStages.Oracles754
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 754 InitE.WordStages.source754.2.1 InitE.WordStages.source754.2.2 InitE.SmallStages.Oracles754.oracle754
