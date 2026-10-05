import Tools.GenSmallStages
import InitE.SmallStages.Oracles368
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 368 InitE.WordStages.source368.2.1 InitE.WordStages.source368.2.2 InitE.SmallStages.Oracles368.oracle368
