import Tools.GenSmallStages
import InitE.SmallStages.Oracles494
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 494 InitE.WordStages.source494.2.1 InitE.WordStages.source494.2.2 InitE.SmallStages.Oracles494.oracle494
