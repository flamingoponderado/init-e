import Tools.GenSmallStages
import InitE.SmallStages.Oracles872
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 872 InitE.WordStages.source872.2.1 InitE.WordStages.source872.2.2 InitE.SmallStages.Oracles872.oracle872
