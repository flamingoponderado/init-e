import Tools.GenSmallStages
import InitE.SmallStages.Oracles297
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 297 InitE.WordStages.source297.2.1 InitE.WordStages.source297.2.2 InitE.SmallStages.Oracles297.oracle297
