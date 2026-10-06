import Tools.GenSmallStages
import InitE.SmallStages.Oracles681
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 681 InitE.WordStages.source681.2.1 InitE.WordStages.source681.2.2 InitE.SmallStages.Oracles681.oracle681
