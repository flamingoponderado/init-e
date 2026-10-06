import Tools.GenSmallStages
import InitE.SmallStages.Oracles719
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 719 InitE.WordStages.source719.2.1 InitE.WordStages.source719.2.2 InitE.SmallStages.Oracles719.oracle719
