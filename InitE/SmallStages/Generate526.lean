import Tools.GenSmallStages
import InitE.SmallStages.Oracles526
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 526 InitE.WordStages.source526.2.1 InitE.WordStages.source526.2.2 InitE.SmallStages.Oracles526.oracle526
