import Tools.GenSmallStages
import InitE.SmallStages.Oracles885
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 885 InitE.WordStages.source885.2.1 InitE.WordStages.source885.2.2 InitE.SmallStages.Oracles885.oracle885
