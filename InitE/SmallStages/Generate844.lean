import Tools.GenSmallStages
import InitE.SmallStages.Oracles844
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 844 InitE.WordStages.source844.2.1 InitE.WordStages.source844.2.2 InitE.SmallStages.Oracles844.oracle844
