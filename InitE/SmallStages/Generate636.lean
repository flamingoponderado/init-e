import Tools.GenSmallStages
import InitE.SmallStages.Oracles636
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 636 InitE.WordStages.source636.2.1 InitE.WordStages.source636.2.2 InitE.SmallStages.Oracles636.oracle636
