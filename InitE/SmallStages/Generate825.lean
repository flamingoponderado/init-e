import Tools.GenSmallStages
import InitE.SmallStages.Oracles825
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 825 InitE.WordStages.source825.2.1 InitE.WordStages.source825.2.2 InitE.SmallStages.Oracles825.oracle825
