import Tools.GenSmallStages
import InitE.SmallStages.Oracles653
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 653 InitE.WordStages.source653.2.1 InitE.WordStages.source653.2.2 InitE.SmallStages.Oracles653.oracle653
