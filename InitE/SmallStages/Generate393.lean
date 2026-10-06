import Tools.GenSmallStages
import InitE.SmallStages.Oracles393
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 393 InitE.WordStages.source393.2.1 InitE.WordStages.source393.2.2 InitE.SmallStages.Oracles393.oracle393
