import Tools.GenSmallStages
import InitE.SmallStages.Oracles441
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 441 InitE.WordStages.source441.2.1 InitE.WordStages.source441.2.2 InitE.SmallStages.Oracles441.oracle441
