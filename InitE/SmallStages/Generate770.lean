import Tools.GenSmallStages
import InitE.SmallStages.Oracles770
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 770 InitE.WordStages.source770.2.1 InitE.WordStages.source770.2.2 InitE.SmallStages.Oracles770.oracle770
