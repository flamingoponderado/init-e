import Tools.GenSmallStages
import InitE.SmallStages.Oracles634
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 634 InitE.WordStages.source634.2.1 InitE.WordStages.source634.2.2 InitE.SmallStages.Oracles634.oracle634
