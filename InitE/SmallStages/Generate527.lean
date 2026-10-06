import Tools.GenSmallStages
import InitE.SmallStages.Oracles527
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 527 InitE.WordStages.source527.2.1 InitE.WordStages.source527.2.2 InitE.SmallStages.Oracles527.oracle527
