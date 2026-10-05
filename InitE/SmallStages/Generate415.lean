import Tools.GenSmallStages
import InitE.SmallStages.Oracles415
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 415 InitE.WordStages.source415.2.1 InitE.WordStages.source415.2.2 InitE.SmallStages.Oracles415.oracle415
