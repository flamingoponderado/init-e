import Tools.GenSmallStages
import InitE.SmallStages.Oracles438
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 438 InitE.WordStages.source438.2.1 InitE.WordStages.source438.2.2 InitE.SmallStages.Oracles438.oracle438
