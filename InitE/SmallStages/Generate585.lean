import Tools.GenSmallStages
import InitE.SmallStages.Oracles585
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 585 InitE.WordStages.source585.2.1 InitE.WordStages.source585.2.2 InitE.SmallStages.Oracles585.oracle585
