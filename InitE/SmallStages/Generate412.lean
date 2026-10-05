import Tools.GenSmallStages
import InitE.SmallStages.Oracles412
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 412 InitE.WordStages.source412.2.1 InitE.WordStages.source412.2.2 InitE.SmallStages.Oracles412.oracle412
