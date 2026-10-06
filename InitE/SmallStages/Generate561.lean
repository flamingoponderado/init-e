import Tools.GenSmallStages
import InitE.SmallStages.Oracles561
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 561 InitE.WordStages.source561.2.1 InitE.WordStages.source561.2.2 InitE.SmallStages.Oracles561.oracle561
