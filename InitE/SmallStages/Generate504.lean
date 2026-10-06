import Tools.GenSmallStages
import InitE.SmallStages.Oracles504
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 504 InitE.WordStages.source504.2.1 InitE.WordStages.source504.2.2 InitE.SmallStages.Oracles504.oracle504
