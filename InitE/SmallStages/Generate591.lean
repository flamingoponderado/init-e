import Tools.GenSmallStages
import InitE.SmallStages.Oracles591
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 591 InitE.WordStages.source591.2.1 InitE.WordStages.source591.2.2 InitE.SmallStages.Oracles591.oracle591
