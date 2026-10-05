import Tools.GenSmallStages
import InitE.SmallStages.Oracles570
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 570 InitE.WordStages.source570.2.1 InitE.WordStages.source570.2.2 InitE.SmallStages.Oracles570.oracle570
