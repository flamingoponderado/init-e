import Tools.GenSmallStages
import InitE.SmallStages.Oracles767
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 767 InitE.WordStages.source767.2.1 InitE.WordStages.source767.2.2 InitE.SmallStages.Oracles767.oracle767
