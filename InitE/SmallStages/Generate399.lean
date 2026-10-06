import Tools.GenSmallStages
import InitE.SmallStages.Oracles399
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 399 InitE.WordStages.source399.2.1 InitE.WordStages.source399.2.2 InitE.SmallStages.Oracles399.oracle399
