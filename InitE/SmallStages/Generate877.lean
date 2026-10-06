import Tools.GenSmallStages
import InitE.SmallStages.Oracles877
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 877 InitE.WordStages.source877.2.1 InitE.WordStages.source877.2.2 InitE.SmallStages.Oracles877.oracle877
