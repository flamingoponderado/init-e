import Tools.GenSmallStages
import InitE.SmallStages.Oracles709
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 709 InitE.WordStages.source709.2.1 InitE.WordStages.source709.2.2 InitE.SmallStages.Oracles709.oracle709
