import Tools.GenSmallStages
import InitE.SmallStages.Oracles787
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 787 InitE.WordStages.source787.2.1 InitE.WordStages.source787.2.2 InitE.SmallStages.Oracles787.oracle787
