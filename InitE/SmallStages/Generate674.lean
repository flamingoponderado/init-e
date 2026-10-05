import Tools.GenSmallStages
import InitE.SmallStages.Oracles674
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 674 InitE.WordStages.source674.2.1 InitE.WordStages.source674.2.2 InitE.SmallStages.Oracles674.oracle674
