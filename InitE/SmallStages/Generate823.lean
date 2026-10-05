import Tools.GenSmallStages
import InitE.SmallStages.Oracles823
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 823 InitE.WordStages.source823.2.1 InitE.WordStages.source823.2.2 InitE.SmallStages.Oracles823.oracle823
