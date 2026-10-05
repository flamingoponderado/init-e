import Tools.GenSmallStages
import InitE.SmallStages.Oracles658
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 658 InitE.WordStages.source658.2.1 InitE.WordStages.source658.2.2 InitE.SmallStages.Oracles658.oracle658
