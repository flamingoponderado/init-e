import Tools.GenSmallStages
import InitE.SmallStages.Oracles498
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 498 InitE.WordStages.source498.2.1 InitE.WordStages.source498.2.2 InitE.SmallStages.Oracles498.oracle498
