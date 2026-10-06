import Tools.GenSmallStages
import InitE.SmallStages.Oracles812
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 812 InitE.WordStages.source812.2.1 InitE.WordStages.source812.2.2 InitE.SmallStages.Oracles812.oracle812
