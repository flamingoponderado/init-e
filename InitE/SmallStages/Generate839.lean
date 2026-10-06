import Tools.GenSmallStages
import InitE.SmallStages.Oracles839
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 839 InitE.WordStages.source839.2.1 InitE.WordStages.source839.2.2 InitE.SmallStages.Oracles839.oracle839
